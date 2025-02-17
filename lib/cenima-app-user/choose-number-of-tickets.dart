import 'package:another_flushbar/flushbar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/scheduler.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/cenima-app-user/SeatSelection.dart';
import 'package:myapp/cenima-app-user/add%20food%20to%20order.dart';
import 'package:myapp/services/booking.dart';
import 'package:myapp/services/ticket.dart';
import 'package:myapp/utils.dart';

import '../reusable-widgets/reusable-widget.dart';
import '../services/Movie service.dart';
import '../services/Schedules.dart';
import '../services/Screens.dart';
import '../shared/Theme.dart';

class ChooseNoOfTcikets extends StatefulWidget {
  const ChooseNoOfTcikets(this.movieName, this.bookingDetails,
      this.selectedSeatsSta, this.selectedSeatsPre,
      {super.key});
  final String movieName;
  final BookingDetails bookingDetails;
  final Set selectedSeatsPre;
  final Set selectedSeatsSta;

  @override
  State<ChooseNoOfTcikets> createState() => _ChooseNoOfTciketsState(
      movieName, bookingDetails, selectedSeatsSta, selectedSeatsPre);
}

class _ChooseNoOfTciketsState extends State<ChooseNoOfTcikets> {
  bool openCheck = true;
  int primeTicket = 0;
  int standardTicket = 0;
  int rotate = 0;
  String movieName;
  Screens screen =
      Screens('screen 1', [], [], 57, 19, 152, 19, {28, 47}, {1, 10, 19});
  BookingDetails bookingDetails;
  Set selectedSeatsPre;
  Set selectedSeatsSta;

  _ChooseNoOfTciketsState(this.movieName, this.bookingDetails,
      this.selectedSeatsSta, this.selectedSeatsPre);

