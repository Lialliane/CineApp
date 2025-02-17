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
        // settingsvpM (1:798)
        width: double.infinity,
        height: 852*fem,
        decoration: const BoxDecoration (
          color: Color(0xfff1f1f1),
        ),
        child: Stack(
          children: [
            Positioned(
              // autogroupoudtwjT (W2Np13hKAL6SkkCyRVoUDT)
              left: 0*fem,
              top: 104*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(20*fem, 13*fem, 18*fem, 447*fem),
                width: 391*fem,
                height: 742*fem,
                decoration: const BoxDecoration (
                  color: Color(0xfff1f1f1),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      // profilecardFtZ (1:813)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(9*fem, 7*fem, 127*fem, 13*fem),
                        width: double.infinity,
                        decoration: BoxDecoration (
                          color: const Color(0xffffffff),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x29000000),
                              offset: Offset(0*fem, 3*fem),
                              blurRadius: 1.5*fem,
                            ),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // lock5FK (1:801)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18*fem, 0*fem),
                              width: 34*fem,
                              height: 34*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/lock.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            RichText(
                              // changepassword6w7 (1:800)
                              text: TextSpan(
                                style: SafeGoogleFont (
                                  'Lucida Bright',
                                  22*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.177734375*ffem/fem,
                                  color: const Color(0xff7e132b),
                                ),
                                children: [
                                  TextSpan(
                                    text: 'CHANGE PAS',
                                    style: SafeGoogleFont (
                                      'Lucida Bright',
                                      22*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2575*ffem/fem,
                                      color: const Color(0xff7e132b),
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'SWORD',
                                    style: SafeGoogleFont (
                                      'Lucida Bright',
                                      22*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2575*ffem/fem,
                                      color: const Color(0xff7e132b),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 22*fem,
                    ),
                    TextButton(
                      // profilecardUEq (1:814)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(9*fem, 4*fem, 207*fem, 4*fem),
                        width: double.infinity,
                        height: 54*fem,
                        decoration: BoxDecoration (
                          color: const Color(0xffffffff),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x29000000),
                              offset: Offset(0*fem, 3*fem),
                              blurRadius: 1.5*fem,
                            ),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // creditcardG4D (1:804)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 5*fem),
                              width: 41*fem,
                              height: 41*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/credit-card.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              // paymentURB (1:803)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6*fem),
                              child: Text(
                                'Payment',
                                style: SafeGoogleFont (
                                  'Lucida Bright',
                                  22*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2575*ffem/fem,
                                  color: const Color(0xff7e132b),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 22*fem,
                    ),
                    TextButton(
                      // profilecardABX (1:815)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(9*fem, 7*fem, 125*fem, 13*fem),
                        width: double.infinity,
                        decoration: BoxDecoration (
                          color: const Color(0xffffffff),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x29000000),
                              offset: Offset(0*fem, 3*fem),
                              blurRadius: 1.5*fem,
                            ),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // helpU5j (1:807)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18*fem, 0*fem),
                              width: 34*fem,
                              height: 34*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/help.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              // helpandsupporteuK (1:806)
                              'Help and Support',
                              style: SafeGoogleFont (
                                'Lucida Bright',
                                22*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2575*ffem/fem,
                                color: const Color(0xff7e132b),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 22*fem,
                    ),
                    TextButton(
                      // profilecard5Dw (1:816)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(9*fem, 7*fem, 190*fem, 13*fem),
                        width: double.infinity,
                        decoration: BoxDecoration (
                          color: const Color(0xffffffff),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x29000000),
                              offset: Offset(0*fem, 3*fem),
                              blurRadius: 1.5*fem,
                            ),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // contactmailjxh (1:810)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18*fem, 0*fem),
                              width: 34*fem,
                              height: 34*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/contact-mail.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              // contactusK3j (1:809)
                              'Contact Us',
                              style: SafeGoogleFont (
                                'Lucida Bright',
                                22*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2575*ffem/fem,
                                color: const Color(0xff7e132b),
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
              // headerZim (1:817)
              left: 0*fem,
              top: 0*fem,
              child: Container(
                width: 393*fem,
                height: 81*fem,
                decoration: BoxDecoration (
                  border: Border.all(color: const Color(0xffc2c2c2)),
                  color: const Color(0xffffffff),
                ),
                child: Center(
                  child: Text(
                    'Settings',
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
              ),
            ),
            Positioned(
              // headerzSh (76:1831)
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
                      // arrowdownsigntonavigate7fj (I76:1831;75:1573;1:127)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 125*fem, 0*fem),
                      width: 30*fem,
                      height: 28*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/arrow-down-sign-to-navigate-2e9.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // accountinfoUeh (I76:1831;1:1762)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 132*fem, 1.5*fem),
                      child: Text(
                        'Settings',
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
                      // closeGqT (I76:1831;76:1577;1:159)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.76*fem),
                      width: 24.24*fem,
                      height: 24.24*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/close-YyB.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // iosstatusbarwithnotchsfhQy (76:1832)
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
                      // notchREV (I76:1832;9:41)
                      left: 87*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 219*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/cenima-app-user/images/notch-edT.png',
                            width: 219*fem,
                            height: 30*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // timeCuT (I76:1832;9:73)
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
                      // iosiconstatusbarseD (I76:1832;9:57)
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
                              // autogroup8kjbDrV (W2NrWUWzdYGLhafdHX8KjB)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1796*fem, 10*fem),
                              width: 48.96*fem,
                              height: 16*fem,
                            ),
                            Container(
                              // iosiconsmallmobilesignalSz9 (I76:1832;9:57;9:6)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.35*fem, 2.33*fem),
                              width: 17*fem,
                              height: 10.67*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-mobile-signal-HLR.png',
                                width: 17*fem,
                                height: 10.67*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallwifiaU5 (I76:1832;9:57;9:12)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.38*fem, 2.03*fem),
                              width: 15.27*fem,
                              height: 10.97*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-wifi-aN1.png',
                                width: 15.27*fem,
                                height: 10.97*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallbatteryhBK (I76:1832;9:57;9:17)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.67*fem),
                              width: 24.33*fem,
                              height: 11.33*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-battery-vPP.png',
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