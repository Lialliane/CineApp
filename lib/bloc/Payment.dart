import 'dart:convert';


import 'package:equatable/equatable.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_stripe/flutter_stripe.dart';

import 'package:http/http.dart' as http;

import 'package:myapp/Keys.dart';


class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {

  PaymentBloc() : super(const PaymentState()) {

    on<PaymentStart>(_onPaymentStart);

    on<PaymentCreateIntent>(_onPaymentCreateIntent);

    on<PaymentConfirmIntent>(_onPaymentConfirmIntent);

    on<PaymentClose>(_onPaymentClose);

  }

  void _onPaymentStart(PaymentStart event, Emitter<PaymentState> emit) {

    emit(state.copyWith(status: PaymentStatus.initial));

  }


  void _onPaymentClose(PaymentClose event, Emitter<PaymentState> emit) {

    emit(state.copyWith(status: PaymentStatus.close));

  }


  void _onPaymentCreateIntent(
      PaymentCreateIntent event, Emitter<PaymentState> emit) async {

    emit(state.copyWith(status: PaymentStatus.loading));

    final paymentMethod = await Stripe.instance.createPaymentMethod(
        params: PaymentMethodParams.card(
            paymentMethodData:
                PaymentMethodData(billingDetails: event.billingDetails)));


    final paymentIntentResults = await _callPayEndPointMethodId(
        useStripeSdk: true,
        paymentMethodId: paymentMethod.id,
        currency: 'usd',
        items: event.items);

    if (paymentIntentResults['error'] != null) {

      emit(state.copyWith(status: PaymentStatus.failure));

    }

    if (paymentIntentResults['clientSecret'] != null &&
        paymentIntentResults['requiresAction'] == null) {

      emit(state.copyWith(status: PaymentStatus.success));

    }

    if (paymentIntentResults['clientSecret'] != null &&
        paymentIntentResults['requiresAction'] == true) {

      final String clientSecret = paymentIntentResults['clientSecret'];

      add(PaymentConfirmIntent(clientSecret: clientSecret));

    } else {

      emit(state.copyWith(status: PaymentStatus.success));

    }

  }


  void _onPaymentConfirmIntent(
      PaymentConfirmIntent event, Emitter<PaymentState> emit) async {

    try {

      final paymentIntent =
          await Stripe.instance.handleNextAction(event.clientSecret);

      if (paymentIntent.status == PaymentIntentsStatus.RequiresConfirmation) {

        Map<String, dynamic> results =
            await _callPayEndPointIntentId(paymentIntentId: paymentIntent.id);

        if (results['error'] != null) {

          emit(state.copyWith(status: PaymentStatus.failure));

        } else {

          emit(state.copyWith(status: PaymentStatus.success));

        }

      }

    } catch (e) {

      emit(state.copyWith(status: PaymentStatus.failure));

    }

    emit(state.copyWith(status: PaymentStatus.initial));

  }


  Future<Map<String, dynamic>> _callPayEndPointMethodId({

    required bool useStripeSdk,

    required String paymentMethodId,

    required String currency,

    List<Map<String, dynamic>>? items,
  }) async {

    final url = Uri.parse(
        'https://us-central1-cine-app-cbd48.cloudfunctions.net/StripePayEndpointMethodId');

    final response = await http.post(

      url,

      headers: {
        'Content-Type': 'application/json',

        'Authorization':
            'Bearer sk_test_51NABSOKmI4cu2XoHyckCyXNZC2ARhX01xaBnbyV3TioJWbbZHfm24TI2dM9GDMJghzGJtVjx0brlevEJHWY7bJCi0062hRYZ9v',

      },

      body: json.encode({

        'useStripeSdk': useStripeSdk,

        'paymentMethodId': paymentMethodId,

        'currency': currency,

        'items': items

      }),

    );

    var encodeFirst = json.encode(response.body);

    return json.decode(response.body);

  }


  Future<Map<String, dynamic>> _callPayEndPointIntentId({

    required String paymentIntentId,

  }) async {

    final url = Uri.parse(
        'https://us-central1-cine-app-cbd48.cloudfunctions.net/StripePayEndpointIntentId');

    final response = await http.post(

      url,

      headers: {
        'Content-Type': 'application/json',

        'Authorization':
            'Bearer sk_test_51NABSOKmI4cu2XoHyckCyXNZC2ARhX01xaBnbyV3TioJWbbZHfm24TI2dM9GDMJghzGJtVjx0brlevEJHWY7bJCi0062hRYZ9v',

      },

      body: json.encode({

        'paymentIntentId': paymentIntentId,

      }),

    );

    var encodeFirst = json.encode(response.body);

    return json.decode(response.body);

  }

}


class PaymentStart extends PaymentEvent {}


class PaymentClose extends PaymentEvent {}


class PaymentCreateIntent extends PaymentEvent {

  final BillingDetails billingDetails;

  final List<Map<String, dynamic>> items;


  const PaymentCreateIntent(
      {required this.billingDetails, required this.items});


  @override

  List<Object> get props => [billingDetails, items];

}


class PaymentConfirmIntent extends PaymentEvent {

  final String clientSecret;


  const PaymentConfirmIntent({required this.clientSecret});

  @override

  List<Object> get props => [clientSecret];

}


class PaymentCloseEvent extends PaymentEvent {

  const PaymentCloseEvent();

  @override

  List<Object> get props => [];

}


enum PaymentStatus { initial, loading, success, failure, close }


class PaymentState extends Equatable {

  final PaymentStatus status;

  final CardFieldInputDetails cardFieldInputDetails;


  const PaymentState(
      {this.status = PaymentStatus.initial,
      this.cardFieldInputDetails =
          const CardFieldInputDetails(complete: false)});


  PaymentState copyWith({

    PaymentStatus? status,

    CardFieldInputDetails? cardFieldInputDetails,
  }) {

    return PaymentState(

      status: status ?? this.status,

      cardFieldInputDetails:
          cardFieldInputDetails ?? this.cardFieldInputDetails,

    );

  }


  @override

  List<Object> get props => [status, cardFieldInputDetails];

}


abstract class PaymentEvent extends Equatable {

  const PaymentEvent();

  @override

  List<Object> get props => [];

}

