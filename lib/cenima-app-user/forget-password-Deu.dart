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
        // forgetpassword57b (134:15111)
        padding: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 13*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          border: Border.all(color: const Color(0xff707070)),
          color: const Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // iosstatusbarwithnotchsfDND (134:15118)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
              width: double.infinity,
              height: 44*fem,
              decoration: const BoxDecoration (
                color: Color(0xffffffff),
              ),
              child: Stack(
                children: [
                  Positioned(
                    // notchp77 (I134:15118;9:41)
                    left: 86*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 219*fem,
                        height: 30*fem,
                        child: Image.asset(
                          'assets/cenima-app-user/images/notch-M8Z-uvm.png',
                          width: 219*fem,
                          height: 30*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // timeLUm (I134:15118;9:73)
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
                    // iosiconstatusbarECm (I134:15118;9:57)
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
                            // autogroupwew1uCR (W2ZBK2GBfPZGCk4R5KWEW1)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1796*fem, 10*fem),
                            width: 48.96*fem,
                            height: 16*fem,
                          ),
                          Container(
                            // iosiconsmallmobilesignalKX3 (I134:15118;9:57;9:6)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.35*fem, 2.33*fem),
                            width: 17*fem,
                            height: 10.67*fem,
                            child: Image.asset(
                              'assets/cenima-app-user/images/ios-icon-small-mobile-signal-hJV.png',
                              width: 17*fem,
                              height: 10.67*fem,
                            ),
                          ),
                          Container(
                            // iosiconsmallwifihXb (I134:15118;9:57;9:12)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.38*fem, 2.03*fem),
                            width: 15.27*fem,
                            height: 10.97*fem,
                            child: Image.asset(
                              'assets/cenima-app-user/images/ios-icon-small-wifi-1ND.png',
                              width: 15.27*fem,
                              height: 10.97*fem,
                            ),
                          ),
                          Container(
                            // iosiconsmallbatterye5T (I134:15118;9:57;9:17)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.67*fem),
                            width: 24.33*fem,
                            height: 11.33*fem,
                            child: Image.asset(
                              'assets/cenima-app-user/images/ios-icon-small-battery-rbo.png',
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
              // autogroupdbyfQyj (W2Z9m4r5Bo81QsA43gDByf)
              margin: EdgeInsets.fromLTRB(12*fem, 0*fem, 128*fem, 197*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // arrowdownsigntonavigateedB (I134:15119;56:1913;1:127)
                    margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 45.45*fem, 0*fem),
                    width: 27.55*fem,
                    height: 27.55*fem,
                    child: Image.asset(
                      'assets/cenima-app-user/images/arrow-down-sign-to-navigate-zkM.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  RichText(
                    // forgetpasswordaQM (134:15113)
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
                          text: 'Forget ',
                          style: SafeGoogleFont (
                            'Lucida Bright',
                            25*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2575*ffem/fem,
                            color: const Color(0xff7e132b),
                          ),
                        ),
                        const TextSpan(
                          text: 'password',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // pleaseenteryouremailhvD (134:15114)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 104*fem, 22*fem),
              child: RichText(
                text: TextSpan(
                  style: SafeGoogleFont (
                    'Segoe UI',
                    20*ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.2575*ffem/fem,
                    color: const Color(0xff000000),
                  ),
                  children: [
                    TextSpan(
                      text: 'Please ',
                      style: SafeGoogleFont (
                        'Segoe UI',
                        20*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2575*ffem/fem,
                        color: const Color(0xff000000),
                      ),
                    ),
                    const TextSpan(
                      text: 'enter your email',
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // inputandroidtextoutlinedinacti (134:15116)
              margin: EdgeInsets.fromLTRB(29*fem, 0*fem, 34*fem, 19*fem),
              padding: EdgeInsets.fromLTRB(19*fem, 13*fem, 217*fem, 14*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                border: Border.all(color: const Color(0xff020202)),
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(25*fem),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // phonecallRHo (I134:15116;738:5815)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                    width: 29*fem,
                    height: 29*fem,
                    child: Image.asset(
                      'assets/cenima-app-user/images/phone-call-jQR.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // text45s (I134:15116;51:956)
                    margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                    child: Text(
                      'Email',
                      style: SafeGoogleFont (
                        'Tw Cen MT',
                        20*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2*ffem/fem,
                        letterSpacing: 0.150000006*fem,
                        color: const Color(0xff757575),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // wellsendyouinstructionsonhowto (134:15115)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 49*fem, 344*fem),
              constraints: const BoxConstraints (
                // maxWidth: 262*fem,
              ),
              child: Text(
                'we\'ll send you instructions on how to set a new password ',
                style: SafeGoogleFont (
                  'Lucida Bright',
                  13*ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.2575*ffem/fem,
                  color: const Color(0xff828282),
                ),
              ),
            ),
            Container(
              // mainbutton8NZ (134:15117)
              margin: EdgeInsets.fromLTRB(115*fem, 0*fem, 117*fem, 0*fem),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: 51*fem,
                  child: Container(
                    // frame4LUd (I134:15117;18:475)
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: const Color(0xff707070)),
                      color: const Color(0xff9a2044),
                      borderRadius: BorderRadius.circular(54*fem),
                    ),
                    child: Center(
                      child: Text(
                        'SEND',
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
          ],
        ),
      ),
          );
  }
}