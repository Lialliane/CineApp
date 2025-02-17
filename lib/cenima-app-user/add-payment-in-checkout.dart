import 'dart:convert';

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/bloc/Payment.dart';
import 'package:myapp/utils.dart';
import 'package:http/http.dart' as http;

import '../reusable-widgets/reusable-widget.dart';
import '../services/ticket.dart';
import '../shared/Theme.dart';
import 'home-page.dart';

class PaymentBooking extends StatefulWidget {
  const PaymentBooking(this.ticket, {super.key});
  final Ticket ticket;

  @override
  State<PaymentBooking> createState() => _PaymentBookingState(ticket);
}

class _PaymentBookingState extends State<PaymentBooking> {
  Ticket ticket;
  _PaymentBookingState(this.ticket);
  TextEditingController cardNumberController = TextEditingController();
  CardType cardType = CardType.Invalid;


  @override
  void initState() {
    context.read<PaymentBloc>().add(PaymentStart());
        super.initState();
  }



  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    double width = deviceSize.width;
    double height = deviceSize.height;
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: height * 0.1,
        iconTheme: const IconThemeData(
          color: Color(0xffdd204a),
        ),
        leading: GestureDetector(
          child: Padding(
            padding: EdgeInsets.only(top: height * 0.017),
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
            ),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: Container(
          padding: EdgeInsets.only(top: 7),
          child: Text(
            "Enter Card Details",
            style: SafeGoogleFont(
              'Lucida Bright',
              height * 0.02,
              fontWeight: FontWeight.w600,
              color: Color(0xff797979),
            ),
          ),
        ),
        shape: const ContinuousRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xff707070))),
        centerTitle: true,
        backgroundColor: const Color(0xffffffff),
      ),
      body: BlocBuilder<PaymentBloc, PaymentState>(builder: (context, state) {
        CardFormEditController controller = CardFormEditController(initialDetails: state.cardFieldInputDetails);
        if (state.status == PaymentStatus.initial) {
          return Scaffold(
            body: Column(
              children: [
                CardFormField(
                  enablePostalCode: true,
                  controller: controller,),
/*
                Form(
                  */
/*key: _loginForm,*//*

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      TextFormField(
                        controller: cardNumberController,
                        onChanged: (val) {
                          setState(() {
                            errorCard = CardUtils.validateCardNum(val);
                          });
                        },
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(19),
                          CardNumberInputFormatter(),
                        ],
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black26,
                            ),
                          ),
                          prefixIcon: const Icon(Icons.credit_card),
                          suffix: CardUtils.getCardIcon(cardType),
                          hintText: '0000 0000 0000 0000',
                          labelText: 'Card Number',
                          errorText: errorCard,
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(10.0)),
                      // password field
                      Row(
                        children: [
                          SizedBox(
                            width: width * 0.75,
                            child: TextFormField(
                              onChanged: (val) {
                                setState(() {
                                  errorDate = CardUtils.validateDate(val);
                                });
*/
/*
                                Future.delayed(const Duration(milliseconds: 1000), () {
                                  setState(() {
                                    val.isEmpty? isPFValid= false: isPFValid=true;
                                    isPasswordValid? errorP= '' :errorP='Password must be 6 characters long';
                                  });
                                });
*//*

                              },
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(5),
                                CardMonthInputFormatter(),
                              ],
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black26,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100.0)),
                                ),
                                prefixIcon: Icon(Icons.date_range),
                                hintText: 'MM/YY',
                                labelText: 'Expiry Date',
                                errorText: errorDate,
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              onChanged: (val) {
                                setState(() {
                                  errorCVV = CardUtils.validateCVV(val);
                                });
                              },
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                                // Limit the input
                                LengthLimitingTextInputFormatter(4),
                              ],
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black26,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100.0)),
                                ),
                                hintText: '000',
                                labelText: 'Cvv',
                                errorText: errorCVV,
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: height * .017),
                      Divider(
                        thickness: 1.5,
                      ),
                      // error text
*/
/*
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(child:
                          isEmailValid && isPasswordValid ?
                          Text(error)
                              :
                          Text(error,
                            style: redTextFont(height),
                          ),
                          ),
                        ],
                      ),
*//*

                      //sign in button
*/
/*
                      Center(
                        child: Container(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: isSigningIn? SpinKitFadingCircle(
                            color: mainColor,)
                              : TextButton(
                            onPressed: isEmailValid && isPasswordValid
                                ? () async {
                              setState(() {
                                isSigningIn = true;
                              });

                              SignInSignUpResult? result =
                              await AuthServices.signInU(
                                  emailController.text,
                                  passwordController.text);

                              if (result?.exception == true||result?.user==null) {
                                setState(() {
                                  isSigningIn = false;
                                });
                                if (context.mounted) {
                                  Flushbar(
                                    duration:
                                    const Duration(seconds: 4),
                                    flushbarPosition:
                                    FlushbarPosition.TOP,
                                    backgroundColor:
                                    const Color(0xFFFF5c83),
                                    message: result?.message,
                                  ).show(context);
                                }
                              }
                              else{
                                Navigator.pop(context);}
                            }
                                : () async {
                              setState(() {
                                error = "Email or password invalid";
                              });
                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: SizedBox(
                              width: 144 * fem,
                              height: 57 * fem,
                              child: Container(
                                // frame4EaH (I134:15173;18:475)
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xff707070)),
                                  color: const Color(0xff9a2044),
                                  borderRadius:
                                  BorderRadius.circular(54 * fem),
                                ),
                                child: Center(
                                  child: Text(
                                    'Log In',
                                    textAlign: TextAlign.center,
                                    style: buttonTextFont(height),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
*//*

                    ],
                  ),
                ),
*/
              ],
            ),
            floatingActionButton: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.only(left: width * 0.07),
                width: width * 0.6,
                height: height * 0.06,
                child: TextButton(
                  onPressed: () {
                    if (controller.details.complete) {
                      context.read<PaymentBloc>().add(const PaymentCreateIntent(
                          billingDetails:
                          BillingDetails(email: 'tempo@gmail.com'),
                          items: [
                            {'id': 0},
                            {'id': 1}
                          ]));
                    }
                    else {if (context.mounted) {
                      print(controller.details.complete);
                      Flushbar(
                        duration: const Duration(seconds: 4),
                        flushbarPosition: FlushbarPosition.TOP,
                        backgroundColor: const Color(0xFFFF5c83),
                        message: "Please complete all the information",
                      ).show(context);
                    }}
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    padding: EdgeInsets.only(top: 4, bottom: 4),
                    // frame4XMX (I79:14546;104:8327;78:6712;18:475)
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff707070)),
                      color: Color(0xff9a2044),
                      borderRadius: BorderRadius.circular(54 * fem),
                    ),
                    child: Center(
                      child: Text(
                        'Pay',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Lucida Bright',
                          height * 0.025,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        }
        else if (state.status == PaymentStatus.failure) {
          return Scaffold(
            floatingActionButton: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.only(left: width * 0.07),
                width: width * 0.6,
                height: height * 0.06,
                child: TextButton(
                  onPressed: () {
                    if (controller.details.complete) {
                      context.read<PaymentBloc>().add(PaymentStart());
                    }
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    padding: EdgeInsets.only(top: 4, bottom: 4),
                    // frame4XMX (I79:14546;104:8327;78:6712;18:475)
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff707070)),
                      color: Color(0xff9a2044),
                      borderRadius: BorderRadius.circular(54 * fem),
                    ),
                    child: Center(
                      child: Text(
                        'Pay',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Lucida Bright',
                          height * 0.025,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            body: Column(
              children: [
                 Text('Something went wrong'),
              ],
            ),
          );
        } else
          if (state.status == PaymentStatus.success) {
            return Scaffold(
              floatingActionButton: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.only(left: width * 0.07),
                  width: width * 0.6,
                  height: height * 0.06,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context,'done');
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.only(top: 4, bottom: 4),
                      // frame4XMX (I79:14546;104:8327;78:6712;18:475)
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff707070)),
                        color: Color(0xff9a2044),
                        borderRadius: BorderRadius.circular(54 * fem),
                      ),
                      child: Center(
                        child: Text(
                          'Continue',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Lucida Bright',
                            height * 0.025,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              body: Dialogue(),
            );
        } else if (state.status == PaymentStatus.loading) {
          return Scaffold(
            floatingActionButton: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.only(left: width * 0.07),
                width: width * 0.6,
                height: height * 0.06,
                child: TextButton(
                  onPressed: () {
                    if (controller.details.complete) {
                      context.read<PaymentBloc>().add(PaymentStart());
                    }
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    padding: EdgeInsets.only(top: 4, bottom: 4),
                    // frame4XMX (I79:14546;104:8327;78:6712;18:475)
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff707070)),
                      color: Color(0xff9a2044),
                      borderRadius: BorderRadius.circular(54 * fem),
                    ),
                    child: Center(
                      child: Text(
                        'Pay',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Lucida Bright',
                          height * 0.025,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            body: Column(
              children: [
                SpinKitFadingCircle(
                  color: mainColor,
                ),
                Spacer(),
              ],
            ),
          );
        }
          else if (state.status == PaymentStatus.loading) {
            Navigator.pop(context,'done');
            return Scaffold(
              floatingActionButton: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.only(left: width * 0.07),
                  width: width * 0.6,
                  height: height * 0.06,
                  child: TextButton(
                    onPressed: () {
                      if (controller.details.complete) {
                        context.read<PaymentBloc>().add(PaymentStart());
                      }
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.only(top: 4, bottom: 4),
                      // frame4XMX (I79:14546;104:8327;78:6712;18:475)
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff707070)),
                        color: Color(0xff9a2044),
                        borderRadius: BorderRadius.circular(54 * fem),
                      ),
                      child: Center(
                        child: Text(
                          'Pay',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Lucida Bright',
                            height * 0.025,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              body: Column(
                children: [
                  SpinKitFadingCircle(
                    color: mainColor,
                  ),
                  Spacer(),
                ],
              ),
            );
          }
          else {
          return Column(
            children: [
              const Text('Something went wrong'),
              Spacer(),
            ],
          );
        }
      }),
    );
  }

  void getCardTypeFrmNumber() {
    if (cardNumberController.text.length <= 6) {
      String input = CardUtils.getCleanedNumber(cardNumberController.text);
      CardType type = CardUtils.getCardTypeFrmNumber(input);
      if (type != cardType) {
        setState(() {
          cardType = type;
        });
      }
    }
  }
}

