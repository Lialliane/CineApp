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
        // addpaymentinrentZ41 (182:19552)
        width: double.infinity,
        height: 852*fem,
        decoration: const BoxDecoration (
          color: Color(0xfff1f1f1),
        ),
        child: Stack(
          children: [
            Positioned(
              // rectangle43j6u (182:19553)
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
              // mainbuttonJZK (182:19554)
              left: 79*fem,
              top: 794*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: SizedBox(
                  width: 236*fem,
                  height: 52*fem,
                  child: Container(
                    // frame4CYD (I182:19554;18:475)
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: const Color(0xff707070)),
                      color: const Color(0xff9a2044),
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
            Positioned(
              // rectangle40t3f (182:19555)
              left: 0*fem,
              top: 44*fem,
              child: Align(
                child: SizedBox(
                  width: 393*fem,
                  height: 78*fem,
                  child: Container(
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
                  ),
                ),
              ),
            ),
            Positioned(
              // entercarddetails9Nu (182:19557)
              left: 111.5*fem,
              top: 77*fem,
              child: Align(
                child: SizedBox(
                  width: 170*fem,
                  height: 28*fem,
                  child: Text(
                    'Enter Card Details',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Lucida Bright',
                      22*ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xff4b4a4a),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // saveforfuturepaymentsRUq (182:19558)
              left: 12.6220703125*fem,
              top: 321*fem,
              child: Align(
                child: SizedBox(
                  width: 161*fem,
                  height: 21*fem,
                  child: RichText(
                    text: TextSpan(
                      style: SafeGoogleFont (
                        'Segoe UI',
                        16*ffem,
                        fontWeight: FontWeight.w300,
                        height: 1.2575*ffem/fem,
                        fontStyle: FontStyle.italic,
                        color: const Color(0xff000000),
                      ),
                      children: [
                        TextSpan(
                          text: 'Save for futur',
                          style: SafeGoogleFont (
                            'Segoe UI',
                            16*ffem,
                            fontWeight: FontWeight.w300,
                            height: 1.2575*ffem/fem,
                            fontStyle: FontStyle.italic,
                            color: const Color(0xff000000),
                          ),
                        ),
                        const TextSpan(
                          text: 'e payments',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // carddetailsX5w (182:19559)
              left: 0.6220703125*fem,
              top: 155*fem,
              child: SizedBox(
                width: 393*fem,
                height: 144*fem,
                child: Container(
                  // autogroup5uv1jho (W2aX4hsb2hJdbfNhWH5Uv1)
                  padding: EdgeInsets.fromLTRB(12*fem, 0*fem, 23*fem, 28*fem),
                  width: double.infinity,
                  height: 143*fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // cardnumberKg1 (182:19560)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                        child: Text(
                          'Card number',
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
                      Text(
                        // s5F (182:19561)
                        '0000 0000 0000 0000',
                        style: SafeGoogleFont (
                          'Segoe UI',
                          16*ffem,
                          fontWeight: FontWeight.w300,
                          height: 1.2575*ffem/fem,
                          fontStyle: FontStyle.italic,
                          color: const Color(0xff939393),
                        ),
                      ),
                      Container(
                        // line4Xfb (182:19566)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 22*fem),
                        width: 249*fem,
                        height: 1*fem,
                        decoration: const BoxDecoration (
                          color: Color(0xff707070),
                        ),
                      ),
                      Container(
                        // autogroupedhwZ6V (W2aVszM5v7kT74X2tPEDHw)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 77*fem, 0*fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // expirydateJyB (182:19564)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 186*fem, 0*fem),
                              child: Text(
                                'Expiry date',
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
                            Text(
                              // cvvJLu (182:19562)
                              'Cvv',
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
                      Container(
                        // autogroup8kshAe1 (W2aWJj8sCQUCKgGS4z8kSH)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 77*fem, 0*fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // AGd (182:19565)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 215*fem, 0*fem),
                              child: Text(
                                '00 / 00',
                                style: SafeGoogleFont (
                                  'Segoe UI',
                                  16*ffem,
                                  fontWeight: FontWeight.w300,
                                  height: 1.2575*ffem/fem,
                                  fontStyle: FontStyle.italic,
                                  color: const Color(0xff939393),
                                ),
                              ),
                            ),
                            Text(
                              // yUy (182:19563)
                              '000',
                              style: SafeGoogleFont (
                                'Segoe UI',
                                16*ffem,
                                fontWeight: FontWeight.w300,
                                height: 1.2575*ffem/fem,
                                fontStyle: FontStyle.italic,
                                color: const Color(0xff939393),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        // autogroupkwfsS7f (W2aWeoPkazjiKB5ZZ7kwFs)
                        width: double.infinity,
                        height: 1*fem,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // closegGu (182:19570)
              left: 347*fem,
              top: 55*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(7*fem, 6*fem, 5.76*fem, 5.76*fem),
                  width: 37*fem,
                  height: 36*fem,
                  child: Center(
                    // closedLZ (I182:19570;1:159)
                    child: SizedBox(
                      width: 24.24*fem,
                      height: 24.24*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/close-bQ1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // checkboxrUD (182:19571)
              left: 359*fem,
              top: 320*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(3*fem, 3*fem, 3*fem, 3*fem),
                  width: 24*fem,
                  height: 24*fem,
                  child: Container(
                    // checkboxM3b (I182:19571;48:402)
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: const Color(0xff6f001a)),
                      borderRadius: BorderRadius.circular(2*fem),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // iosstatusbarwithnotchsfdWu (182:19572)
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
                      // notchCTX (I182:19572;9:41)
                      left: 87*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 219*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/cenima-app-user/images/notch-BGy.png',
                            width: 219*fem,
                            height: 30*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // timejLy (I182:19572;9:73)
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
                      // iosiconstatusbarmws (I182:19572;9:57)
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
                              // autogroupteqvW2H (W2aZ4ysBBJ9bszzAFrteQV)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1796*fem, 10*fem),
                              width: 48.96*fem,
                              height: 16*fem,
                            ),
                            Container(
                              // iosiconsmallmobilesignal8ZT (I182:19572;9:57;9:6)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.35*fem, 2.33*fem),
                              width: 17*fem,
                              height: 10.67*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-mobile-signal-Q1s.png',
                                width: 17*fem,
                                height: 10.67*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallwifiU13 (I182:19572;9:57;9:12)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.38*fem, 2.03*fem),
                              width: 15.27*fem,
                              height: 10.97*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-wifi-njF.png',
                                width: 15.27*fem,
                                height: 10.97*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallbatteryrGV (I182:19572;9:57;9:17)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.67*fem),
                              width: 24.33*fem,
                              height: 11.33*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-battery-yMo.png',
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