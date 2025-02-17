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
        // creditcardia4V (103:8168)
        width: double.infinity,
        height: 852*fem,
        decoration: const BoxDecoration (
          color: Color(0xfff1f1f1),
        ),
        child: Stack(
          children: [
            Positioned(
              // rectangle43fVF (103:8169)
              left: 0*fem,
              top: 96*fem,
              child: Align(
                child: SizedBox(
                  width: 391*fem,
                  height: 750*fem,
                  child: Container(
                    decoration: const BoxDecoration (
                      color: Color(0xfff1f1f1),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // cardsFyF (103:8170)
              left: 28*fem,
              top: 144*fem,
              child: Align(
                child: SizedBox(
                  width: 54*fem,
                  height: 28*fem,
                  child: Text(
                    'Cards',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Lucida Bright',
                      22*ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xff3b3b3b),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // paypalLNR (103:8171)
              left: 35.5*fem,
              top: 426*fem,
              child: Align(
                child: SizedBox(
                  width: 64*fem,
                  height: 28*fem,
                  child: Text(
                    'Paypal',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Lucida Bright',
                      22*ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xff3b3b3b),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // addnewbuttonVed (103:8172)
              left: 270*fem,
              top: 144*fem,
              child: Container(
                width: 111*fem,
                height: 41*fem,
                decoration: BoxDecoration (
                  border: Border.all(color: const Color(0x00ff1e60)),
                  color: const Color(0x00ffffff),
                  borderRadius: BorderRadius.circular(43*fem),
                ),
                child: Center(
                  child: Text(
                    'ADD NEW',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Lucida Bright',
                      16*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xffff1e60),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // visacardVwT (103:8174)
              left: 19*fem,
              top: 81*fem,
              child: SizedBox(
                width: 360*fem,
                height: 340*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle46JP7 (103:8175)
                      left: 0*fem,
                      top: 120*fem,
                      child: Align(
                        child: SizedBox(
                          width: 360*fem,
                          height: 77*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(15*fem),
                              color: const Color(0x00ffffff),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x3f636363),
                                  offset: Offset(0*fem, 4*fem),
                                  blurRadius: 7.5*fem,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // visaytZ (103:8176)
                      left: 88.5*fem,
                      top: 134*fem,
                      child: Align(
                        child: SizedBox(
                          width: 39*fem,
                          height: 28*fem,
                          child: Text(
                            'Visa',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Lucida Bright',
                              22*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xff3b3b3b),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // 5aD (103:8177)
                      left: 87.5*fem,
                      top: 163*fem,
                      child: Align(
                        child: SizedBox(
                          width: 61*fem,
                          height: 19*fem,
                          child: Text(
                            '**** 1222',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Lucida Bright',
                              15*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xff565656),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // creditcard21e13 (103:8178)
                      left: 9*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 340*fem,
                          height: 340*fem,
                          child: Image.asset(
                            'assets/cenima-app-user/images/credit-card-2-1-tgV.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // visa1kiH (103:8179)
                      left: 195*fem,
                      top: 244*fem,
                      child: Align(
                        child: SizedBox(
                          width: 67*fem,
                          height: 67*fem,
                          child: Image.asset(
                            'assets/cenima-app-user/images/visa-1-inh.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // Mi5 (103:8212)
                      left: 37.5*fem,
                      top: 221*fem,
                      child: Align(
                        child: SizedBox(
                          width: 119*fem,
                          height: 19*fem,
                          child: Text(
                            '**** **** **** 1222',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Lucida Bright',
                              15*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // 51o (103:8213)
                      left: 49*fem,
                      top: 269*fem,
                      child: Align(
                        child: SizedBox(
                          width: 36*fem,
                          height: 19*fem,
                          child: Text(
                            '11/27',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Lucida Bright',
                              15*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2575*ffem/fem,
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
            Positioned(
              // visacard1Zf (103:8180)
              left: 19*fem,
              top: 483*fem,
              child: Opacity(
                opacity: 0,
                child: Container(
                  padding: EdgeInsets.fromLTRB(9*fem, 8*fem, 114.5*fem, 15*fem),
                  width: 360*fem,
                  height: 77*fem,
                  decoration: BoxDecoration (
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(15*fem),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x3f636363),
                        offset: Offset(0*fem, 4*fem),
                        blurRadius: 7.5*fem,
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // creditcard21bAV (103:8183)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21.5*fem, 0*fem),
                        width: 54*fem,
                        height: 54*fem,
                        child: Image.asset(
                          'assets/cenima-app-user/images/credit-card-2-1-XNd.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        // megmailcomDhf (103:8182)
                        margin: EdgeInsets.fromLTRB(0*fem, 9*fem, 0*fem, 0*fem),
                        child: Text(
                          '*********me@gmail.com',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Lucida Bright',
                            15*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2575*ffem/fem,
                            color: const Color(0xff565656),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // secondarybuttonMxH (103:8218)
              left: 77*fem,
              top: 803*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 237*fem,
                  height: 37*fem,
                  decoration: BoxDecoration (
                    color: const Color(0xffff2153),
                    borderRadius: BorderRadius.circular(17.6289710999*fem),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x29000000),
                        offset: Offset(0*fem, 3.3054320812*fem),
                        blurRadius: 0.2754526734*fem,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'REMOVE CARD',
                      style: SafeGoogleFont (
                        'Lucida Bright',
                        17.6289710999*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2575*ffem/fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // headertz9 (103:8184)
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
                      // arrowdownsigntonavigate2iy (I103:8184;75:1573;1:127)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 136*fem, 0*fem),
                      width: 30*fem,
                      height: 28*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/arrow-down-sign-to-navigate-se5.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // accountinfoFbj (I103:8184;1:1762)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 143*fem, 1.5*fem),
                      child: Text(
                        'Cards',
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
                      // closezBw (I103:8184;76:1577;1:159)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.76*fem),
                      width: 24.24*fem,
                      height: 24.24*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/close-Qof.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // iosstatusbarwithnotchsfpAy (103:8185)
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
                      // notchmEd (I103:8185;9:41)
                      left: 87*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 219*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/cenima-app-user/images/notch-qHf.png',
                            width: 219*fem,
                            height: 30*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // timeZwB (I103:8185;9:73)
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
                      // iosiconstatusbarer9 (I103:8185;9:57)
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
                              // autogroup91jm1q7 (W2QDq2gebVDUQvHMu791JM)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1796*fem, 10*fem),
                              width: 48.96*fem,
                              height: 16*fem,
                            ),
                            Container(
                              // iosiconsmallmobilesignalEC5 (I103:8185;9:57;9:6)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.35*fem, 2.33*fem),
                              width: 17*fem,
                              height: 10.67*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-mobile-signal-sxH.png',
                                width: 17*fem,
                                height: 10.67*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallwifikpd (I103:8185;9:57;9:12)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.38*fem, 2.03*fem),
                              width: 15.27*fem,
                              height: 10.97*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-wifi-3py.png',
                                width: 15.27*fem,
                                height: 10.97*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallbattery9Ly (I103:8185;9:57;9:17)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.67*fem),
                              width: 24.33*fem,
                              height: 11.33*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-battery-17j.png',
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