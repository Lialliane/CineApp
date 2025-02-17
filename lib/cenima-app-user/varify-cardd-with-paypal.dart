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
      child: SizedBox(
        // varifycarddwithpaypalXjB (106:12287)
        width: double.infinity,
        height: 852*fem,
        child: Stack(
          children: [
            Positioned(
              // rectangle20eSR (106:12288)
              left: 1*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 393*fem,
                  height: 852*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      border: Border.all(color: const Color(0xff707070)),
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.only (
                        topLeft: Radius.circular(42*fem),
                        topRight: Radius.circular(42*fem),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // iosstatusbarwithnotchsfYw7 (106:12289)
              left: 2*fem,
              top: 0*fem,
              child: Container(
                width: 391*fem,
                height: 44*fem,
                decoration: const BoxDecoration (
                  color: Color(0xffffffff),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      // notchH1X (I106:12289;9:41)
                      left: 86*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 219*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/cenima-app-user/images/notch-fbj.png',
                            width: 219*fem,
                            height: 30*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // timesEd (I106:12289;9:73)
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
                      // iosiconstatusbarXCh (I106:12289;9:57)
                      left: -2*fem,
                      top: 5*fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(20.04*fem, 0*fem, 0*fem, 0*fem),
                        width: 1929*fem,
                        height: 26*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              // autogrouptgz1TVf (W2aBcgSpt3QbCSSdxLtGz1)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1796*fem, 10*fem),
                              width: 48.96*fem,
                              height: 16*fem,
                            ),
                            Container(
                              // iosiconsmallmobilesignalVhF (I106:12289;9:57;9:6)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.35*fem, 2.33*fem),
                              width: 17*fem,
                              height: 10.67*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-mobile-signal-FQ1.png',
                                width: 17*fem,
                                height: 10.67*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallwifiobT (I106:12289;9:57;9:12)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.38*fem, 2.03*fem),
                              width: 15.27*fem,
                              height: 10.97*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-wifi-hPj.png',
                                width: 15.27*fem,
                                height: 10.97*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallbatteryBc1 (I106:12289;9:57;9:17)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.67*fem),
                              width: 24.33*fem,
                              height: 11.33*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-battery-Bdo.png',
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
            Positioned(
              // verifyyouremailm4R (106:12291)
              left: 98.5*fem,
              top: 59*fem,
              child: Align(
                child: SizedBox(
                  width: 172*fem,
                  height: 32*fem,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: SafeGoogleFont (
                        'Lucida Bright',
                        25*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2575*ffem/fem,
                        color: const Color(0xff7e132b),
                      ),
                      children: [
                        TextSpan(
                          text: 'Verify ',
                          style: SafeGoogleFont (
                            'Lucida Bright',
                            25*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2575*ffem/fem,
                            color: const Color(0xff7e132b),
                          ),
                        ),
                        const TextSpan(
                          text: 'your Card',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // group585em (106:12292)
              left: 30*fem,
              top: 334*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(26*fem, 18*fem, 30*fem, 14*fem),
                width: 329*fem,
                height: 58*fem,
                decoration: BoxDecoration (
                  border: Border.all(color: const Color(0xff707070)),
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(29*fem),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // entercodehereh3s (106:12294)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 88*fem, 0*fem),
                      child: RichText(
                        text: TextSpan(
                          style: SafeGoogleFont (
                            'Tw Cen MT',
                            20*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2575*ffem/fem,
                            color: const Color(0xffa6a6a6),
                          ),
                          children: [
                            TextSpan(
                              text: 'Enter Code ',
                              style: SafeGoogleFont (
                                'Tw Cen MT',
                                20*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575*ffem/fem,
                                color: const Color(0xffa6a6a6),
                              ),
                            ),
                            const TextSpan(
                              text: 'here',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // resend4qT (107:10393)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: SizedBox(
                          width: 51*fem,
                          child: Text(
                            'Resend',
                            style: SafeGoogleFont (
                              'Cambria',
                              15*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xffff2153),
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
              // ifyoucantfindtheemailcheckoutt (106:12296)
              left: 42*fem,
              top: 411*fem,
              child: Align(
                child: SizedBox(
                  width: 279*fem,
                  height: 17*fem,
                  child: Text(
                    'if you can\'t find the email, check out the spam box',
                    style: SafeGoogleFont (
                      'Lucida Bright',
                      13*ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xff828282),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // checkoutyouremailforaverificat (106:12297)
              left: 51*fem,
              top: 265*fem,
              child: Align(
                child: SizedBox(
                  width: 245*fem,
                  height: 51*fem,
                  child: Text(
                    'We sent you a message with the code',
                    style: SafeGoogleFont (
                      'Segoe UI',
                      20*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // mainbuttonRNV (106:12298)
              left: 111*fem,
              top: 752*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: SizedBox(
                  width: 173*fem,
                  height: 57*fem,
                  child: Container(
                    // frame4pfX (I106:12298;18:475)
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: const Color(0xff707070)),
                      color: const Color(0xff9a2044),
                      borderRadius: BorderRadius.circular(54*fem),
                    ),
                    child: Center(
                      child: Text(
                        'CONTINUE',
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
              // arrowdownsigntonavigateV9P (I108:12228;1:127)
              left: 2*fem,
              top: 60*fem,
              child: Align(
                child: SizedBox(
                  width: 30*fem,
                  height: 28*fem,
                  child: Image.asset(
                    'assets/cenima-app-user/images/arrow-down-sign-to-navigate-mVw.png',
                    fit: BoxFit.cover,
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