
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/services/booking.dart';
import 'package:myapp/shared/Theme.dart';
import 'package:myapp/utils.dart';

import '../reusable-widgets/reusable-widget.dart';
import '../services/Movie service.dart';
import '../services/Screens.dart';
import '../services/seat_selector.dart';
import '../services/ticket.dart';
import 'Admin-add-food-.dart';
import 'add food to order.dart';
import 'choose-number-of-tickets.dart';
//Color(0xfff1f1f1); slightly white color for background of seats selection

class SeatSelection extends StatefulWidget {
  const SeatSelection(this.noOfSeatsChosenS, this.noOfSeatsChosenP, this.bookingDetails,this.ticket,this.selectedSeatsSta, this.selectedSeatsPre,{super.key});
  final int noOfSeatsChosenP;
  final int noOfSeatsChosenS;
  final BookingDetails bookingDetails;
  final Ticket ticket;
  final Set selectedSeatsPre;
  final Set selectedSeatsSta;


  @override
  State<SeatSelection> createState() => _SeatSelectionState(noOfSeatsChosenS,noOfSeatsChosenP, bookingDetails,ticket,selectedSeatsSta,selectedSeatsPre);
}

class _SeatSelectionState extends State<SeatSelection> {
  _SeatSelectionState(this.noOfSeatsChosenS, this.noOfSeatsChosenP, this.bookingDetails, this.ticket, this.selectedSeatsSta, this.selectedSeatsPre);

  Set selectedSeatsPre;
  Set selectedSeatsSta;
  Ticket ticket;
  int noOfSeatsChosenP;
  int noOfSeatsChosenS;
  bool openCheck=true;
  BookingDetails bookingDetails;
  Screens screen= Screens('screen 1', [], [], 57, 19, 152, 19, {28, 47}, {1, 10, 19});

