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
        // mybookingscurrentfullz9s (187:17057)
        width: double.infinity,
        height: 852*fem,
        decoration: const BoxDecoration (
          color: Color(0xfff1f1f1),
        ),
        child: Stack(
          children: [
            Positioned(
              // rectanglebookingc2uw3 (187:17058)
              left: 0*fem,
              top: 104*fem,
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
              // slideselect3elemnets71X (187:17059)
              left: 0*fem,
              top: 96*fem,
              child: Container(
                width: 393*fem,
                height: 62*fem,
                decoration: BoxDecoration (
                  border: Border.all(color: const Color(0xff707070)),
                  color: const Color(0xffffffff),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x3f3f3f3f),
                      offset: Offset(0*fem, 4*fem),
                      blurRadius: 2*fem,
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // group20AP7 (I187:17059;76:1740)
                      width: 196*fem,
                      height: double.infinity,
                      decoration: BoxDecoration (
                        border: Border.all(color: const Color(0xff707070)),
                        color: const Color(0xffffffff),
                      ),
                      child: Center(
                        child: Text(
                          'Current',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Lucida Bright',
                            20*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2575*ffem/fem,
                            color: const Color(0xffff1e60),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // group22sB3 (I187:17059;76:1746)
                      width: 197*fem,
                      height: double.infinity,
                      decoration: BoxDecoration (
                        border: Border.all(color: const Color(0xff707070)),
                        color: const Color(0xffffffff),
                      ),
                      child: Center(
                        child: Text(
                          'Past',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Lucida Bright',
                            20*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2575*ffem/fem,
                            color: const Color(0xff464646),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // component63wKK (187:17066)
              left: 0*fem,
              top: 96*fem,
              child: SizedBox(
                width: 853*fem,
                height: 750*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // slideselect3elemnetsYa1 (I187:17066;185:19916)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 460*fem, 0*fem),
                      width: double.infinity,
                      height: 62*fem,
                      decoration: BoxDecoration (
                        border: Border.all(color: const Color(0xff707070)),
                        color: const Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x3f3f3f3f),
                            offset: Offset(0*fem, 4*fem),
                            blurRadius: 2*fem,
                          ),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group20RXK (I187:17066;185:19916;76:1740)
                            width: 196*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              border: Border.all(color: const Color(0xff707070)),
                              color: const Color(0xffffffff),
                            ),
                            child: Center(
                              child: Text(
                                'Current',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Lucida Bright',
                                  20*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2575*ffem/fem,
                                  color: const Color(0xffff1e60),
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            // group229bj (I187:17066;185:19916;76:1746)
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: 197*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                border: Border.all(color: const Color(0xff707070)),
                                color: const Color(0xffffffff),
                              ),
                              child: Center(
                                child: Text(
                                  'Past',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Lucida Bright',
                                    20*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2575*ffem/fem,
                                    color: const Color(0xff464646),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      // autogroupy6bfDV7 (W2f4P97soVg9fmz2kzy6Bf)
                      width: double.infinity,
                      height: 688*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroup1b1wf6D (W2f4sdJQrS5cayGcV61b1w)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 71*fem, 0*fem),
                            padding: EdgeInsets.fromLTRB(24*fem, 21*fem, 22*fem, 21*fem),
                            width: 391*fem,
                            height: double.infinity,
                            decoration: const BoxDecoration (
                              color: Color(0xfff1f1f1),
                            ),
                            child: SizedBox(
                              // ticketeD3 (I187:17066;185:19917)
                              width: double.infinity,
                              height: 146*fem,
                              child: Stack(
                                children: [
                                  Positioned(
                                    // ticketbackgroundGkD (I187:17066;185:19918)
                                    left: 0*fem,
                                    top: 0*fem,
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(34*fem, 13*fem, 34*fem, 12*fem),
                                      width: 345*fem,
                                      height: 146*fem,
                                      decoration: const BoxDecoration (
                                        image: DecorationImage (
                                          fit: BoxFit.cover,
                                          image: AssetImage (
                                            'assets/cenima-app-user/images/vector-6.png',
                                          ),
                                        ),
                                      ),
                                      child: Center(
                                        // rectangle45Nwf (I187:17066;185:19920)
                                        child: SizedBox(
                                          width: double.infinity,
                                          height: 121*fem,
                                          child: Container(
                                            decoration: BoxDecoration (
                                              border: Border.all(color: const Color(0xff4f353b)),
                                              color: const Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // ticketid19234themenufirstcinem (I187:17066;185:19921)
                                    left: 80*fem,
                                    top: 22*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 185*fem,
                                        height: 109*fem,
                                        child: RichText(
                                          textAlign: TextAlign.center,
                                          text: TextSpan(
                                            style: SafeGoogleFont (
                                              'Lucida Bright',
                                              20*ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.177734375*ffem/fem,
                                              color: const Color(0xff000000),
                                            ),
                                            children: [
                                              TextSpan(
                                                text: 'Ticket ID 19234\n',
                                                style: SafeGoogleFont (
                                                  'Lucida Bright',
                                                  20*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.2575*ffem/fem,
                                                  color: const Color(0xff777777),
                                                ),
                                              ),
                                              TextSpan(
                                                text: 'The Menu\n',
                                                style: SafeGoogleFont (
                                                  'Lucida Bright',
                                                  20*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2575*ffem/fem,
                                                  color: const Color(0xff7e132b),
                                                ),
                                              ),
                                              TextSpan(
                                                text: 'First Cinema\n',
                                                style: SafeGoogleFont (
                                                  'Lucida Bright',
                                                  11*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2575*ffem/fem,
                                                  color: const Color(0xff727272),
                                                ),
                                              ),
                                              TextSpan(
                                                text: 'Dec 08, 2022 - 09:10 AM - Screen 3',
                                                style: SafeGoogleFont (
                                                  'Lucida Bright',
                                                  13*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2575*ffem/fem,
                                                  color: const Color(0xff727272),
                                                ),
                                              ),
                                              TextSpan(
                                                text: ' \n',
                                                style: SafeGoogleFont (
                                                  'Lucida Bright',
                                                  20*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2575*ffem/fem,
                                                  color: const Color(0xff000000),
                                                ),
                                              ),
                                              TextSpan(
                                                text: '\n',
                                                style: SafeGoogleFont (
                                                  'Lucida Bright',
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
                                    // tickets6pM (I187:17066;185:19922)
                                    left: 235*fem,
                                    top: 114*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 57*fem,
                                        height: 15*fem,
                                        child: Text(
                                          '4 Tickets',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Lucida Bright',
                                            15*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1*ffem/fem,
                                            color: const Color(0xff4c4c4c),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            // autogroupmjxtad3 (W2f5HSx41g2rH3cvWhmjXT)
                            padding: EdgeInsets.fromLTRB(18*fem, 170*fem, 20*fem, 222*fem),
                            width: 391*fem,
                            height: double.infinity,
                            decoration: const BoxDecoration (
                              color: Color(0xfff1f1f1),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // ticketwc1 (I187:17066;185:19913)
                                  margin: EdgeInsets.fromLTRB(4*fem, 0*fem, 0*fem, 28*fem),
                                  width: 197*fem,
                                  height: 197*fem,
                                  child: Image.asset(
                                    'assets/cenima-app-user/images/ticket-WfP.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  // thislistisemptyYLu (I187:17066;185:20013)
                                  margin: EdgeInsets.fromLTRB(22*fem, 0*fem, 0*fem, 9*fem),
                                  child: Text(
                                    'This List is empty',
                                    style: SafeGoogleFont (
                                      'Tw Cen MT',
                                      30*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2575*ffem/fem,
                                      color: const Color(0xffff1e60),
                                    ),
                                  ),
                                ),
                                Text(
                                  // youcanseeyourexpiredorusedtick (I187:17066;185:20012)
                                  'You can see your expired or used tickets here',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Tw Cen MT',
                                    19*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2575*ffem/fem,
                                    color: const Color(0xff5d5d5d),
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
            Positioned(
              // header5tZ (187:17067)
              left: 0*fem,
              top: 26*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(5*fem, 32.5*fem, 3.76*fem, 9.5*fem),
                width: 393*fem,
                height: 70*fem,
                decoration: BoxDecoration (
                  border: Border.all(color: const Color(0xffc2c2c2)),
                  color: const Color(0xffffffff),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // arrowdownsigntonavigate1fj (I187:17067;75:1573;1:127)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 105.5*fem, 0*fem),
                      width: 30*fem,
                      height: 28*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/arrow-down-sign-to-navigate-3P3.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // accountinfoAww (I187:17067;1:1762)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 112.5*fem, 1.5*fem),
                      child: Text(
                        'My Bookings',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Segoe UI',
                          20*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2575*ffem/fem,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      // closeMmX (I187:17067;76:1577;1:159)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.76*fem),
                      width: 24.24*fem,
                      height: 24.24*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/close-rFw.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // iosstatusbarwithnotchsfn69 (187:17068)
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
                      // notch8xd (I187:17068;9:41)
                      left: 87*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 219*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/cenima-app-user/images/notch-HK3.png',
                            width: 219*fem,
                            height: 30*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // timegcm (I187:17068;9:73)
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
                      // iosiconstatusbarYHb (I187:17068;9:57)
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
                              // autogroupbcwqDHF (W2f7SyBEfDAbRDA6jgbCWq)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1796*fem, 10*fem),
                              width: 48.96*fem,
                              height: 16*fem,
                            ),
                            Container(
                              // iosiconsmallmobilesignalFjj (I187:17068;9:57;9:6)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.35*fem, 2.33*fem),
                              width: 17*fem,
                              height: 10.67*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-mobile-signal-3Pb.png',
                                width: 17*fem,
                                height: 10.67*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallwifipwF (I187:17068;9:57;9:12)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.38*fem, 2.03*fem),
                              width: 15.27*fem,
                              height: 10.97*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-wifi-6Ay.png',
                                width: 15.27*fem,
                                height: 10.97*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallbatterybqX (I187:17068;9:57;9:17)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.67*fem),
                              width: 24.33*fem,
                              height: 11.33*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-battery-Nx5.png',
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