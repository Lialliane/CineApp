import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/cenima-app-user/add%20food%20to%20order.dart';
import 'package:myapp/cenima-app-user/home-page.dart';
import 'package:myapp/services/booking.dart';
import 'package:myapp/services/user_services.dart';
import 'package:myapp/utils.dart';
import 'package:provider/provider.dart';

import '../reusable-widgets/reusable-widget.dart';
import '../services/ticket.dart';
import '../services/user.dart';
import '../shared/Theme.dart';
import 'add-payment-in-checkout.dart';

class CheckOut extends StatefulWidget {
  const CheckOut(this.bookingDetails, this.ticket, this.selectedSeatsSta,
      this.selectedSeatsPre,
      {super.key});
  final BookingDetails bookingDetails;
  final Ticket ticket;
  final Set selectedSeatsPre;
  final Set selectedSeatsSta;

  @override
  State<CheckOut> createState() => _CheckOutState(
      bookingDetails, ticket, selectedSeatsSta, selectedSeatsPre);
}

class _CheckOutState extends State<CheckOut> {
  _CheckOutState(this.bookingDetails, this.ticket, this.selectedSeatsSta,
      this.selectedSeatsPre);
  Ticket ticket;
  BookingDetails bookingDetails;
  bool openCheck = true;
  DateTime current = DateTime.now();
  int primeTicket = 0;
  int standardTicket = 0;
  final size = MediaQueryData.fromWindow(WidgetsBinding.instance.window);
  List<String> pay = ['credit card', 'chash'];
  String? selctedPayment = 'credit card';
  Set selectedSeatsPre;
  Set selectedSeatsSta;
  GlobalKey key = GlobalKey();
  String result = '';
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    Ticket? dummy = Ticket(
        numOfSeats: 0,
        ticketPrice: bookingDetails,
        date: 'date',
        time: 'time',
        movie: 'movie',
        seatNumbers: [],
        ticketNo: 'ticketNo');
    Size deviceSize = MediaQuery.of(context).size;
    double width = deviceSize.width;
    double height = deviceSize.height;
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    NUser? user = Provider.of<NUser?>(context);