enum CardType {
  Master,
  Visa,
  Verve,
  Discover,
  AmericanExpress,
  DinersClub,
  Jcb,
  Others,
  Invalid
}

class CardNumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var text = newValue.text;
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }
    var buffer = StringBuffer();
    for (int i = 0; i < text.length; i++) {
      buffer.write(text[i]);
      var nonZeroIndex = i + 1;
      if (nonZeroIndex % 4 == 0 && nonZeroIndex != text.length) {
        buffer.write('  '); // Add double spaces.
      }
    }
    var string = buffer.toString();
    return newValue.copyWith(
        text: string,
        selection: TextSelection.collapsed(offset: string.length));
  }
}

class CardMonthInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var newText = newValue.text;
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }
    var buffer = StringBuffer();
    for (int i = 0; i < newText.length; i++) {
      buffer.write(newText[i]);
      var nonZeroIndex = i + 1;
      if (nonZeroIndex % 2 == 0 && nonZeroIndex != newText.length) {
        buffer.write('/');
      }
    }
    var string = buffer.toString();
    return newValue.copyWith(
        text: string,
        selection: TextSelection.collapsed(offset: string.length));
  }
}

class CardUtils {
  static CardType getCardTypeFrmNumber(String input) {
    CardType cardType;
    if (input.startsWith(RegExp(
        r'((5[1-5])|(222[1-9]|22[3-9][0-9]|2[3-6][0-9]{2}|27[01][0-9]|2720))'))) {
      cardType = CardType.Master;
    } else if (input.startsWith(RegExp(r'[4]'))) {
      cardType = CardType.Visa;
    } else if (input.startsWith(RegExp(r'((506(0|1))|(507(8|9))|(6500))'))) {
      cardType = CardType.Verve;
    } else if (input.startsWith(RegExp(r'((34)|(37))'))) {
      cardType = CardType.AmericanExpress;
    } else if (input.startsWith(RegExp(r'((6[45])|(6011))'))) {
      cardType = CardType.Discover;
    } else if (input.startsWith(RegExp(r'((30[0-5])|(3[89])|(36)|(3095))'))) {
      cardType = CardType.DinersClub;
    } else if (input.startsWith(RegExp(r'(352[89]|35[3-8][0-9])'))) {
      cardType = CardType.Jcb;
    } else if (input.length <= 8) {
      cardType = CardType.Others;
    } else {
      cardType = CardType.Invalid;
    }
    return cardType;
  }

