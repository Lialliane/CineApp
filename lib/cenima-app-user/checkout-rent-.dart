// import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:myapp/cenima-app-user/rent-movie.dart';
import 'package:myapp/utils.dart';
import '../services/Movie service.dart';
import '../services/Showing now.dart' as global;
import 'rent-details.dart' as glob;

class CheckOutRent extends StatefulWidget {
  const CheckOutRent({super.key});

  @override
  State<CheckOutRent> createState() => _CheckOutRent();
}

class _CheckOutRent extends State<CheckOutRent> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    MovieService ser = MovieService();
    Size deviceSize = MediaQuery.of(context).size;
    double width = deviceSize.width;
    double height = deviceSize.height;
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
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
        actions: [
          Padding(
              padding: EdgeInsets.only(top: height * 0.017),
              child: IconButton(
                icon: const Icon(
                  Icons.close,
                  size: 26,
                  color: Color(0xFF000000),
                ),
                onPressed: () {
                  setState(() {
                    glob.globalData.rentPeriod = 0;
                    glob.globalData.total = 0;
                  });
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const RentMovie()),
                  );
                },
              )),
        ],
        bottom: PreferredSize(
            preferredSize: Size.zero,
            child: Padding(
              padding: EdgeInsets.only(left: width * 0.19, bottom: 3),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(3),
                      child: Text(
                        'Renting period is: ${glob.globalData.rentPeriod}',
                        style: SafeGoogleFont(
                          'Lucida Bright',
                          height * 0.015,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff797979),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(3),
                      width: width * 0.5,
                      child: Text(
                        'Total: ${glob.globalData.total} JOD',
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
        title: Text(
          global.globalData.movieTitleRent,
          style: SafeGoogleFont(
            'Lucida Bright',
            height * 0.03,
            fontWeight: FontWeight.w600,
            color: const Color(0xff797979),
          ),
        ),
        shape: const ContinuousRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xff707070))),
        backgroundColor: const Color(0xffffffff),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //details header
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 15 * fem),
                    child: Text(
                      'Rent Movie',
                      style: SafeGoogleFont(
                        'Lucida Bright',
                        width * 0.05,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff7e132b),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.7,
                    child:
                        //Rented movie name and period
                        Container(
                      margin: const EdgeInsets.all(10),
                      constraints: const BoxConstraints(),
                      child: Text(
                        '${global.globalData.movieTitleRent} \n(${glob.globalData.rentPeriod} Weeks)',
                        style: SafeGoogleFont(
                          'Segoe UI',
                          width * 0.045,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ),
                    //total price
                  ),
                  const Divider(),
                  //total price
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 15 * fem),
                    child: Text(
                      'Total:',
                      style: SafeGoogleFont(
                        'Lucida Bright',
                        width * 0.05,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff7e132b),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.7,
                    child:
                        //Rented movie name and period
                        Container(
                      margin: const EdgeInsets.all(10),
                      constraints: const BoxConstraints(),
                      child: Text(
                        '${glob.globalData.total} JOD',
                        style: SafeGoogleFont(
                          'Segoe UI',
                          width * 0.045,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ),
                    //total price
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Container(
                // checkoutrentszM (113:16423)
                width: double.infinity,
                height: 852 * fem,
                decoration: const BoxDecoration(
                  color: Color(0xfff1f1f1),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 127 * fem,
                      top: 761 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 137 * fem,
                          height: 17 * fem,
                          child: Text(
                            'what is Renting Exactly? ',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Lucida Bright',
                              13 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2575 * ffem / fem,
                              color: const Color(0xffff2153),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // mainbutton5ky (113:16425)
                      left: 79 * fem,
                      top: 785 * fem,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: SizedBox(
                          width: 236 * fem,
                          height: 47.13 * fem,
                          child: Container(
                            // frame42Zj (I113:16425;18:475)
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xff707070)),
                              color: const Color(0xff9a2044),
                              borderRadius: BorderRadius.circular(54 * fem),
                            ),
                            child: Center(
                              child: Text(
                                'CONFIRM AND PAY',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Lucida Bright',
                                  19.8325920105 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2575 * ffem / fem,
                                  color: const Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle40Liq (113:16426)
                      left: 0 * fem,
                      top: 44 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 393 * fem,
                          height: 170 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xff707070)),
                              color: const Color(0xffffffff),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x3f414141),
                                  offset: Offset(0 * fem, 4 * fem),
                                  blurRadius: 2 * fem,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // totalRth (113:16428)
                      left: 206 * fem,
                      top: 424 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 50 * fem,
                          height: 23 * fem,
                          child: Text(
                            'Total:-',
                            style: SafeGoogleFont(
                              'Lucida Bright',
                              18 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2575 * ffem / fem,
                              color: const Color(0xff7e132b),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // group53hx1 (113:16439)
                      left: 1 * fem,
                      top: 281 * fem,
                      child: SizedBox(
                        width: 393 * fem,
                        height: 121.5 * fem,
                        child: Container(
                          // autogrouphb4hwbT (W2aE3winAJpMUddyfAHB4h)
                          padding: EdgeInsets.fromLTRB(
                              15.5 * fem, 0 * fem, 27 * fem, 46.5 * fem),
                          width: double.infinity,
                          height: 120.5 * fem,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //details header
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 15 * fem),
                                child: Text(
                                  'Rent Movie',
                                  style: SafeGoogleFont(
                                    'Lucida Bright',
                                    width * 0.05,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xff7e132b),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: width * 0.7,
                                child:
                                    //Rented movie name and period
                                    Container(
                                  margin: const EdgeInsets.all(10),
                                  constraints: const BoxConstraints(),
                                  child: Text(
                                    '${global.globalData.movieTitleRent} \n(${glob.globalData.rentPeriod} Weeks)',
                                    style: SafeGoogleFont(
                                      'Segoe UI',
                                      width * 0.03,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.italic,
                                      color: const Color(0xff000000),
                                    ),
                                  ),
                                ),
                                //total price
                              ),
                              const Divider(),
                              //total price
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 15 * fem),
                                child: Text(
                                  'Total:',
                                  style: SafeGoogleFont(
                                    'Lucida Bright',
                                    width * 0.05,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xff7e132b),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: width * 0.7,
                                child:
                                    //Rented movie name and period
                                    Container(
                                  margin: const EdgeInsets.all(10),
                                  constraints: const BoxConstraints(),
                                  child: Text(
                                    '${glob.globalData.total} JOD',
                                    style: SafeGoogleFont(
                                      'Segoe UI',
                                      width * 0.03,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.italic,
                                      color: const Color(0xff000000),
                                    ),
                                  ),
                                ),
                                //total price
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 291 * fem,
                      top: 424 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 65 * fem,
                          height: 21 * fem,
                          child: Text(
                            '04.50 JOD',
                            style: SafeGoogleFont(
                              'Segoe UI',
                              16 * ffem,
                              fontWeight: FontWeight.w300,
                              height: 1.2575 * ffem / fem,
                              fontStyle: FontStyle.italic,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // line3XUR (113:16459)
                      left: 0 * fem,
                      top: 512 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 393 * fem,
                          height: 1 * fem,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color(0xff707070),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // paymentKQH (113:16460)
                      left: 19 * fem,
                      top: 524.5 * fem,
                      child: SizedBox(
                        width: 365 * fem,
                        height: 137 * fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // paymentmethodURb (113:16469)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 16 * fem),
                              child: Text(
                                'Payment Method',
                                style: SafeGoogleFont(
                                  'Lucida Bright',
                                  18 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2575 * ffem / fem,
                                  color: const Color(0xff7e132b),
                                ),
                              ),
                            ),
                            SizedBox(
                              // autogroupgqtvrh3 (W2aFHaL6CwuRjgaZb6gQtV)
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // autogroupiums8Pf (W2aFptmEuVE6pv1EhgiUms)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 2.5 * fem, 8 * fem, 0 * fem),
                                    width: 31 * fem,
                                    height: 92.59 * fem,
                                    child: Image.asset(
                                      'assets/cenima-app-user/images/auto-group-iums.png',
                                      width: 31 * fem,
                                      height: 92.59 * fem,
                                    ),
                                  ),
                                  Container(
                                    // autogroupvng5FMo (W2aGJJ9FGTdh2k15RhVng5)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 3 * fem, 8 * fem, 0 * fem),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // creditcard1HpH (113:16472)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 21 * fem),
                                          width: 20 * fem,
                                          height: 20 * fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/credit-card-1-fCh.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Container(
                                          // money1grR (113:16471)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 14 * fem),
                                          width: 20 * fem,
                                          height: 20 * fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/money-1-9U9.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        SizedBox(
                                          // paypal1rPX (113:16470)
                                          width: 20 * fem,
                                          height: 20 * fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/paypal-1-BMo.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // autogroupsx1phuw (W2aGjhaapRGtzfK5zesX1P)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 54 * fem, 0 * fem),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // creditcard9mw (113:16464)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 18 * fem),
                                          child: Text(
                                            'Credit card',
                                            style: SafeGoogleFont(
                                              'Segoe UI',
                                              16 * ffem,
                                              fontWeight: FontWeight.w300,
                                              height: 1.2575 * ffem / fem,
                                              fontStyle: FontStyle.italic,
                                              color: const Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // cashonarrivalVjK (113:16465)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 15 * fem),
                                          child: RichText(
                                            text: TextSpan(
                                              style: SafeGoogleFont(
                                                'Segoe UI',
                                                16 * ffem,
                                                fontWeight: FontWeight.w300,
                                                height: 1.2575 * ffem / fem,
                                                fontStyle: FontStyle.italic,
                                                color: const Color(0xff000000),
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: 'cash on arriva',
                                                  style: SafeGoogleFont(
                                                    'Segoe UI',
                                                    16 * ffem,
                                                    fontWeight: FontWeight.w300,
                                                    height: 1.2575 * ffem / fem,
                                                    fontStyle: FontStyle.italic,
                                                    color:
                                                        const Color(0xff000000),
                                                  ),
                                                ),
                                                const TextSpan(
                                                  text: 'l',
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Text(
                                          // paypalZed (113:16466)
                                          'Paypal',
                                          style: SafeGoogleFont(
                                            'Segoe UI',
                                            16 * ffem,
                                            fontWeight: FontWeight.w300,
                                            height: 1.2575 * ffem / fem,
                                            fontStyle: FontStyle.italic,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // group84QfF (114:12490)
                                    width: 150 * fem,
                                    height: 21 * fem,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: const Color(0xff707070)),
                                      color: const Color(0xffffffff),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // choosecard2gd (113:16468)
                                          left: 12 * fem,
                                          top: 0 * fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 81 * fem,
                                              height: 21 * fem,
                                              child: Text(
                                                'Choose card',
                                                style: SafeGoogleFont(
                                                  'Segoe UI',
                                                  16 * ffem,
                                                  fontWeight: FontWeight.w300,
                                                  height: 1.2575 * ffem / fem,
                                                  fontStyle: FontStyle.italic,
                                                  color:
                                                      const Color(0xff000000),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // arrowdownsigntonavigateX17 (113:16474)
                                          left: 126 * fem,
                                          top: 3 * fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 15 * fem,
                                              height: 15 * fem,
                                              child: Image.asset(
                                                'assets/cenima-app-user/images/arrow-down-sign-to-navigate-U1K.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // group84JRB (114:12520)
                                          left: 0 * fem,
                                          top: 0.5 * fem,
                                          child: Container(
                                            padding: EdgeInsets.fromLTRB(
                                                2 * fem,
                                                0 * fem,
                                                9 * fem,
                                                0 * fem),
                                            width: 150 * fem,
                                            height: 21 * fem,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color:
                                                      const Color(0xff707070)),
                                              color: const Color(0xffffffff),
                                            ),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // choosecardP5F (I114:12520;114:12552)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      7 * fem,
                                                      0 * fem),
                                                  child: Text(
                                                    '**** **** **** 1222',
                                                    style: SafeGoogleFont(
                                                      'Segoe UI',
                                                      16 * ffem,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      height:
                                                          1.2575 * ffem / fem,
                                                      fontStyle:
                                                          FontStyle.italic,
                                                      color: const Color(
                                                          0xff000000),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  // arrowdownsigntonavigatemLh (I114:12520;114:12554)
                                                  width: 15 * fem,
                                                  height: 15 * fem,
                                                  child: Image.asset(
                                                    'assets/cenima-app-user/images/arrow-down-sign-to-navigate-Uiy.png',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ],
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
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // floatingActionButtonLocation: ,
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          children: [
            Center(
              child: Text(
                'what is Renting Exactly? ',
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'Lucida Bright',
                  13 * ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.2575 * ffem / fem,
                  color: const Color(0xffff2153),
                ),
              ),
            ),
            const Divider(),
            Container(
              // padding: EdgeInsets.only(right: width * 0.09),
              width: width * 0.4,
              height: height * 0.05,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xff707070)),
                    color: const Color(0xff9a2044),
                    borderRadius: BorderRadius.circular(54 * fem),
                  ),
                  child: Center(
                    child: Text(
                      'Confirm and Pay',
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
    );
  }
}