  @override
  Widget build(BuildContext context) {
    List<String> rowNames = _rowNameGenerator(screen.noOfSeatsPremuim, screen.noOfSeatsinPremuimRow, screen.noOfSeatsStandard, screen.noOfSeatsinStandardRow);
    MovieService ser= MovieService();
    Size deviceSize = MediaQuery.of(context).size;
    double width= deviceSize.width;
    double height= deviceSize.height;
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;


    return WillPopScope(
      onWillPop: () async {
        await showCancelPopup(context, width, height)? Navigator.pop(context):false;
        return Future.value(false);
      } ,
      child: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.transparent,
          toolbarHeight: height*0.1,
          iconTheme: const IconThemeData(
            color: Color(0xffdd204a),
          ),
          leading: GestureDetector(
            child: Padding(
              padding:  EdgeInsets.only(top: height*0.017),
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,),
            ),
            onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) =>
                      ChooseNoOfTcikets(ticket.movie, bookingDetails,selectedSeatsSta,selectedSeatsPre)),);
              },
          ),
          actions: [Padding(
            padding: EdgeInsets.only(top: height*0.017),
            child: TextButton(
              onPressed: () async {
                await showCancelPopup(context, width, height)?Navigator.pop(context):null;
              },
              style: TextButton.styleFrom (
                padding: EdgeInsets.zero,
              ),
              child: Center(
                // closeHam (I56:1508;1:159)
                child: SizedBox(
                  width: 22*fem,
                  height: 22*fem,
                  child: Image.asset(
                    'assets/cenima-app-user/images/close-2r9.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),],
          bottom: PreferredSize(
              preferredSize: Size.zero,
              child: Padding(
                padding:  EdgeInsets.only(left: width*0.19, bottom: 3),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          'Dec 00, 2022 - 00:00 -AM',
                          style: SafeGoogleFont (
                            'Lucida Bright',
                            height*0.015,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff797979),
                          ),
                        ),
                      ),
                      Container(
                        width: width*0.5,
                        child: Text(
                          'Screen 1 ',
                          style: SafeGoogleFont (
                            'Lucida Bright',
                            height*0.015,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff797979),
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
                margin: EdgeInsets.fromLTRB(0.01*fem, 0*fem, 0*fem, 3*fem),
                padding: EdgeInsets.only(top: 7),
                child: Text(
                  ticket.movie,
                  style: SafeGoogleFont (
                    'Lucida Bright',
                    height*0.017,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff797979),
                  ),
                ),
              ),
            ],
          ),
          shape:ContinuousRectangleBorder(
              side: BorderSide(
                  width: 1,
                  color: Color(0xff707070)
              )
          ),
          centerTitle: false,
          backgroundColor: const Color(0xffffffff),
        ),
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(0*fem, 8*fem, 0*fem, 21*fem),
                        width: 393*fem,
                        height: height*0.07,
                        decoration: BoxDecoration (
                          border: Border.all(color: Color(0xff707070)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(0, 20),
                              blurRadius: 2*fem,
                            ),
                          ],
                        ),
                        child: Text(
                          // pleasepickaseatuEm (1:1667)
                          'Please pick a seat',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Lucida Bright',
                            height*0.022,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff4b4a4a),
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: deviceSize.width * 0.02,
                              vertical: deviceSize.width * 0.02),
                          color: Colors.white,
                          height: deviceSize.height * 0.635,
                          width: deviceSize.width * 1.66,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  //first three row names
                                  Container(
                                    width: deviceSize.width * 0.03,
                                    height: deviceSize.height * 0.17,
                                    padding: EdgeInsets.only(top: deviceSize.height *0.032),
                                    child: ListView.builder(
                                        physics: const NeverScrollableScrollPhysics(),
                                        itemCount: 3,
                                        itemBuilder: ((context, index) {
                                          return Container(
                                            height: 35,
                                            width: 28,
                                            child: Center(
                                              child: Text(
                                                //row names
                                                rowNames[index],
                                                style: SafeGoogleFont (
                                                  'Lucida Bright',
                                                  height*0.017,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xff797979),
                                                ),
                                              ),
                                            ),
                                          );
                                        })),
                                  ),
                                  //the first three seats rows grid builder
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      _getHeading(
                                        //ticket object + royale seats
                                          "Prime"),
                                      Divider(
                                        height: deviceSize.height * 0.009,
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: deviceSize.width * 0.02,
                                            vertical: deviceSize.width * 0.02),
                                        height: deviceSize.height * 0.154,
                                        width: deviceSize.width * 1.58,
                                        child: GridView.extent(
                                            physics:NeverScrollableScrollPhysics(),
                                            mainAxisSpacing: 5,
                                            maxCrossAxisExtent: 32,
                                            children: List.generate(57, (index) {
                                              return (!screen.gapsPremuim.contains(index))
                                                  ? GestureDetector(
                                                onTap: () {
                                                  //royale booked list
                                                  if(!screen.bookedPremuim.contains(index)){
                                                    // selected seats, is it equal to the number of seats chosen
                                                    if (selectedSeatsPre.length == noOfSeatsChosenP) {
                                                      if(selectedSeatsPre.contains(index)) {
                                                        setState(() {
                                                          selectedSeatsPre.remove(index);
                                                        });}
                                                      else if (context.mounted) {
                                                        Flushbar(
                                                          duration:
                                                          const Duration(seconds: 4),
                                                          flushbarPosition:
                                                          FlushbarPosition.TOP,
                                                          backgroundColor:
                                                          const Color(0xFFFF5c83),
                                                          message: "The number of seats have exceeded the number you selected!",
                                                        ).show(context);
                                                      }
                                                    }
                                                    else {
                                                      if(selectedSeatsPre.contains(index)) {
                                                        setState(() {
                                                          selectedSeatsPre.remove(index);
                                                        });
                                                      }
                                                      else {
                                                        setState(() {
                                                          selectedSeatsPre.add(index);
                                                          print("does this not function?");
                                                          print(selectedSeatsSta.toString());
                                                        });
                                                      }
                                                    }
                                                  }
                                                },
                                                child: Container(
                                                  padding: EdgeInsets.all(2),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius.circular(5),
                                                    // props 2 is royale booking
                                                    /*color: (selectedSeatsPre.contains(index))
                                                      ? mainColor
                                                      : (screen.bookedPremuim.contains(index))
                                                        ? Colors.grey
                                                        : Colors.white,*/
                                                    /* border: Border.all(
                                                      color: (screen.bookedPremuim.contains(index))
                                                      ? Colors.grey
                                                      : Colors.redAccent,
                                                      width: 2),*/
                                                  ),
                                                  height: 28,
                                                  width: 28,
                                                  margin: EdgeInsets.all(2),
                                                  child: Stack(
                                                    children: [
                                                      Center(
                                                        child: (selectedSeatsPre.contains(index))
                                                            ? Image.asset(
                                                          'assets/cenima-app-user/images/armchair-2-Xos.png',
                                                          fit: BoxFit.cover,
                                                        )
                                                            : (screen.bookedPremuim.contains(index))
                                                            ? Image.asset(
                                                          'assets/cenima-app-user/images/armchair-2-jYh.png',
                                                          fit: BoxFit.cover,
                                                        )
                                                            : Image.asset(
                                                          'assets/cenima-app-user/images/armchair-2-wQ9.png',
                                                          fit: BoxFit.cover,
                                                        ),

                                                      ),
                                                      Center(
                                                          child: Text(((index % screen.noOfSeatsinStandardRow) + 1).toString()
                                                            , style: SafeGoogleFont (
                                                              'Lucida Bright',
                                                              height*0.017,
                                                              fontWeight: FontWeight.w600,
                                                              color: Colors.black54,
                                                            ),)),
                                                    ],
                                                  ),

                                                ),
                                              )
                                                  : Container(
                                                height: 28,
                                                width: 28,
                                                margin: EdgeInsets.all(2),
                                              );
                                            })),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: deviceSize.width * 0.03,
                                    height: deviceSize.height * 0.37,
                                    padding: EdgeInsets.only(top: deviceSize.height *0.032),
                                    child: ListView.builder(
                                        physics: NeverScrollableScrollPhysics(),
                                        itemCount: 8,
                                        itemBuilder: ((context, index) {
                                          return Container(
                                            height: 32,
                                            width: 28,
                                            child: Center(
                                              child: Text(
                                                rowNames[index+3],
                                                style: SafeGoogleFont (
                                                  'Lucida Bright',
                                                  height*0.017,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xff797979),
                                                ),
                                              ),
                                            ),
                                          );
                                        })),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      _getHeading("Standard"),
                                      Divider(
                                        height: deviceSize.height * 0.009,
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: deviceSize.width * 0.02,
                                            vertical: deviceSize.width * 0.02),
                                        height: deviceSize.height * 0.35,
                                        width: deviceSize.width * 1.55,
                                        child: GridView.extent(
                                            physics: NeverScrollableScrollPhysics(),
                                            mainAxisSpacing: 1,
                                            maxCrossAxisExtent: 32,
                                            children: List.generate(screen.noOfSeatsStandard, (index) {
                                              return (!screen.gapsStandard.contains(((index % screen.noOfSeatsinStandardRow) + 1)))
                                                  ? GestureDetector(
                                                onTap: () {
                                                  if(!screen.bookedStandard.contains(index)){
                                                    if (selectedSeatsSta.length == noOfSeatsChosenS) {
                                                      if(selectedSeatsSta.contains(index)) {
                                                        setState(() {
                                                          selectedSeatsSta.remove(index);
                                                        });
                                                      }
                                                      else if (context.mounted) {
                                                        Flushbar(
                                                          duration:
                                                          const Duration(seconds: 4),
                                                          flushbarPosition:
                                                          FlushbarPosition.TOP,
                                                          backgroundColor:
                                                          const Color(0xFFFF5c83),
                                                          message: "The number of seats have exceeded the number you selected!",
                                                        ).show(context);
                                                      }
                                                    }
                                                    else {
                                                      if(selectedSeatsSta.contains(index)) {
                                                        setState(() {
                                                          selectedSeatsSta.remove(index);
                                                        });                                            }
                                                      else {setState(() {
                                                        selectedSeatsSta.add(index);
                                                      });}
                                                    }
                                                  }
                                                },
                                                child: Container(
                                                  padding: const EdgeInsets.all(2),
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(5),
                                                    /*color: (selectedSeatsSta.contains(index))
                                                      ? mainColor
                                                      : (screen.bookedStandard.contains(index))
                                                        ? Colors.grey
                                                        : Colors.white,*/
/*
                                                  border:Border.all(
                                                    color: (screen.bookedStandard.contains(index))
                                                        ? Colors.grey
                                                        : Colors.green,
                                                    width: 2),
*/
                                                  ),
                                                  height: 28,
                                                  width: 28,
                                                  margin: const EdgeInsets.all(2),
                                                  child: Stack(
                                                    children: [
                                                      Center(
                                                        child: (selectedSeatsSta.contains(index))
                                                            ? Image.asset(
                                                          'assets/cenima-app-user/images/armchair-qQh.png',
                                                          fit: BoxFit.cover,
                                                        )
                                                            : (screen.bookedStandard.contains(index))
                                                            ? Image.asset(
                                                          'assets/cenima-app-user/images/armchair-HhF.png',
                                                          fit: BoxFit.cover,)
                                                            : Image.asset(
                                                          'assets/cenima-app-user/images/armchair-4jF.png',
                                                          fit: BoxFit.fill,
                                                        ),

                                                      ),
                                                      Center(
                                                          child: Text(((index % screen.noOfSeatsinStandardRow) + 1).toString()
                                                            , style: SafeGoogleFont (
                                                              'Lucida Bright',
                                                              height*0.017,
                                                              fontWeight: FontWeight.w600,
                                                              color: Colors.black54,
                                                            ),)),
                                                    ],
                                                  ),
                                                ),
                                              )
                                                  : Container(
                                                height: 28,
                                                width: 28,
                                                margin: const EdgeInsets.all(2),
                                              );
                                            })),
                                      ),
                                    ],
                                  ),
                                ],
                              ),

                              SizedBox(height: deviceSize.height * 0.02),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  _getExitHeading('1', deviceSize),
                                  _getScreenContainer(deviceSize),
                                  _getExitHeading('2', deviceSize),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      //lower bar and description
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          children: [
                            //prices
                            Container(
                              margin: EdgeInsets.fromLTRB(width*0.2, height*0.01, width*0.2, height*0.01),
                              width: width*0.7,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Standard:- 8 JOD',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Lucida Bright',
                                      height* 0.014,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xffff2153),
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    // prime12jodV8R (1:1690)
                                    'Prime :- 12 JOD',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Lucida Bright',
                                      height* 0.014,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xffff2153),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //row of available and selected chairs
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:  EdgeInsets.only(left: width*0.05),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // armchairnv9 (I77:4630;18:297)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0,10, 0*fem),
                                        width: 19*fem,
                                        height: 19*fem,
                                        child: Image.asset(
                                          'assets/cenima-app-user/images/armchair-4jF.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Container(
                                        // availablestandardxCM (1:1672)
                                        child: Text(
                                          'Available\nStandard',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Lucida Bright',
                                            11*ffem,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff777777),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // armchair2asw (I77:4628;1:47)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0, 10, 0*fem),
                                      width: 19*fem,
                                      height: 19*fem,
                                      child: Image.asset(
                                        'assets/cenima-app-user/images/armchair-2-wQ9.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      // availableprimeDAD (1:1674)
                                      child: Text(
                                        'Available\nPrime',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Lucida Bright',
                                          11*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2575*ffem/fem,
                                          color: Color(0xff777777),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Padding(
                                  padding:  EdgeInsets.only(right: width*0.05),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // armchairzCu (I77:4634;18:296)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5, 0),
                                        width: 19*fem,
                                        height: 19*fem,
                                        child: Image.asset(
                                          'assets/cenima-app-user/images/armchair-qQh.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Container(
                                        // armchair2wnM (I77:4632;18:175)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0, 10, 0*fem),
                                        width: 20*fem,
                                        height: 20*fem,
                                        child: Image.asset(
                                          'assets/cenima-app-user/images/armchair-2-Xos.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Selected',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont (
                                              'Lucida Bright',
                                              11*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2575*ffem/fem,
                                              color: Color(0xff777777),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height*0.02,
                            ),
                            // row of unava and wheelchair
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                //unavalable seats
                                Padding(
                                  padding: EdgeInsets.only(left: width*0.15),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        // armchairtus (I77:4637;18:287)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5, 0),
                                        width: 19*fem,
                                        height: 19*fem,
                                        child: Image.asset(
                                          'assets/cenima-app-user/images/armchair-HhF.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Container(
                                        // armchair2rkD (I77:4636;18:193)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10, 0),
                                        width: 19*fem,
                                        height: 19*fem,
                                        child: Image.asset(
                                          'assets/cenima-app-user/images/armchair-2-jYh.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Container(
                                        // unvailableHqX (1:1678)
                                        child: Text(
                                          'Unavailable',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Lucida Bright',
                                            11*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.2575*ffem/fem,
                                            color: Color(0xff777777),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                //wheelchar and text
                                Padding(
                                  padding:  EdgeInsets.only(right: width*0.15),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        // wheelchairVKK (1:1684)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10, 0*fem),
                                        width: 19.31*fem,
                                        height: 20*fem,
                                        child: Image.asset(
                                          'assets/cenima-app-user/images/wheelchair-t3F.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Container(
                                        // wheelchairJ1s (1:1685)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0),
                                        child: Text(
                                          'Wheelchair',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Lucida Bright',
                                            11*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.2575*ffem/fem,
                                            color: Color(0xff777777),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height*0.02,
                            ),
                            // selected seats
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // selectedseatsJAH (1:1688)
                                    margin: EdgeInsets.fromLTRB(width*0.05, 0*fem, 0, 0*fem),
                                    child: Text(
                                      'Selected Seats:-',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Lucida Bright',
                                        18*ffem,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff777777),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    // selectedseatsJAH (1:1688)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, width*0.1, 0*fem),
                                    width: width*0.45,
                                    child: Text(
                                      "${(_printSeatNo(selectedSeatsSta,screen.noOfSeatsinStandardRow, screen,skipRow: 3)).join(', ')} ${(selectedSeatsPre.isEmpty)?"":(selectedSeatsSta.isNotEmpty)?",":''}${(_printSeatNo(selectedSeatsPre, screen.noOfSeatsinPremuimRow,screen)).join(', ')} ",
                                      style: SafeGoogleFont (
                                        'Lucida Bright',
                                        18*ffem,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff777777),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: height*0.01,
                            ),

                            // bottom navigator
                            Container(
                              height: 82*fem,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff707070)),
                                color: Color(0xffffffff),
                              ),
                              child: Row(
                                children: [
                                  Spacer(),
                                  TextButton(
                                    onPressed: () {
                                      setState(() {
                                        ticket.seatNumbers== _printSeatNo(selectedSeatsSta,screen.noOfSeatsinStandardRow, screen,skipRow: 3)+_printSeatNo(selectedSeatsPre, screen.noOfSeatsinPremuimRow,screen);
                                      });
                                      if(selectedSeatsSta.length==noOfSeatsChosenS&& selectedSeatsPre.length==noOfSeatsChosenP){
                                        print("why?");
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  AddFoodToOrder(bookingDetails,ticket, selectedSeatsSta, selectedSeatsPre)),
                                        );
                                      }
                                      else
                                        {
                                          if (context.mounted) {
                                            Flushbar(
                                              duration:
                                              const Duration(seconds: 4),
                                              flushbarPosition:
                                              FlushbarPosition.TOP,
                                              backgroundColor:
                                              const Color(0xFFFF5c83),
                                              message: "You haven't chosen all of your seats",
                                            ).show(context);
                                          }
                                        }
                                    },
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Container(
                                      width: 140*fem,
                                      height: 52*fem,
                                      padding:  EdgeInsets.fromLTRB(0, 0, 10, 0*fem),
                                      child: Container(
                                        // frame4XMX (I79:14546;104:8327;78:6712;18:475)
                                        width: double.infinity,
                                        height: double.infinity,
                                        decoration: BoxDecoration (
                                          border: Border.all(color: Color(0xff707070)),
                                          color: Color(0xff9a2044),
                                          borderRadius: BorderRadius.circular(54*fem),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'CONTINUE',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont (
                                              'Lucida Bright',
                                              height*0.02,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xffffffff),
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
                Spacer(),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: TextButton(
                        onPressed: (){
                          setState(() {
                            openCheck=!openCheck;
                          });
                        },
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child:openCheck? Container(
                          padding: EdgeInsets.fromLTRB(42.5*fem, 0*fem, 0*fem, 0*fem),
                          width: 179*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(11*fem),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(top: height*0.015),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'TOTAL',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Lucida Bright',
                                        height*0.02,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff9e9e9e),
                                      ),
                                    ),
                                    Text(
                                      // jodaFw (I79:14546;104:8327;78:6709)
                                      '${bookingDetails.getTotal().toString()} JOD',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Lucida Bright',
                                        height*0.02,
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
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                width: 25*fem,
                                height: 25*fem,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(11*fem),
                                  child: Image.asset(
                                    'assets/cenima-app-user/images/arrow-down-sign-to-navigate-i9B.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ):
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                          printCheck(width,height),
                          Container(
                          padding: EdgeInsets.fromLTRB(42.5*fem, 0*fem, 0*fem, 0*fem),
                          width: 179*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(11*fem),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(top: height*0.015),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Lucida Bright',
                                        height*0.02,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff9e9e9e),
                                      ),
                                    ),
                                    Text(
                                      // jodaFw (I79:14546;104:8327;78:6709)
                                      '',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Lucida Bright',
                                        height*0.02,
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
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                width: 25*fem,
                                height: 25*fem,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(11*fem),
                                  child: Image.asset(
                                    'assets/cenima-app-user/images/arrow-down-sign-to-navigate-i9B.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )])
                    ),
                  ),
                ),
              ],
            ),
          ),

      ),
    );
  }

  seatSelectionWidget(BuildContext context){
    late Size deviceSize;

    List<String> rowNames = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I','J','K'];
    Set selectedSeatsPre= {};
    Set selectedSeatsSta= {};
    int noOfSeatsChosenP=2;
    int noOfSeatsChosenS=2;
    Screens screen= Screens('screen 1', [], [], 57, 19, 151, 19, {28, 47}, {1, 10, 19});
    deviceSize = MediaQuery.of(context).size;
    double height= deviceSize.height;
    double width=deviceSize.width;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: deviceSize.width * 0.02,
            vertical: deviceSize.width * 0.02),
        color: Colors.white,
        height: deviceSize.height * 0.635,
        width: deviceSize.width * 1.66,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                //first three row names
                Container(
                  width: deviceSize.width * 0.03,
                  height: deviceSize.height * 0.17,
                  padding: EdgeInsets.only(top: deviceSize.height *0.032),
                  child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 3,
                      itemBuilder: ((context, index) {
                        return Container(
                          height: 35,
                          width: 28,
                          child: Center(
                            child: Text(
                              //row names
                              rowNames[index],
                              style: SafeGoogleFont (
                                'Lucida Bright',
                                height*0.017,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff797979),
                              ),
                            ),
                          ),
                        );
                      })),
                ),
                //the first three seats rows grid builder
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _getHeading(
                      //ticket object + royale seats
                        "premium"),
                    Divider(
                      height: deviceSize.height * 0.009,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: deviceSize.width * 0.02,
                          vertical: deviceSize.width * 0.02),
                      height: deviceSize.height * 0.154,
                      width: deviceSize.width * 1.58,
                      child: GridView.extent(
                          physics:NeverScrollableScrollPhysics(),
                          mainAxisSpacing: 5,
                          maxCrossAxisExtent: 32,
                          children: List.generate(57, (index) {
                            return (!screen.gapsPremuim.contains(index))
                                ? GestureDetector(
                              onTap: () {
                                print(selectedSeatsPre.contains(index).toString());
                                print(index);
                                //royale booked list
                                if(!screen.bookedPremuim.contains(index)){
                                  // selected seats, is it equal to the number of seats chosen
                                  if (selectedSeatsPre.length == noOfSeatsChosenP) {
                                    if(selectedSeatsPre.contains(index)) {
                                      setState(() {
                                        selectedSeatsPre.remove(index);
                                      });                                              }
                                    else if (context.mounted) {
                                      Flushbar(
                                        duration:
                                        const Duration(seconds: 4),
                                        flushbarPosition:
                                        FlushbarPosition.TOP,
                                        backgroundColor:
                                        const Color(0xFFFF5c83),
                                        message: "The number of seats have exceeded the number you selected!",
                                      ).show(context);
                                    }
                                  }
                                  else {
                                    if(selectedSeatsPre.contains(index)) {
                                      setState(() {
                                        selectedSeatsPre.remove(index);
                                      });
                                    }
                                    else {
                                      setState(() {
                                        selectedSeatsPre.add(index);
                                      });
                                    }
                                  }
                                }
                              },
                              child: Container(
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(5),
                                  // props 2 is royale booking
                                  /*color: (selectedSeatsPre.contains(index))
                                                ? mainColor
                                                : (screen.bookedPremuim.contains(index))
                                                  ? Colors.grey
                                                  : Colors.white,*/
                                  /* border: Border.all(
                                                color: (screen.bookedPremuim.contains(index))
                                                ? Colors.grey
                                                : Colors.redAccent,
                                                width: 2),*/
                                ),
                                height: 28,
                                width: 28,
                                margin: EdgeInsets.all(2),
                                child: Stack(
                                  children: [
                                    Center(
                                      child: (selectedSeatsPre.contains(index))
                                          ? Image.asset(
                                        'assets/cenima-app-user/images/armchair-2-Xos.png',
                                        fit: BoxFit.cover,
                                      )
                                          : (screen.bookedPremuim.contains(index))
                                          ? Image.asset(
                                        'assets/cenima-app-user/images/armchair-2-jYh.png',
                                        fit: BoxFit.cover,
                                      )
                                          : Image.asset(
                                        'assets/cenima-app-user/images/armchair-2-wQ9.png',
                                        fit: BoxFit.cover,
                                      ),

                                    ),
                                    Center(
                                        child: Text(((index % screen.noOfSeatsinStandardRow) + 1).toString()
                                          , style: SafeGoogleFont (
                                            'Lucida Bright',
                                            height*0.017,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54,
                                          ),)),
                                  ],
                                ),

                              ),
                            )
                                : Container(
                              height: 28,
                              width: 28,
                              margin: EdgeInsets.all(2),
                            );
                          })),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: deviceSize.width * 0.03,
                  height: deviceSize.height * 0.37,
                  padding: EdgeInsets.only(top: deviceSize.height *0.032),
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 8,
                      itemBuilder: ((context, index) {
                        return Container(
                          height: 32,
                          width: 28,
                          child: Center(
                            child: Text(
                              rowNames[index+3],
                              style: SafeGoogleFont (
                                'Lucida Bright',
                                height*0.017,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff797979),
                              ),
                            ),
                          ),
                        );
                      })),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _getHeading("Standard"),
                    Divider(
                      height: deviceSize.height * 0.009,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: deviceSize.width * 0.02,
                          vertical: deviceSize.width * 0.02),
                      height: deviceSize.height * 0.35,
                      width: deviceSize.width * 1.55,
                      child: GridView.extent(
                          physics: NeverScrollableScrollPhysics(),
                          mainAxisSpacing: 1,
                          maxCrossAxisExtent: 32,
                          children: List.generate(screen.noOfSeatsStandard, (index) {
                            return (!screen.gapsStandard.contains(((index % screen.noOfSeatsinStandardRow) + 1)))
                                ? GestureDetector(
                              onTap: () {
                                if(!screen.bookedStandard.contains(index)){
                                  if (selectedSeatsSta.length == noOfSeatsChosenS) {
                                    if(selectedSeatsSta.contains(index)) {
                                      setState(() {
                                        selectedSeatsSta.remove(index);
                                      });
                                    }
                                    else{print("flashbar you exeeded the no of seats");}
                                  }
                                  else {
                                    if(selectedSeatsSta.contains(index)) {
                                      setState(() {
                                        selectedSeatsSta.remove(index);
                                      });                                            }
                                    else {setState(() {
                                      selectedSeatsSta.add(index);
                                    });}
                                  }
                                }
                              },
                              child: Container(
                                padding: const EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  /*color: (selectedSeatsSta.contains(index))
                                                ? mainColor
                                                : (screen.bookedStandard.contains(index))
                                                  ? Colors.grey
                                                  : Colors.white,*/
/*
                                            border:Border.all(
                                              color: (screen.bookedStandard.contains(index))
                                                  ? Colors.grey
                                                  : Colors.green,
                                              width: 2),
*/
                                ),
                                height: 28,
                                width: 28,
                                margin: const EdgeInsets.all(2),
                                child: Stack(
                                  children: [
                                    Center(
                                      child: (selectedSeatsSta.contains(index))
                                          ? Image.asset(
                                        'assets/cenima-app-user/images/armchair-qQh.png',
                                        fit: BoxFit.cover,
                                      )
                                          : (screen.bookedStandard.contains(index))
                                          ? Image.asset(
                                        'assets/cenima-app-user/images/armchair-HhF.png',
                                        fit: BoxFit.cover,)
                                          : Image.asset(
                                        'assets/cenima-app-user/images/armchair-4jF.png',
                                        fit: BoxFit.fill,
                                      ),

                                    ),
                                    Center(
                                        child: Text(((index % screen.noOfSeatsinStandardRow) + 1).toString()
                                          , style: SafeGoogleFont (
                                            'Lucida Bright',
                                            height*0.017,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54,
                                          ),)),
                                  ],
                                ),
                              ),
                            )
                                : Container(
                              height: 28,
                              width: 28,
                              margin: const EdgeInsets.all(2),
                            );
                          })),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: deviceSize.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                _getExitHeading('1', deviceSize),
                _getScreenContainer(deviceSize),
                _getExitHeading('2', deviceSize),
              ],
            ),
          ],
        ),
      ),
    );

}

  _getHeading(String heading) {
    return Text(heading.toUpperCase(),
        style: const TextStyle(
            color: Colors.grey, fontWeight: FontWeight.w800, fontSize: 12));
  }

  _getExitHeading(String gate, Size deviceSize) {

    return Container(
      padding: EdgeInsets.all(deviceSize.width * 0.005),
      height: deviceSize.height * 0.025,
      width: deviceSize.width * 0.12,
      decoration: const BoxDecoration(
        color: Colors.black54,
      ),
      child: Center(
          child: Text(
            "EXIT-$gate",
            style: const TextStyle(color: Colors.white),
          )),
    );
  }

  _getScreenContainer(Size deviceSize) {
    return Container(
      height: deviceSize.height * 0.02,
      width: deviceSize.width * 1.1,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(deviceSize.width * 0.2),
            topLeft: Radius.circular(deviceSize.width * 0.2),
          ),
          gradient: const LinearGradient(
            colors: [Colors.white, Colors.blueGrey],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0, 1],
          )),
    );
  }

  _printSeatNo(Set seatNo,int rowNoOfSeats,Screens screen, {int skipRow=0}){
    List<String> rowNames = _rowNameGenerator(screen.noOfSeatsPremuim, screen.noOfSeatsinPremuimRow, screen.noOfSeatsStandard, screen.noOfSeatsinPremuimRow);
    print(rowNames);

    List seatName=[];
    seatName.length=seatNo.length;
    List listSeatNumber=[];
    listSeatNumber.length=seatNo.length;

    int i=0;
    for(var val in seatNo){
      listSeatNumber[i]=val;
      i++;
    }

    if(listSeatNumber.isNotEmpty){
      for(int i=0; i<=listSeatNumber.length-1; i++){
        int row= (listSeatNumber[i]/rowNoOfSeats).toInt();
        int column=(listSeatNumber[i]%rowNoOfSeats)+1;
        seatName[i]="${rowNames[row+skipRow]}$column";
      }
    }
    return seatName;
  }

  _rowNameGenerator(int noOfSeatsPre, int noOfSeatsInaRowPre,int noOfSeatsSta, int noOfSeatsInaRowSta){
    int rowsPre= (noOfSeatsPre/noOfSeatsInaRowPre).toInt();
    print("${(noOfSeatsPre/noOfSeatsInaRowPre).toInt()}");
    if((noOfSeatsPre/noOfSeatsInaRowPre)-rowsPre> 0){
      rowsPre++;
    }
    int rowSta=(noOfSeatsSta/noOfSeatsInaRowSta).toInt();
    if(noOfSeatsSta/noOfSeatsInaRowSta-rowSta>0){
      rowSta++;
    }
    return List.generate(rowSta+rowsPre, (index) => String.fromCharCode(index+65));
  }

  printCheck(double width, double height){
    return SingleChildScrollView(
      child: StatefulBuilder(
          builder: (context, setState) {
            return Padding(
              padding: EdgeInsets.only(bottom: height*0.01),
              child: Container(
                constraints: BoxConstraints(
                    maxHeight: height*0.77
                ),
                width: width*0.6,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff7e132b), width: 1, ),
                  color: Color(0xffefefef),
                ),
                padding: const EdgeInsets.only(top: 19, bottom: 24, ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Text(
                          "Tickets",
                          style: checkStyle()
                      ),
                      //tickets
                      SizedBox(height: 9.89),
                      Row(
                        children:  [
                          Text(
                            "${bookingDetails.selectedStandard} Standard ticket ",
                            style: checkStyle1(),
                          ),
                          Spacer(),
                          Text(
                              "${bookingDetails.getPrice(bookingDetails.selectedStandard, 8).toString()} JOD",
                              style: checkStyle1()
                          ),
                        ],
                      ),
                      SizedBox(height: 9.89),
                      Row(
                        children: [
                          Text(
                              "${bookingDetails.selectedPrime} Prime ticket ",
                              style: checkStyle1()
                          ),
                          Spacer(),
                          Text(
                              "${bookingDetails.getPrice(bookingDetails.selectedPrime, 16).toString()} JOD",
                              style: checkStyle1()
                          ),
                        ],
                      ),
                      Divider(thickness: 1.5,),
                      //food
                      (bookingDetails.selectedFood!.isEmpty)?Container():Text(
                          "Food And Drinks",
                          style: checkStyle()
                      ),
                      Container(
                        height: height*0.077*(bookingDetails.selectedFood!.length),
                        child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: bookingDetails.selectedFood!.length,
                            itemBuilder:(context, index) {
                              return Column(
                                  children:[
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                              width: width*0.4,
                                              child: Text('${bookingDetails.selectedFoodNo![index]} ${(bookingDetails.selectedFoodSize![index]=='s'?'Small':bookingDetails.selectedFoodSize![index]=='m'?'Medium':bookingDetails.selectedFoodSize![index]=='l'?'Large':'')} ${(bookingDetails.selectedFoodFlavor![index].length==1)?bookingDetails.selectedFoodFlavor![index][0]+' ':''}${bookingDetails.selectedFood![index]}',

                                                  style: checkStyle1()
                                              ),
                                            ),
                                            (bookingDetails.selectedFoodFlavor![index].length==1)?Container():
                                            Container(
                                              width: width*0.4,
                                              child: Text(''
                                                  '* ${flavorPrinter(bookingDetails.selectedFoodFlavor![index], bookingDetails.selectedFoodFlavorNo![index])}',
                                                style: SafeGoogleFont (
                                                  'Segoe UI',
                                                  height *0.014,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Text(
                                            '${(bookingDetails.selectedFoodPrice![index]*bookingDetails.selectedFoodNo![index]).toString()} JOD',
                                            style: checkStyle1()
                                        ),
                                      ],
                                    ),
                                    bookingDetails.selectedFood!.length==index?Container():SizedBox(height: 9.89),
                                  ]);
                            }
                        ),
                      ),
                      Divider(thickness: 1.5,),
                      Row(
                        children: [
                          Text(
                              "TOTAL",
                              textAlign: TextAlign.center,
                              style: checkStyle1()
                          ),
                          Spacer(),
                          Text(
                              '${bookingDetails.getTotal().toString()} JOD',
                              style: checkStyle1()
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
      ),
    );
  }

  flavorPrinter(List flavor, List noOfFlavor){
    String Allflavors='';
    for(int i=0; i<flavor.length;i++){
      Allflavors+='${noOfFlavor[i]} ${flavor[i]}${(i==flavor.length-1)?'':','}';
    }
    return Allflavors;

  }

}


