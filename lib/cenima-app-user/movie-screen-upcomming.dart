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
        // moviescreenupcommingS5T (113:13746)
        width: double.infinity,
        height: 852*fem,
        decoration: const BoxDecoration (
          color: Color(0xfff1f1f1),
        ),
        child: Stack(
          children: [
            Positioned(
              // rectangle43YGu (113:13747)
              left: 0*fem,
              top: 104*fem,
              child: Align(
                child: SizedBox(
                  width: 391*fem,
                  height: 748*fem,
                  child: Container(
                    decoration: const BoxDecoration (
                      color: Color(0xfff1f1f1),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle12voF (113:13756)
              left: 0*fem,
              top: 35*fem,
              child: Align(
                child: SizedBox(
                  width: 393*fem,
                  height: 68*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      border: Border.all(color: const Color(0xff707070)),
                      color: const Color(0xff2f2f2f),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // Sf7 (113:13757)
              left: 0*fem,
              top: 44*fem,
              child: Align(
                child: SizedBox(
                  width: 393*fem,
                  height: 306*fem,
                  child: Image.asset(
                    'assets/cenima-app-user/images/-Z5o.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // hours22minrTw (113:13758)
              left: 9*fem,
              top: 319*fem,
              child: Align(
                child: SizedBox(
                  width: 123*fem,
                  height: 26*fem,
                  child: Text(
                    '3 Hours 12 Min',
                    style: SafeGoogleFont (
                      'Lucida Bright',
                      20*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // group375k1 (113:13759)
              left: 4*fem,
              top: 53*fem,
              child: SizedBox(
                width: 325.5*fem,
                height: 29*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // arrowdownsigntonavigatetSZ (113:13760)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 48.5*fem, 2*fem),
                      width: 25*fem,
                      height: 25*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/arrow-down-sign-to-navigate-L93.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      // themenugNR (113:13761)
                      'Avatar: The Way of Water',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Segoe UI',
                        23*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2575*ffem/fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // hidebarinfoFZw (113:13788)
              left: 0*fem,
              top: 350*fem,
              child: SizedBox(
                width: 393*fem,
                height: 443*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // scheduleheader4nH (I113:13788;182:19195)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 23*fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(20.73*fem, 17*fem, 18*fem, 15*fem),
                          width: double.infinity,
                          decoration: BoxDecoration (
                            border: Border.all(color: const Color(0xff707070)),
                            color: const Color(0xffffffff),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // informationHoT (I113:13788;182:19197)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 212.27*fem, 1*fem),
                                child: Text(
                                  'Information',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Segoe UI',
                                    22*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2575*ffem/fem,
                                    color: const Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // arrowdownsigntonavigateHS5 (I113:13788;182:19198)
                                margin: EdgeInsets.fromLTRB(0*fem, 4*fem, 0*fem, 0*fem),
                                width: 25*fem,
                                height: 25*fem,
                                child: Image.asset(
                                  'assets/cenima-app-user/images/arrow-down-sign-to-navigate-TiV.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // infogUD (I113:13788;182:19230)
                      margin: EdgeInsets.fromLTRB(17*fem, 0*fem, 25*fem, 0*fem),
                      width: double.infinity,
                      height: 359*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // ayoungcoupletravelstoaremoteis (I113:13788;182:19231)
                            left: 0*fem,
                            top: 0*fem,
                            child: Align(
                              child: SizedBox(
                                width: 351*fem,
                                height: 359*fem,
                                child: RichText(
                                  text: TextSpan(
                                    style: SafeGoogleFont (
                                      'Segoe UI',
                                      15*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.330078125*ffem/fem,
                                      color: const Color(0xffff1e60),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'Jake Sully lives with his newfound family formed on the extrasolar moon Pandora. Once a familiar threat returns to finish what was previously started, Jake must work with Neytiri and the army of the Na\'vi race to protect their home.\n\n',
                                        style: SafeGoogleFont (
                                          'Lucida Bright',
                                          15*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2575*ffem/fem,
                                          color: const Color(0xff464646),
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Genres:-',
                                        style: SafeGoogleFont (
                                          'Lucida Bright',
                                          15*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2575*ffem/fem,
                                          color: const Color(0xff7e132b),
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' ',
                                        style: SafeGoogleFont (
                                          'Segoe UI',
                                          15*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2575*ffem/fem,
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Action, Adventure, Fantasy\n',
                                        style: SafeGoogleFont (
                                          'Cambria',
                                          15*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2575*ffem/fem,
                                          color: const Color(0xffff1e60),
                                        ),
                                      ),
                                      TextSpan(
                                        text: '\n',
                                        style: SafeGoogleFont (
                                          'Segoe UI',
                                          15*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2575*ffem/fem,
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Language:-\n\nRating:-\n',
                                        style: SafeGoogleFont (
                                          'Lucida Bright',
                                          15*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2575*ffem/fem,
                                          color: const Color(0xff7e132b),
                                        ),
                                      ),
                                      TextSpan(
                                        text: '\n',
                                        style: SafeGoogleFont (
                                          'Segoe UI',
                                          15*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2575*ffem/fem,
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Director:-',
                                        style: SafeGoogleFont (
                                          'Lucida Bright',
                                          15*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2575*ffem/fem,
                                          color: const Color(0xff7e132b),
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' ',
                                        style: SafeGoogleFont (
                                          'Segoe UI',
                                          15*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2575*ffem/fem,
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'James Cameron\n\n',
                                        style: SafeGoogleFont (
                                          'Segoe UI',
                                          15*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2575*ffem/fem,
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Writers:- ',
                                        style: SafeGoogleFont (
                                          'Lucida Bright',
                                          15*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2575*ffem/fem,
                                          color: const Color(0xff7e132b),
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'James Cameron- Rick Jaffa - Amanda Silver\n \n',
                                        style: SafeGoogleFont (
                                          'Segoe UI',
                                          15*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2575*ffem/fem,
                                          color: const Color(0xffff1e60),
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Stars:-',
                                        style: SafeGoogleFont (
                                          'Lucida Bright',
                                          15*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2575*ffem/fem,
                                          color: const Color(0xff7e132b),
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' ',
                                        style: SafeGoogleFont (
                                          'Segoe UI',
                                          15*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2575*ffem/fem,
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Sam Worthington- Zoe Saldana- Sigourney Weaver\n\n',
                                        style: SafeGoogleFont (
                                          'Segoe UI',
                                          15*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2575*ffem/fem,
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // frame3Hg9 (I113:13788;182:19203;18:464)
                            left: 96*fem,
                            top: 163*fem,
                            child: Container(
                              width: 91*fem,
                              height: 29*fem,
                              decoration: BoxDecoration (
                                border: Border.all(color: const Color(0xff707070)),
                                color: const Color(0xff7e132b),
                              ),
                              child: Center(
                                child: Text(
                                  'English',
                                  style: SafeGoogleFont (
                                    'Lucida Bright',
                                    16.5271606445*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2575*ffem/fem,
                                    color: const Color(0xffffffff),
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
            ),
            Positioned(
              // frame1Jjf (I113:13841;18:417)
              left: 279*fem,
              top: 317*fem,
              child: Container(
                width: 104*fem,
                height: 28*fem,
                decoration: BoxDecoration (
                  color: const Color(0xff9a2044),
                  borderRadius: BorderRadius.circular(26*fem),
                ),
                child: Center(
                  child: Text(
                    'PG-13',
                    style: SafeGoogleFont (
                      'Lucida Bright',
                      22.0362129211*ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // iosstatusbarwithnotchsfCiZ (113:13765)
              left: 0*fem,
              top: 0*fem,
              child: Container(
                width: 393*fem,
                height: 44*fem,
                decoration: const BoxDecoration (
                  color: Color(0xffffffff),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      // notchXeM (I113:13765;9:41)
                      left: 87*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 219*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/cenima-app-user/images/notch-hDP.png',
                            width: 219*fem,
                            height: 30*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // timevRb (I113:13765;9:73)
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
                      // iosiconstatusbarns7 (I113:13765;9:57)
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
                              // autogroupucukiGu (W2ZrGjgGStRP7MWto8UCuK)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1796*fem, 10*fem),
                              width: 48.96*fem,
                              height: 16*fem,
                            ),
                            Container(
                              // iosiconsmallmobilesignalLp5 (I113:13765;9:57;9:6)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.35*fem, 2.33*fem),
                              width: 17*fem,
                              height: 10.67*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-mobile-signal-jP3.png',
                                width: 17*fem,
                                height: 10.67*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallwifiTnD (I113:13765;9:57;9:12)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.38*fem, 2.03*fem),
                              width: 15.27*fem,
                              height: 10.97*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-wifi-o6D.png',
                                width: 15.27*fem,
                                height: 10.97*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallbatteryqXs (I113:13765;9:57;9:17)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.67*fem),
                              width: 24.33*fem,
                              height: 11.33*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-battery-ZNu.png',
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
            ),
          ],
        ),
      ),
          );
  }
}