  @override
  void initState() {
    selectedSeatsPre = {};
    selectedSeatsSta = {};
    bookingDetails = BookingDetails(0, 0, [], [], [], [], [], []);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bookingDetails.selectedPrime == 0
        ? primeTicket = primeTicket
        : primeTicket = bookingDetails.selectedPrime;
    bookingDetails.selectedStandard == 0
        ? standardTicket = standardTicket
        : standardTicket = bookingDetails.selectedStandard;
    int limitStandard =
        (screen.noOfSeatsStandard - screen.bookedStandard.length < 10)
            ? screen.noOfSeatsStandard - screen.bookedStandard.length
            : 10;
    int limitPrime =
        (screen.noOfSeatsPremuim - screen.bookedPremuim.length < 10)
            ? screen.noOfSeatsPremuim - screen.bookedPremuim.length
            : 10;
    Ticket ticket = Ticket(
        numOfSeats: 0,
        ticketPrice: bookingDetails,
        date: '',
        time: '',
        movie: movieName,
        seatNumbers: [],
        ticketNo: '');

    MovieService ser = MovieService();
    Size deviceSize = MediaQuery.of(context).size;
    double width = deviceSize.width;
    double height = deviceSize.height;
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        shadowColor: Colors.transparent,
        toolbarHeight: height * 0.1,
        iconTheme: const IconThemeData(
          color: Color(0xffdd204a),
        ),
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
          )
        ],
        bottom: PreferredSize(
            preferredSize: Size.zero,
            child: Padding(
              padding: EdgeInsets.only(left: width * 0.06, bottom: 3),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dec 00, 2022 - 00:00 -AM',
                      style: SafeGoogleFont(
                        'Lucida Bright',
                        height * 0.015,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff797979),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.5,
                      child: Text(
                        'Screen 1 ',
                        style: SafeGoogleFont(
                          'Lucida Bright',
                          height * 0.015,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff797979),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // themenuJHb (1:1682)
              margin:
                  EdgeInsets.fromLTRB(0.01 * fem, 0 * fem, 0 * fem, 3 * fem),
              padding: const EdgeInsets.only(top: 7),
              child: Text(
                movieName,
                style: SafeGoogleFont(
                  'Lucida Bright',
                  height * 0.017,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff797979),
                ),
              ),
            ),
          ],
        ),
        shape: const ContinuousRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xff707070))),
        centerTitle: false,
        backgroundColor: const Color(0xffffffff),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              // choose no of ticekts bar
              Container(
                padding:
                    EdgeInsets.fromLTRB(0 * fem, 8 * fem, 0 * fem, 21 * fem),
                width: 393 * fem,
                height: height * 0.07,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff707070)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: const Offset(0, 2),
                      blurRadius: 2 * fem,
                    ),
                  ],
                ),
                child: Text(
                  // pleasepickaseatuEm (1:1667)
                  'Choose The Number Of Tickets',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont(
                    'Lucida Bright',
                    height * 0.023,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff4b4a4a),
                  ),
                ),
              ),
              // noOftickets
              SizedBox(
                height: height * 0.06,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // ticketsMWm (78:13961)
                    margin: EdgeInsets.fromLTRB(width * 0.09, 0, 0, 0 * fem),
                    child: Text(
                      'Standard Tickets',
                      style: SafeGoogleFont(
                        'Lucida Bright',
                        18 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2575 * ffem / fem,
                        color: const Color(0xff7e132b),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, width * 0.03, 0 * fem),
                    width: 120 * fem,
                    child: SizedBox(
                      width: 120 * fem,
                      height: 45 * fem,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15 * fem),
                          border: Border.all(color: const Color(0xff7e132b)),
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 2),
                              width: 21 * fem,
                              height: 21 * fem,
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    if (standardTicket > 0) {
                                      standardTicket--;
                                      bookingDetails.selectedStandard =
                                          standardTicket;
                                    }
                                  });
                                },
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                child: Text(
                                  '-',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Adamina',
                                    25 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 0.84 * ffem / fem,
                                    letterSpacing: -0.3199999928 * fem,
                                    color: const Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                            const Spacer(),
                            SizedBox(
                              width: 30 * fem,
                              height: 22 * fem,
                              child: Text(
                                standardTicket.toString(),
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Adamina',
                                  19 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.1052631579 * ffem / fem,
                                  letterSpacing: -0.3199999928 * fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              margin: const EdgeInsets.only(right: 2),
                              width: 21 * fem,
                              height: 21 * fem,
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    if (standardTicket < limitStandard) {
                                      standardTicket++;
                                      bookingDetails.selectedStandard =
                                          standardTicket;
                                    } else if (context.mounted) {
                                      Flushbar(
                                        duration: const Duration(seconds: 4),
                                        flushbarPosition: FlushbarPosition.TOP,
                                        backgroundColor:
                                            const Color(0xFFFF5c83),
                                        message:
                                            "You can't add more than 10 Tickets!",
                                      ).show(context);
                                    }
                                  });
                                },
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                child: Text(
                                  '+',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Adamina',
                                    25 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 0.84 * ffem / fem,
                                    letterSpacing: -0.3199999928 * fem,
                                    color: const Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // ticketsMWm (78:13961)
                    margin: EdgeInsets.fromLTRB(width * 0.09, 0, 0, 0 * fem),
                    child: Text(
                      'Prime Tickets',
                      style: SafeGoogleFont(
                        'Lucida Bright',
                        18 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2575 * ffem / fem,
                        color: const Color(0xff7e132b),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, width * 0.03, 0 * fem),
                    // incrementwjs (79:14480)
                    width: 120 * fem,
                    child: SizedBox(
                      width: 120 * fem,
                      height: 45 * fem,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15 * fem),
                          border: Border.all(color: const Color(0xff7e132b)),
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 2),
                              width: 21 * fem,
                              height: 21 * fem,
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    if (primeTicket > 0) {
                                      primeTicket--;
                                      bookingDetails.selectedPrime =
                                          primeTicket;
                                    }
                                  });
                                },
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                child: Text(
                                  '-',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Adamina',
                                    25 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 0.84 * ffem / fem,
                                    letterSpacing: -0.3199999928 * fem,
                                    color: const Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                            const Spacer(),
                            SizedBox(
                              width: 30 * fem,
                              height: 22 * fem,
                              child: Text(
                                primeTicket.toString(),
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Adamina',
                                  19 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.1052631579 * ffem / fem,
                                  letterSpacing: -0.3199999928 * fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              margin: const EdgeInsets.only(right: 2),
                              width: 21 * fem,
                              height: 21 * fem,
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    if (primeTicket < limitPrime) {
                                      primeTicket++;
                                      bookingDetails.selectedPrime =
                                          primeTicket;
                                    } else if (context.mounted) {
                                      Flushbar(
                                        duration: const Duration(seconds: 4),
                                        flushbarPosition: FlushbarPosition.TOP,
                                        backgroundColor:
                                            const Color(0xFFFF5c83),
                                        message:
                                            "You can't add more than 10 Tickets!",
                                      ).show(context);
                                    }
                                  });
                                },
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                child: Text(
                                  '+',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Adamina',
                                    25 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 0.84 * ffem / fem,
                                    letterSpacing: -0.3199999928 * fem,
                                    color: const Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    // bottom navigator
                    Container(
                      height: 82 * fem,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff707070)),
                        color: const Color(0xffffffff),
                      ),
                      child: Row(
                        children: [
                          const Spacer(),
                          TextButton(
                            onPressed: () {
                              if (primeTicket + standardTicket == 0) {
                                if (context.mounted) {
                                  Flushbar(
                                    duration: const Duration(seconds: 4),
                                    flushbarPosition: FlushbarPosition.TOP,
                                    backgroundColor: const Color(0xFFFF5c83),
                                    message: "Please add one ticket at least",
                                  ).show(context);
                                }
                              } else {
                                setState(() {
                                  ticket.numOfSeats =
                                      primeTicket + standardTicket;
                                });
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SeatSelection(
                                          standardTicket,
                                          primeTicket,
                                          bookingDetails,
                                          ticket,
                                          selectedSeatsSta,
                                          selectedSeatsPre)),
                                );
                              }
                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: 140 * fem,
                              height: 52 * fem,
                              padding: EdgeInsets.fromLTRB(0, 0, 10, 0 * fem),
                              child: Container(
                                // frame4XMX (I79:14546;104:8327;78:6712;18:475)
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xff707070)),
                                  color: const Color(0xff9a2044),
                                  borderRadius: BorderRadius.circular(54 * fem),
                                ),
                                child: Center(
                                  child: Text(
                                    'CONTINUE',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'Lucida Bright',
                                      height * 0.02,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    openCheck = !openCheck;
                    if (rotate == 0) {
                      rotate = 2;
                    } else {
                      rotate = 0;
                    }
                  });
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: openCheck
                    ? Container(
                        padding: EdgeInsets.fromLTRB(
                            42.5 * fem, 0 * fem, 0 * fem, 0 * fem),
                        width: 179 * fem,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11 * fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: height * 0.015),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'TOTAL',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'Lucida Bright',
                                      height * 0.02,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff9e9e9e),
                                    ),
                                  ),
                                  Text(
                                    // jodaFw (I79:14546;104:8327;78:6709)
                                    '${bookingDetails.getTotal().toString()} JOD',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'Lucida Bright',
                                      height * 0.02,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff777777),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Container(
                              // arrowdownsigntonavigatea9T (I79:14546;104:8327;78:6711)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 1 * fem),
                              width: 25 * fem,
                              height: 25 * fem,
                              child: Hero(
                                tag: 'rotatingImage',
                                child: RotatedBox(
                                  quarterTurns: rotate,
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.circular(11 * fem),
                                    child: Image.asset(
                                      'assets/cenima-app-user/images/arrow-down-sign-to-navigate-i9B.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            printCheck(width, height),
                            Container(
                              padding: EdgeInsets.fromLTRB(
                                  42.5 * fem, 0 * fem, 0 * fem, 0 * fem),
                              width: 179 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11 * fem),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: height * 0.015),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'TOTAL',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont(
                                            'Lucida Bright',
                                            height * 0.02,
                                            fontWeight: FontWeight.w600,
                                            color: const Color(0xff9e9e9e),
                                          ),
                                        ),
                                        Text(
                                          // jodaFw (I79:14546;104:8327;78:6709)
                                          '00 JOD',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont(
                                            'Lucida Bright',
                                            height * 0.02,
                                            fontWeight: FontWeight.w600,
                                            color: const Color(0xff777777),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  Container(
                                    // arrowdownsigntonavigatea9T (I79:14546;104:8327;78:6711)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 1 * fem),
                                    width: 25 * fem,
                                    height: 25 * fem,
                                    child: Hero(
                                      tag: 'rotatingImage',
                                      child: RotatedBox(
                                        quarterTurns: rotate,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(11 * fem),
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/arrow-down-sign-to-navigate-i9B.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  printCheck(width, height),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(
                                        42.5 * fem, 0 * fem, 0 * fem, 0 * fem),
                                    width: 179 * fem,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(11 * fem),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: height * 0.015),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                '',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont(
                                                  'Lucida Bright',
                                                  height * 0.02,
                                                  fontWeight: FontWeight.w600,
                                                  color:
                                                      const Color(0xff9e9e9e),
                                                ),
                                              ),
                                              Text(
                                                // jodaFw (I79:14546;104:8327;78:6709)
                                                '',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont(
                                                  'Lucida Bright',
                                                  height * 0.02,
                                                  fontWeight: FontWeight.w600,
                                                  color:
                                                      const Color(0xff777777),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        Container(
                                          // arrowdownsigntonavigatea9T (I79:14546;104:8327;78:6711)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 1 * fem),
                                          width: 25 * fem,
                                          height: 25 * fem,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(11 * fem),
                                            child: Image.asset(
                                              'assets/cenima-app-user/images/arrow-down-sign-to-navigate-i9B.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ])
                          ]),
              ),
            ),
          ),
        ],
      ),
    );
  }

  printCheck(double width, double height) {
    return SingleChildScrollView(
      child: StatefulBuilder(builder: (context, setState) {
        return Padding(
          padding: EdgeInsets.only(bottom: height * 0.01),
          child: Container(
            constraints: BoxConstraints(maxHeight: height * 0.77),
            width: width * 0.6,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xff7e132b),
                width: 1,
              ),
              color: Color(0xffefefef),
            ),
            padding: const EdgeInsets.only(
              top: 19,
              bottom: 24,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Tickets", style: checkStyle()),
                  //tickets
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
                      Text("${bookingDetails.selectedPrime} Prime ticket ",
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
                  //food
                  (bookingDetails.selectedFood!.isEmpty)
                      ? Container()
                      : Text("Food And Drinks", style: checkStyle()),
                  Container(
                    height:
                        height * 0.077 * (bookingDetails.selectedFood!.length),
                    child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: bookingDetails.selectedFood!.length,
                        itemBuilder: (context, index) {
                          return Column(children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      width: width * 0.4,
                                      child: Text(
                                          '${bookingDetails.selectedFoodNo![index]} ${(bookingDetails.selectedFoodSize![index] == 's' ? 'Small' : bookingDetails.selectedFoodSize![index] == 'm' ? 'Medium' : bookingDetails.selectedFoodSize![index] == 'l' ? 'Large' : '')} ${(bookingDetails.selectedFoodFlavor![index].length == 1) ? bookingDetails.selectedFoodFlavor![index][0] + ' ' : ''}${bookingDetails.selectedFood![index]}',
                                          style: checkStyle1()),
                                    ),
                                    (bookingDetails.selectedFoodFlavor![index]
                                                .length ==
                                            1)
                                        ? Container()
                                        : Container(
                                            width: width * 0.4,
                                            child: Text(
                                              ''
                                              '* ${flavorPrinter(bookingDetails.selectedFoodFlavor![index], bookingDetails.selectedFoodFlavorNo![index])}',
                                              style: SafeGoogleFont(
                                                'Segoe UI',
                                                height * 0.014,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff000000),
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
                      Text("TOTAL",
                          textAlign: TextAlign.center, style: checkStyle1()),
                      Spacer(),
                      Text('${bookingDetails.getTotal().toString()} JOD',
                          style: checkStyle1()),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }

  flavorPrinter(List flavor, List noOfFlavor) {
    String Allflavors = '';
    for (int i = 0; i < flavor.length; i++) {
      Allflavors +=
          '${noOfFlavor[i]} ${flavor[i]}${(i == flavor.length - 1) ? '' : ','}';
    }
    return Allflavors;
  }
}