  static String getCleanedNumber(String text) {
    RegExp regExp = RegExp(r"[^0-9]");
    return text.replaceAll(regExp, '');
  }

  static Widget? getCardIcon(CardType? cardType) {
    String img = "";
    Icon? icon;
    switch (cardType) {
      case CardType.Master:
        img = 'mastercard.png';
        break;
      case CardType.Visa:
        img = 'visa.png';
        break;
      case CardType.Verve:
        img = 'verve.png';
        break;
      case CardType.AmericanExpress:
        img = 'american_express.png';
        break;
      case CardType.Discover:
        img = 'discover.png';
        break;
      case CardType.DinersClub:
        img = 'dinners_club.png';
        break;
      case CardType.Jcb:
        img = 'jcb.png';
        break;
      case CardType.Others:
        icon = const Icon(
          Icons.credit_card,
          size: 24.0,
          color: Color(0xFFB8B5C3),
        );
        break;
      default:
        icon = const Icon(
          Icons.warning,
          size: 24.0,
          color: Color(0xFFB8B5C3),
        );
        break;
    }
    Widget? widget;
    if (img.isNotEmpty) {
      widget = Image.asset(
        'assets/cenima-app-user/images/$img',
        width: 40.0,
      );
    } else {
      widget = icon;
    }
    return widget;
  }

