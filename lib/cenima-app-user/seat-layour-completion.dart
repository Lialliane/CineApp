import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  const Scene({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // seatlayourcompletionmVF (120:14133)
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xfff1f1f1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              // iosstatusbarwithnotchsfUY5 (120:14386)
              width: double.infinity,
              height: 44*fem,
              decoration: const BoxDecoration (
                color: Color(0xffffffff),
              ),
              child: Stack(
                children: [
                  Positioned(
                    // notchgu3 (I120:14386;9:41)
                    left: 87*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 219*fem,
                        height: 30*fem,
                        child: Image.asset(
                          'assets/cenima-app-user/images/notch-b89.png',
                          width: 219*fem,
                          height: 30*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // timeezH (I120:14386;9:73)
                    left: 32*fem,
                    top: 13*fem,
                    child: Align(
                      child: SizedBox(
                        width: 26*fem,
                        height: 21*fem,
                        child: Text(
                          '9:41',
                          style: SafeGoogleFont (
                            'SF Pro Text',
                            15*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.4*ffem/fem,
                            letterSpacing: -0.3199999928*fem,
                            color: const Color(0xff020202),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // iosiconstatusbarVtR (I120:14386;9:57)
                    left: 0*fem,
                    top: 5*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20.04*fem, 0*fem, 0*fem, 0*fem),
                      width: 1929*fem,
                      height: 26*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // autogroupgez9ppD (W2YmH3eERXGYKHr6q2gez9)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1796*fem, 10*fem),
                            width: 48.96*fem,
                            height: 16*fem,
                          ),
                          Container(
                            // iosiconsmallmobilesignalTsB (I120:14386;9:57;9:6)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.35*fem, 2.33*fem),
                            width: 17*fem,
                            height: 10.67*fem,
                            child: Image.asset(
                              'assets/cenima-app-user/images/ios-icon-small-mobile-signal-5L1.png',
                              width: 17*fem,
                              height: 10.67*fem,
                            ),
                          ),
                          Container(
                            // iosiconsmallwifiPeM (I120:14386;9:57;9:12)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.38*fem, 2.03*fem),
                            width: 15.27*fem,
                            height: 10.97*fem,
                            child: Image.asset(
                              'assets/cenima-app-user/images/ios-icon-small-wifi-z3f.png',
                              width: 15.27*fem,
                              height: 10.97*fem,
                            ),
                          ),
                          Container(
                            // iosiconsmallbatteryy6m (I120:14386;9:57;9:17)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.67*fem),
                            width: 24.33*fem,
                            height: 11.33*fem,
                            child: Image.asset(
                              'assets/cenima-app-user/images/ios-icon-small-battery-rw7.png',
                              width: 24.33*fem,
                              height: 11.33*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // topHFs (120:14137)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6*fem),
              padding: EdgeInsets.fromLTRB(17*fem, 22*fem, 156*fem, 10*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                border: Border.all(color: const Color(0xff707070)),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x3f4e4e4e),
                    offset: Offset(0*fem, 4*fem),
                    blurRadius: 2*fem,
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // arrowdownsigntonavigatey2D (I120:14384;1:127)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 109*fem, 0*fem),
                    width: 30*fem,
                    height: 28*fem,
                    child: Image.asset(
                      'assets/cenima-app-user/images/arrow-down-sign-to-navigate-4VT.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    // pleasepickaseata21 (120:14139)
                    'Screen 1',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Lucida Bright',
                      22*ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xff4b4a4a),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              // autogroupyvqmjZ7 (W2Yb7kjoivbqYNzJNRYvQm)
              width: 394*fem,
              height: 744*fem,
              child: Stack(
                children: [
                  Positioned(
                    // rectanglepickkUD (120:14134)
                    left: 1*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 391*fem,
                        height: 742*fem,
                        child: Container(
                          decoration: const BoxDecoration (
                            color: Color(0xfff1f1f1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle73LhK (120:14628)
                    left: 0*fem,
                    top: 143*fem,
                    child: Align(
                      child: SizedBox(
                        width: 390*fem,
                        height: 299*fem,
                        child: Container(
                          decoration: const BoxDecoration (
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // screenwhyHky (120:14269)
                    left: 8*fem,
                    top: 94.5*fem,
                    child: SizedBox(
                      width: 381*fem,
                      height: 27.5*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // screenJRB (120:14270)
                            left: 171*fem,
                            top: 6.5*fem,
                            child: Align(
                              child: SizedBox(
                                width: 36*fem,
                                height: 16*fem,
                                child: Text(
                                  'Screen',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Lucida Bright',
                                    12*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2575*ffem/fem,
                                    color: const Color(0xff777777),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // vector5CQ5 (120:14271)
                            left: 0*fem,
                            top: 0*fem,
                            child: Align(
                              child: SizedBox(
                                width: 381*fem,
                                height: 27.5*fem,
                                child: Image.asset(
                                  'assets/cenima-app-user/images/vector-5-zbX.png',
                                  width: 381*fem,
                                  height: 27.5*fem,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // totalseatsavR (120:14382)
                    left: 0*fem,
                    top: 662*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(96*fem, 23*fem, 96*fem, 22*fem),
                      width: 393*fem,
                      height: 82*fem,
                      decoration: BoxDecoration (
                        border: Border.all(color: const Color(0xff707070)),
                        color: const Color(0xffffffff),
                      ),
                      child: TextButton(
                        // mainbutton61b (120:14692)
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: SizedBox(
                          width: double.infinity,
                          height: double.infinity,
                          child: Container(
                            // frame4A1T (I120:14692;18:475)
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              border: Border.all(color: const Color(0xff707070)),
                              color: const Color(0xffff2153),
                              borderRadius: BorderRadius.circular(54*fem),
                            ),
                            child: Center(
                              child: Text(
                                'SAVE',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Lucida Bright',
                                  19.8325920105*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2575*ffem/fem,
                                  color: const Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // clickonthegridwiththecolorsele (131:14336)
                    left: 38*fem,
                    top: 13*fem,
                    child: Align(
                      child: SizedBox(
                        width: 327*fem,
                        height: 57*fem,
                        child: Text(
                          'Click on the grid with the color selected to mark seat places, if you wanna add wheelchair places check (wheelchair) option bellow',
                          style: SafeGoogleFont (
                            'Lucida Bright',
                            15*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2575*ffem/fem,
                            color: const Color(0xff8a8a8a),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // component62t7o (143:21557)
                    left: 8*fem,
                    top: 153*fem,
                    child: SizedBox(
                      width: 377*fem,
                      height: 498*fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupwjs5h5F (W2Ycinu7hVoMHXsEZCWjS5)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 143*fem),
                            width: double.infinity,
                            height: 334*fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // lettersEzH (I143:21557;143:18719)
                                  left: 3*fem,
                                  top: 0*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 24*fem,
                                      height: 299*fem,
                                      child: Image.asset(
                                        'assets/cenima-app-user/images/letters-ddf.png',
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // rectangle75qUH (I143:21557;143:18720)
                                  left: 53*fem,
                                  top: 134*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 296*fem,
                                      height: 91*fem,
                                      child: Container(
                                        decoration: const BoxDecoration (
                                          color: Color(0xffff7474),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // rectangle80AQ5 (I143:21557;143:18721)
                                  left: 27*fem,
                                  top: 264*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 26*fem,
                                      height: 34*fem,
                                      child: Container(
                                        decoration: const BoxDecoration (
                                          color: Color(0xff880000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // rectangle81xaq (I143:21557;143:18722)
                                  left: 349*fem,
                                  top: 264*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 28*fem,
                                      height: 34*fem,
                                      child: Container(
                                        decoration: const BoxDecoration (
                                          color: Color(0xff880000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // vectorWkm (I143:21557;143:18723)
                                  left: 79*fem,
                                  top: 101*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 244*fem,
                                      height: 33*fem,
                                      child: Image.asset(
                                        'assets/cenima-app-user/images/vector.png',
                                        width: 244*fem,
                                        height: 33*fem,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // rectangle74h4Z (I143:21557;143:18724)
                                  left: 27*fem,
                                  top: 20*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 349*fem,
                                      height: 56*fem,
                                      child: Container(
                                        decoration: const BoxDecoration (
                                          color: Color(0xffff7474),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // rectangle79FEV (I143:21557;143:18725)
                                  left: 53*fem,
                                  top: 225*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 296*fem,
                                      height: 73*fem,
                                      child: Container(
                                        decoration: const BoxDecoration (
                                          color: Color(0xff880000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // numbsrEH (I143:21557;143:18726)
                                  left: 32*fem,
                                  top: 0*fem,
                                  child: SizedBox(
                                    width: 337*fem,
                                    height: 16*fem,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // CxM (I143:21557;143:18727)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                                          child: Text(
                                            '1',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont (
                                              'Lucida Bright',
                                              12*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2575*ffem/fem,
                                              letterSpacing: 5.4*fem,
                                              color: const Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // Lx5 (I143:21557;143:18728)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                                          child: Text(
                                            '2',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont (
                                              'Lucida Bright',
                                              12*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2575*ffem/fem,
                                              letterSpacing: 5.4*fem,
                                              color: const Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // xCm (I143:21557;143:18729)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                                          child: Text(
                                            '3',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont (
                                              'Lucida Bright',
                                              12*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2575*ffem/fem,
                                              letterSpacing: 5.4*fem,
                                              color: const Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // uXK (I143:21557;143:18730)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                                          child: Text(
                                            '4',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont (
                                              'Lucida Bright',
                                              12*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2575*ffem/fem,
                                              letterSpacing: 5.4*fem,
                                              color: const Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // KL9 (I143:21557;143:18731)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                                          child: Text(
                                            '5',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont (
                                              'Lucida Bright',
                                              12*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2575*ffem/fem,
                                              letterSpacing: 5.4*fem,
                                              color: const Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // sFB (I143:21557;143:18732)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                                          child: Text(
                                            '6',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont (
                                              'Lucida Bright',
                                              12*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2575*ffem/fem,
                                              letterSpacing: 5.4*fem,
                                              color: const Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // Tz5 (I143:21557;143:18733)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                                          child: Text(
                                            '7',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont (
                                              'Lucida Bright',
                                              12*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2575*ffem/fem,
                                              letterSpacing: 5.4*fem,
                                              color: const Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // t3o (I143:21557;143:18734)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                                          child: Text(
                                            '8',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont (
                                              'Lucida Bright',
                                              12*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2575*ffem/fem,
                                              letterSpacing: 5.4*fem,
                                              color: const Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // F2m (I143:21557;143:18735)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                                          child: Text(
                                            '9',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont (
                                              'Lucida Bright',
                                              12*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2575*ffem/fem,
                                              letterSpacing: 5.4*fem,
                                              color: const Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // eah (I143:21557;143:18736)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14*fem, 0*fem),
                                          child: Text(
                                            '10',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont (
                                              'Lucida Bright',
                                              12*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2575*ffem/fem,
                                              color: const Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // 2LM (I143:21557;143:18737)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14*fem, 0*fem),
                                          child: Text(
                                            '11',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont (
                                              'Lucida Bright',
                                              12*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2575*ffem/fem,
                                              color: const Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // dqw (I143:21557;143:18738)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14*fem, 0*fem),
                                          child: Text(
                                            '12',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont (
                                              'Lucida Bright',
                                              12*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2575*ffem/fem,
                                              color: const Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          // f1w (I143:21557;143:18739)
                                          '13',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Lucida Bright',
                                            12*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.2575*ffem/fem,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // seatsgrids81 (I143:21557;143:18740)
                                  left: 0*fem,
                                  top: 1*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 376.5*fem,
                                      height: 298*fem,
                                      child: Image.asset(
                                        'assets/cenima-app-user/images/seats-grid.png',
                                        width: 376.5*fem,
                                        height: 298*fem,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // group104qU9 (I143:21557;143:18741)
                                  left: 121*fem,
                                  top: 273*fem,
                                  child: SizedBox(
                                    width: 150*fem,
                                    height: 61*fem,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // item31G9 (I143:21557;143:18750)
                                          left: 0*fem,
                                          top: 20*fem,
                                          child: Opacity(
                                            opacity: 0,
                                            child: Container(
                                              padding: EdgeInsets.fromLTRB(12*fem, 0*fem, 5*fem, 0*fem),
                                              width: 150*fem,
                                              height: 21*fem,
                                              decoration: BoxDecoration (
                                                border: Border.all(color: const Color(0xff707070)),
                                                color: const Color(0xffffffff),
                                              ),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // choosecardhHP (I143:21557;143:18752)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 77*fem, 0*fem),
                                                    child: Text(
                                                      'prime',
                                                      style: SafeGoogleFont (
                                                        'Segoe UI',
                                                        16*ffem,
                                                        fontWeight: FontWeight.w300,
                                                        height: 1.2575*ffem/fem,
                                                        fontStyle: FontStyle.italic,
                                                        color: const Color(0xff000000),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    // rectangle83Gjo (I143:21557;143:18753)
                                                    width: 17*fem,
                                                    height: 17*fem,
                                                    decoration: BoxDecoration (
                                                      border: Border.all(color: const Color(0xff000000)),
                                                      color: const Color(0xff880000),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // itemHQ1 (I143:21557;143:18744)
                                          left: 0*fem,
                                          top: 0*fem,
                                          child: Opacity(
                                            opacity: 0,
                                            child: Container(
                                              padding: EdgeInsets.fromLTRB(12*fem, 0*fem, 5*fem, 0*fem),
                                              width: 150*fem,
                                              height: 21*fem,
                                              decoration: BoxDecoration (
                                                border: Border.all(color: const Color(0xff707070)),
                                                color: const Color(0xffffffff),
                                              ),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // choosecardzSq (I143:21557;143:18747)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 58*fem, 0*fem),
                                                    child: Text(
                                                      'standard',
                                                      style: SafeGoogleFont (
                                                        'Segoe UI',
                                                        16*ffem,
                                                        fontWeight: FontWeight.w300,
                                                        height: 1.2575*ffem/fem,
                                                        fontStyle: FontStyle.italic,
                                                        color: const Color(0xff000000),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    // rectangle84JM3 (I143:21557;143:18746)
                                                    width: 17*fem,
                                                    height: 17*fem,
                                                    decoration: BoxDecoration (
                                                      border: Border.all(color: const Color(0xff000000)),
                                                      color: const Color(0xffff7474),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // item2Z25 (I143:21557;143:18754)
                                          left: 0*fem,
                                          top: 40*fem,
                                          child: Opacity(
                                            opacity: 0,
                                            child: Container(
                                              width: 150*fem,
                                              height: 21*fem,
                                              decoration: BoxDecoration (
                                                border: Border.all(color: const Color(0xff707070)),
                                                color: const Color(0xffffffff),
                                              ),
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    // choosecard3bT (I143:21557;143:18756)
                                                    left: 12*fem,
                                                    top: 0*fem,
                                                    child: Align(
                                                      child: SizedBox(
                                                        width: 34*fem,
                                                        height: 21*fem,
                                                        child: Text(
                                                          'none',
                                                          style: SafeGoogleFont (
                                                            'Segoe UI',
                                                            16*ffem,
                                                            fontWeight: FontWeight.w300,
                                                            height: 1.2575*ffem/fem,
                                                            fontStyle: FontStyle.italic,
                                                            color: const Color(0xff000000),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    // rectangle86nBf (I143:21557;143:18757)
                                                    left: 129*fem,
                                                    top: 2*fem,
                                                    child: Align(
                                                      child: SizedBox(
                                                        width: 17*fem,
                                                        height: 17*fem,
                                                        child: Container(
                                                          decoration: BoxDecoration (
                                                            border: Border.all(color: const Color(0xff000000)),
                                                            color: const Color(0xffffffff),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    // rectangle17K57 (I143:21557;143:18742)
                                                    left: 0*fem,
                                                    top: 0*fem,
                                                    child: Align(
                                                      child: SizedBox(
                                                        width: 150*fem,
                                                        height: 21*fem,
                                                        child: TextButton(
                                                          onPressed: () {},
                                                          style: TextButton.styleFrom (
                                                            padding: EdgeInsets.zero,
                                                          ),
                                                          child: Container(
                                                            decoration: BoxDecoration (
                                                              border: Border.all(color: const Color(0xff707070)),
                                                              color: const Color(0xffffffff),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    // arrowdownsigntonavigateC2R (I143:21557;143:18749)
                                                    left: 126*fem,
                                                    top: 3*fem,
                                                    child: Align(
                                                      child: SizedBox(
                                                        width: 15*fem,
                                                        height: 15*fem,
                                                        child: Image.asset(
                                                          'assets/cenima-app-user/images/arrow-down-sign-to-navigate-2L5.png',
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    // choosecardBQ9 (I143:21557;143:18743)
                                                    left: 12*fem,
                                                    top: 0*fem,
                                                    child: Align(
                                                      child: SizedBox(
                                                        width: 59*fem,
                                                        height: 21*fem,
                                                        child: Text(
                                                          'seat type',
                                                          style: SafeGoogleFont (
                                                            'Segoe UI',
                                                            16*ffem,
                                                            fontWeight: FontWeight.w300,
                                                            height: 1.2575*ffem/fem,
                                                            fontStyle: FontStyle.italic,
                                                            color: const Color(0xff000000),
                                                          ),
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
                                  ),
                                ),
                                Positioned(
                                  // GK7 (I143:21557;143:19638)
                                  left: 161*fem,
                                  top: 105*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 25*fem,
                                      height: 25*fem,
                                      child: Image.asset(
                                        'assets/cenima-app-user/images/-XAM.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // URB (I143:21557;143:19639)
                                  left: 189*fem,
                                  top: 105*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 25*fem,
                                      height: 25*fem,
                                      child: Image.asset(
                                        'assets/cenima-app-user/images/-So7.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // 6hT (I143:21557;143:19640)
                                  left: 216*fem,
                                  top: 105*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 25*fem,
                                      height: 25*fem,
                                      child: Image.asset(
                                        'assets/cenima-app-user/images/-9yX.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroupfjuvsrd (W2Yf3JsJzbNpWHVeUwfJUV)
                            margin: EdgeInsets.fromLTRB(103*fem, 0*fem, 171*fem, 0*fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // checkboxtmj (I143:21557;143:19759)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                  width: 18*fem,
                                  height: 18*fem,
                                  decoration: BoxDecoration (
                                    border: Border.all(color: const Color(0xff707070)),
                                    borderRadius: BorderRadius.circular(2*fem),
                                  ),
                                ),
                                Text(
                                  // wheelchairugq (I143:21557;143:18759)
                                  'Wheelchair',
                                  style: SafeGoogleFont (
                                    'Segoe UI',
                                    16*ffem,
                                    fontWeight: FontWeight.w300,
                                    height: 1.2575*ffem/fem,
                                    fontStyle: FontStyle.italic,
                                    color: const Color(0xff000000),
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
          ],
        ),
      ),
          );
  }
}