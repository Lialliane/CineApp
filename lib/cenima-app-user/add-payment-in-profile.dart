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
        // addpaymentinprofileEN9 (106:12240)
        width: double.infinity,
        height: 852*fem,
        decoration: const BoxDecoration (
          color: Color(0xfff1f1f1),
        ),
        child: Stack(
          children: [
            Positioned(
              // rectangle43EmT (106:12241)
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
              // mainbuttonmeu (106:12242)
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
                    // frame4n4D (I106:12242;18:475)
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
              // rectangle40Doj (106:12243)
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
              // closex93 (106:12244)
              left: 348.6220703125*fem,
              top: 55*fem,
              child: Align(
                child: SizedBox(
                  width: 22*fem,
                  height: 22*fem,
                  child: Image.asset(
                    'assets/cenima-app-user/images/close-qZ7.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // entercarddetailsVgh (106:12245)
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
              // carddetails35w (106:12247)
              left: 0.6220703125*fem,
              top: 155*fem,
              child: SizedBox(
                width: 393*fem,
                height: 144*fem,
                child: Container(
                  // autogroupjner1gy (W2QyKs3JpbZ4diszvmjnER)
                  padding: EdgeInsets.fromLTRB(12*fem, 0*fem, 23*fem, 28*fem),
                  width: double.infinity,
                  height: 143*fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // cardnumberocq (106:12248)
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
                        // zBX (106:12249)
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
                        // line4PzM (106:12254)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 22*fem),
                        width: 249*fem,
                        height: 1*fem,
                        decoration: const BoxDecoration (
                          color: Color(0xff707070),
                        ),
                      ),
                      Container(
                        // autogroupyia12Gd (W2Qx8ZhSioh6zEQYr4yia1)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 77*fem, 0*fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // expirydateSbF (106:12252)
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
                              // cvvP97 (106:12250)
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
                        // autogroupbushr2h (W2QxXUCwkzsq9mMmihbUSh)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 77*fem, 0*fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // tzy (106:12253)
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
                              // FU9 (106:12251)
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
                        // autogroupqg2y8H3 (W2QxrHzuthv7F4zWMfqg2y)
                        width: double.infinity,
                        height: 1*fem,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // close1bj (106:12258)
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
                    // closejAM (I106:12258;1:159)
                    child: SizedBox(
                      width: 24.24*fem,
                      height: 24.24*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/close-J4D.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // iosstatusbarwithnotchsfmcq (106:12260)
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
                      // notchyD7 (I106:12260;9:41)
                      left: 87*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 219*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/cenima-app-user/images/notch-z6R.png',
                            width: 219*fem,
                            height: 30*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // time7yX (I106:12260;9:73)
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
                      // iosiconstatusbarFTT (I106:12260;9:57)
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
                              // autogroupnyghZ6m (W2R1He74TRwZ7g8fz2nyGH)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1796*fem, 10*fem),
                              width: 48.96*fem,
                              height: 16*fem,
                            ),
                            Container(
                              // iosiconsmallmobilesignalxub (I106:12260;9:57;9:6)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.35*fem, 2.33*fem),
                              width: 17*fem,
                              height: 10.67*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-mobile-signal-yrV.png',
                                width: 17*fem,
                                height: 10.67*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallwifiwWd (I106:12260;9:57;9:12)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.38*fem, 2.03*fem),
                              width: 15.27*fem,
                              height: 10.97*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-wifi-3py-QvR.png',
                                width: 15.27*fem,
                                height: 10.97*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallbatteryTNV (I106:12260;9:57;9:17)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.67*fem),
                              width: 24.33*fem,
                              height: 11.33*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-battery-ckD.png',
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