    return FutureBuilder(
        future: UserServices.getUser(user?.userID),
        builder: (context, AsyncSnapshot<NUser?>? snapshot) {
          return WillPopScope(
            onWillPop: () async {
              await showCancelPopup(context, width, height)
                  ? Navigator.pop(context)
                  : false;
              return Future.value(false);
            },
            child: Scaffold(
              body: NestedScrollView(
                floatHeaderSlivers: true,
                headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  SliverAppBar(
                    toolbarHeight: height * 0.15,
                    iconTheme: IconThemeData(
                      color: Color(0xffdd204a),
                    ),
                    backgroundColor: Color(0xffffffff),
                    leading: GestureDetector(
                      child: Padding(
                        padding: EdgeInsets.only(top: height * 0.017),
                        child: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                        ),
                      ),
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddFoodToOrder(
                                  bookingDetails,
                                  ticket,
                                  selectedSeatsSta,
                                  selectedSeatsPre)),
                        );
                      },
                    ),
                    bottom: PreferredSize(
                      preferredSize: Size.zero,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(right: width * 0.04),
                          child: Column(
                            children: [
                              Text(
                                ticket.movie,
                                style: SafeGoogleFont(
                                  'Lucida Bright',
                                  height * 0.017,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff797979),
                                ),
                              ),
                              Text(
                                'Dec 00, 2022 - 00:00 -AM',
                                style: SafeGoogleFont(
                                  'Lucida Bright',
                                  height * 0.015,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff797979),
                                ),
                              ),
                              Text(
                                'Screen 1 ',
                                style: SafeGoogleFont(
                                  'Lucida Bright',
                                  height * 0.015,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff797979),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    floating: true,
                    snap: true,
                    centerTitle: true,
                    actions: [
                      Padding(
                        padding: EdgeInsets.only(top: height * 0.017),
                        child: TextButton(
                          onPressed: () async {
                            await showCancelPopup(context, width, height)
                                ? Navigator.pop(context)
                                : null;
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Center(
                            // closeHam (I56:1508;1:159)
                            child: SizedBox(
                              width: 22 * fem,
                              height: 22 * fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/close-2r9.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                    title: Container(
                      child: Text(
                        'Order Details',
                        style: SafeGoogleFont(
                          'Lucida Bright',
                          height * 0.03,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff797979),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    shape: ContinuousRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xff707070))),
                  ),
                ],
                body: SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tightFor(
                      height: size.size.height +
                          (15 * bookingDetails.selectedFood!.length),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: width * 0.1, right: width * 0.1, top: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Tickets", style: checkStyle()),
                          SizedBox(height: 9.89),
                          Row(
                            children: [
                              Text(
                                "${bookingDetails.selectedStandard} Standard ticket ",
                                style: checkStyle1(),
                              ),
                              Spacer(),
                              Text(
                                  "${bookingDetails.getPrice(bookingDetails.selectedStandard, 8).toString()} JOD",
                                  style: checkStyle1()),
                            ],
                          ),
                          SizedBox(height: 9.89),
                          Row(
                            children: [
                              Text(
                                  "${bookingDetails.selectedPrime} Prime ticket ",
                                  style: checkStyle1()),
                              Spacer(),
                              Text(
                                  "${bookingDetails.getPrice(bookingDetails.selectedPrime, 16).toString()} JOD",
                                  style: checkStyle1()),
                            ],
                          ),
                          Divider(
                            thickness: 1.5,
                          ),
                          (bookingDetails.selectedFood!.isEmpty)
                              ? Container()
                              : Text("Food And Drinks", style: checkStyle()),
                          Container(
                            height: height *
                                0.09 *
                                (bookingDetails.selectedFood!.length),
                            child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: bookingDetails.selectedFood!.length,
                                itemBuilder: (context, index) {
                                  return Column(children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                              width: width * 0.4,
                                              child: Text(
                                                  '${bookingDetails.selectedFoodNo![index]} ${(bookingDetails.selectedFoodSize![index] == 's' ? 'Small' : bookingDetails.selectedFoodSize![index] == 'm' ? 'Medium' : bookingDetails.selectedFoodSize![index] == 'l' ? 'Large' : '')} ${(bookingDetails.selectedFoodFlavor![index].length == 1) ? bookingDetails.selectedFoodFlavor![index][0] + ' ' : ''}${bookingDetails.selectedFood![index]}',
                                                  style: checkStyle1()),
                                            ),
                                            bookingDetails.selectedFoodFlavor![
                                                        index] ==
                                                    1
                                                ? Container()
                                                : Container(
                                                    width: width * 0.4,
                                                    child: Text(
                                                      ''
                                                      '* ${flavorPrinter(bookingDetails.selectedFoodFlavor![index], bookingDetails.selectedFoodFlavorNo![index])}',
                                                      style: SafeGoogleFont(
                                                        'Segoe UI',
                                                        height * 0.014,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color:
                                                            Color(0xff000000),
                                                      ),
                                                    ),
                                                  ),
                                          ],
                                        ),
                                        Spacer(),
                                        Text(
                                            '${(bookingDetails.selectedFoodPrice![index] * bookingDetails.selectedFoodNo![index]).toString()} JOD',
                                            style: checkStyle1()),
                                      ],
                                    ),
                                    bookingDetails.selectedFood!.length == index
                                        ? Container()
                                        : SizedBox(height: 9.89),
                                  ]);
                                }),
                          ),
                          Divider(
                            thickness: 1.5,
                          ),
                          Row(
                            children: [
                              Text("Booking Fees",
                                  textAlign: TextAlign.center,
                                  style: checkStyle1()),
                              Spacer(),
                              Text('2.00 JOD', style: checkStyle1()),
                            ],
                          ),
                          Divider(
                            thickness: 1.5,
                          ),
                          Row(
                            children: [
                              Text("TOTAL",
                                  textAlign: TextAlign.center,
                                  style: checkStyle1()),
                              Spacer(),
                              Text(
                                  "${(bookingDetails.getTotal() + 2).toString()} JOD",
                                  style: checkStyle1()),
                            ],
                          ),
                          Divider(
                            thickness: 1.5,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Payment Methods',
                              style: SafeGoogleFont(
                                'Lucida Bright',
                                18 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2575 * ffem / fem,
                                color: Color(0xff7e132b),
                              ),
                            ),
                          ),
                          SizedBox(height: 9.89),
                          Row(
                            children: [
                              Container(
                                width: 30,
                                child: RadioListTile(
                                  dense: true,
                                  value: pay[0],
                                  groupValue: selctedPayment,
                                  onChanged: (String? value) {
                                    setState(() {
                                      selctedPayment = value;
                                    });
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 20 * fem,
                                      height: 20 * fem,
                                      child: Image.asset(
                                        'assets/cenima-app-user/images/credit-card-1.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      // creditcard8hs (94:10164)
                                      margin: EdgeInsets.fromLTRB(
                                          10, 0 * fem, 0 * fem, 0),
                                      child: Text(
                                        'Credit card',
                                        style: SafeGoogleFont(
                                          'Segoe UI',
                                          height * 0.022,
                                          fontWeight: FontWeight.w300,
                                          fontStyle: FontStyle.italic,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 30,
                                child: RadioListTile(
                                  dense: true,
                                  value: pay[1],
                                  groupValue: selctedPayment,
                                  onChanged: (String? value) {
                                    setState(() {
                                      selctedPayment = value;
                                    });
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Row(
                                  children: [
                                    Container(
                                      // creditcard1Xnd (94:10175)
                                      width: 20 * fem,
                                      height: 20 * fem,
                                      child: Image.asset(
                                        'assets/cenima-app-user/images/money-1.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      // creditcard8hs (94:10164)
                                      margin: EdgeInsets.fromLTRB(
                                          10, 0 * fem, 0 * fem, 0 * fem),
                                      child: Text(
                                        'Cash On Arrival',
                                        style: SafeGoogleFont(
                                          'Segoe UI',
                                          height * 0.022,
                                          fontWeight: FontWeight.w300,
                                          fontStyle: FontStyle.italic,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              floatingActionButton: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.only(left: width * 0.07),
                  width: width * 0.6,
                  height: height * 0.06,
                  child: TextButton(
                    onPressed: () async {
                      ticket.ticketNo = (user?.userID ?? 123).toString();
                      dummy = await TicketService.getTicket(ticket.ticketNo);
                      setState(() {
                        ticket.ticketNo = dummy != null
                            ? getTicketId(dummy!, ticket.ticketNo)
                            : (user?.userID ?? 123).toString();
                        print(user?.userID);
                      });
                      if (selctedPayment == 'credit card') {
                        result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaymentBooking(ticket)),
                        );
                      } else {
                        result = await showBookedPopup(context, width, height);
                      }
                      if (result == 'done') {
                        await TicketService.updateTicket(
                            ticket.ticketNo,
                            ticket.movie,
                            ticket.numOfSeats,
                            ticket.seatNumbers,
                            bookingDetails.toMap(),
                            '',
                            '');
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
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
                          'Continue And Pay',
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
            ),
          );
        });
  }

  flavorPrinter(List flavor, List noOfFlavor) {
    String Allflavors = '';
    for (int i = 0; i < flavor.length; i++) {
      Allflavors +=
          '${noOfFlavor[i]} ${flavor[i]}${(i == flavor.length - 1) ? '' : ','}';
    }
    return Allflavors;
  }

  getTicketId(Ticket ticket, String id) {
    String id1 = id;
    int counter = 0;
    for (int i = -1; i < counter; i++) {
      if (ticket.ticketNo == id1) {
        counter++;
        id1 = id1 + (counter.toString());
      }
    }
    return id1;
  }
}