  static String? validateCardNum(String? input) {
    if (input == null || input.isEmpty) {
      return "This field is required";
    }
    input = getCleanedNumber(input);
    if (input.length < 8) {
      return "Card is invalid";
    }
    int sum = 0;
    int length = input.length;
    for (var i = 0; i < length; i++) {
      // get digits in reverse order
      int digit = int.parse(input[length - i - 1]);
// every 2nd number multiply with 2
      if (i % 2 == 1) {
        digit *= 2;
      }
      sum += digit > 9 ? (digit - 9) : digit;
    }
    if (sum % 10 == 0) {
      return null;
    }
    return "Card is invalid";
  }

  static String? validateCVV(String? value) {
    if (value == null || value.isEmpty) {
      return "This field is required";
    }
    if (value.length < 3 || value.length > 4) {
      return "CVV is invalid";
    }
    return null;
  }

  static String? validateDate(String? value) {
    if (value == null || value.isEmpty) {
      return "This field is required";
    }
    int year;
    int month;
    if (value.contains(RegExp(r'(/)'))) {
      var split = value.split(RegExp(r'(/)'));

      month = int.parse(split[0]);
      year = int.parse(split[1]);
    } else {
      month = int.parse(value.substring(0, (value.length)));
      year = -1; // Lets use an invalid year intentionally
    }
    if ((month < 1) || (month > 12)) {
      // A valid month is between 1 (January) and 12 (December)
      return 'Expiry month is invalid';
    }
    var fourDigitsYear = convertYearTo4Digits(year);
    if ((fourDigitsYear < 1) || (fourDigitsYear > 2099)) {
      // We are assuming a valid should be between 1 and 2099.
      // Note that, it's valid doesn't mean that it has not expired.
      return 'Expiry year is invalid';
    }
    if (!hasDateExpired(month, year)) {
      return "Card has expired";
    }
    return null;
  }

  static int convertYearTo4Digits(int year) {
    if (year < 100 && year >= 0) {
      var now = DateTime.now();
      String currentYear = now.year.toString();
      String prefix = currentYear.substring(0, currentYear.length - 2);
      year = int.parse('$prefix${year.toString().padLeft(2, '0')}');
    }
    return year;
  }

  static bool hasDateExpired(int month, int year) {
    return isNotExpired(year, month);
  }

  static bool isNotExpired(int year, int month) {
    // It has not expired if both the year and date has not passed
    return !hasYearPassed(year) && !hasMonthPassed(year, month);
  }

  static List<int> getExpiryDate(String value) {
    var split = value.split(RegExp(r'(/)'));
    return [int.parse(split[0]), int.parse(split[1])];
  }

  static bool hasMonthPassed(int year, int month) {
    var now = DateTime.now();
    // The month has passed if:
    // 1. The year is in the past. In that case, we just assume that the month
    // has passed
    // 2. Card's month (plus another month) is more than current month.
    return hasYearPassed(year) ||
        convertYearTo4Digits(year) == now.year && (month < now.month + 1);
  }

  static bool hasYearPassed(int year) {
    int fourDigitsYear = convertYearTo4Digits(year);
    var now = DateTime.now();
    // The year has passed if the year we are currently is more than card's
    // year
    return fourDigitsYear < now.year;
  }
}

class Dialogue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    double width = deviceSize.width;
    double height = deviceSize.height;
    String result='';
    if(result==''){
    Future.delayed(Duration.zero, () async {
      result= await showBookedPopup(context,width,height);
    });
    }
    return Container();
  }
}


