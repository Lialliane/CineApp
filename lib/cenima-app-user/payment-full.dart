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
        // paymentfullN7f (103:8089)
        width: double.infinity,
        height: 852*fem,
        decoration: const BoxDecoration (
          color: Color(0xfff1f1f1),
        ),
        child: Stack(
          children: [
            Positioned(
              // rectangle43NWy (103:8090)
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
              // cardshBs (103:8124)
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
              // paypal27f (103:8152)
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
              // addnewbuttonhd7 (103:8146)
              left: 270*fem,
              top: 144*fem,
              child: Container(
                width: 111*fem,
                height: 41*fem,
                decoration: BoxDecoration (
                  border: Border.all(color: const Color(0xff808080)),
                  color: const Color(0xffffffff),
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
                      color: const Color(0xff7c7c7c),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // visacardBAu (103:8155)
              left: 19*fem,
              top: 201*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(9*fem, 8*fem, 211.5*fem, 11*fem),
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
                        // autogroup3jn9jVF (W2Q5Zw7cKzUucD2hoN3JN9)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24.5*fem, 0*fem),
                        width: 54*fem,
                        height: double.infinity,
                        child: Stack(
                          children: [
                            Positioned(
                              // creditcard21AaZ (103:8128)
                              left: 0*fem,
                              top: 0*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 54*fem,
                                  height: 54*fem,
                                  child: Image.asset(
                                    'assets/cenima-app-user/images/credit-card-2-1-vdj.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // visa1UzZ (103:8129)
                              left: 11*fem,
                              top: 27*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 31*fem,
                                  height: 31*fem,
                                  child: Image.asset(
                                    'assets/cenima-app-user/images/visa-1.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogrouphvuk6m3 (W2Q5qvexp6byXUXM3qHvuK)
                        margin: EdgeInsets.fromLTRB(0*fem, 6*fem, 0*fem, 4*fem),
                        width: 61*fem,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // visagDT (103:8130)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                              width: double.infinity,
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
                            SizedBox(
                              // UQD (103:8134)
                              width: double.infinity,
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // visacardhnm (103:8156)
              left: 19*fem,
              top: 483*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(9*fem, 8*fem, 151*fem, 15*fem),
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
                        // creditcard21GN1 (103:8160)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                        width: 54*fem,
                        height: 54*fem,
                        child: Image.asset(
                          'assets/cenima-app-user/images/credit-card-2-1-8dj.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        // negmailcome7f (103:8159)
                        margin: EdgeInsets.fromLTRB(0*fem, 9*fem, 0*fem, 0*fem),
                        child: Text(
                          '*****ne@gmail.com',
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
              // header28D (103:8094)
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
                      // arrowdownsigntonavigatemED (I103:8094;75:1573;1:127)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 122*fem, 0*fem),
                      width: 30*fem,
                      height: 28*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/arrow-down-sign-to-navigate-jTs.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // accountinfowY1 (I103:8094;1:1762)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 129*fem, 1.5*fem),
                      child: Text(
                        'Payment',
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
                      // close7au (I103:8094;76:1577;1:159)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.76*fem),
                      width: 24.24*fem,
                      height: 24.24*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/close-xdT.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // iosstatusbarwithnotchsf9Gh (103:8095)
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
                      // notch5pZ (I103:8095;9:41)
                      left: 87*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 219*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/cenima-app-user/images/notch-zMB.png',
                            width: 219*fem,
                            height: 30*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // timeriq (I103:8095;9:73)
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
                      // iosiconstatusbarL1j (I103:8095;9:57)
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
                              // autogroup8wdpH5P (W2Q7So9tDka85oWdPX8wdP)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1796*fem, 10*fem),
                              width: 48.96*fem,
                              height: 16*fem,
                            ),
                            Container(
                              // iosiconsmallmobilesignal861 (I103:8095;9:57;9:6)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.35*fem, 2.33*fem),
                              width: 17*fem,
                              height: 10.67*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-mobile-signal-m4Z.png',
                                width: 17*fem,
                                height: 10.67*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallwifiFZw (I103:8095;9:57;9:12)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.38*fem, 2.03*fem),
                              width: 15.27*fem,
                              height: 10.97*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-wifi-Fxq.png',
                                width: 15.27*fem,
                                height: 10.97*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallbatterycoo (I103:8095;9:57;9:17)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.67*fem),
                              width: 24.33*fem,
                              height: 11.33*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-battery-5HX.png',
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