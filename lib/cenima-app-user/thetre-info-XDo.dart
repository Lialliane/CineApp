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
        // thetreinfoGBf (134:14884)
        width: double.infinity,
        height: 852*fem,
        decoration: const BoxDecoration (
          color: Color(0xfff1f1f1),
        ),
        child: Stack(
          children: [
            Positioned(
              // autogroupkhhosBT (W2ehJfQVrU7zSP6zL3KHho)
              left: 0*fem,
              top: 110*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(29*fem, 39*fem, 31*fem, 7*fem),
                width: 391*fem,
                height: 742*fem,
                decoration: const BoxDecoration (
                  color: Color(0xfff1f1f1),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // inputandroidtextoutlinedinacti (134:14931)
                      margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 21*fem),
                      padding: EdgeInsets.fromLTRB(19*fem, 13*fem, 159*fem, 14*fem),
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
                            // phonecalloWM (I134:14931;738:5815)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                            width: 29*fem,
                            height: 29*fem,
                            child: Image.asset(
                              'assets/cenima-app-user/images/phone-call-7E5.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // textdEV (I134:14931;51:956)
                            margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 0*fem, 0*fem),
                            child: Text(
                              'First cinema\n\n\n ',
                              style: SafeGoogleFont (
                                'Lucida Bright',
                                20*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575*ffem/fem,
                                color: const Color(0xff757575),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // inputYkm (143:22049)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 22*fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: SizedBox(
                          width: 328*fem,
                          height: 56*fem,
                          child: Container(
                            // inputandroidtextoutlinedinacti (I143:22049;134:14932)
                            padding: EdgeInsets.fromLTRB(19*fem, 13*fem, 197*fem, 14*fem),
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              border: Border.all(color: const Color(0xff020202)),
                              color: const Color(0xffffffff),
                              borderRadius: BorderRadius.circular(25*fem),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // phonecallD89 (I143:22049;134:14932;738:5815)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                                  width: 29*fem,
                                  height: 29*fem,
                                  child: Image.asset(
                                    'assets/cenima-app-user/images/phone-call-F4q.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  // textPB3 (I143:22049;134:14932;51:956)
                                  margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                  child: Text(
                                    'Website',
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
                        ),
                      ),
                    ),
                    Container(
                      // inputandroidtextoutlinedinacti (134:14933)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 22*fem),
                      padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                      height: 56*fem,
                      decoration: BoxDecoration (
                        border: Border.all(color: const Color(0xff020202)),
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(25*fem),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupibnvbK3 (W2ejjvgT8jXkiaJL2riBnV)
                            padding: EdgeInsets.fromLTRB(19*fem, 13*fem, 32*fem, 14*fem),
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // phonecall2QM (I134:14933;738:5815)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                                  width: 29*fem,
                                  height: 29*fem,
                                  child: Image.asset(
                                    'assets/cenima-app-user/images/phone-call-jMw.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  // textF2D (I134:14933;51:956)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                                  child: Text(
                                    'Greenlawn Ave, Islip T...\n',
                                    style: SafeGoogleFont (
                                      'Lucida Bright',
                                      14*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2575*ffem/fem,
                                      color: const Color(0xff020202),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // line34Zx1 (134:14952)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                            width: 1*fem,
                            height: 56*fem,
                            decoration: const BoxDecoration (
                              color: Color(0xff000000),
                            ),
                          ),
                          Container(
                            // autogroupl2whobT (W2ejMMVjENokvh8QrQL2WH)
                            margin: EdgeInsets.fromLTRB(0*fem, 18*fem, 0*fem, 19*fem),
                            width: 79*fem,
                            height: double.infinity,
                            child: Center(
                              child: Text(
                                'Edit on map',
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
                        ],
                      ),
                    ),
                    Container(
                      // inputandroidtextoutlinedinacti (134:14934)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 17*fem),
                      padding: EdgeInsets.fromLTRB(19*fem, 13*fem, 58*fem, 14*fem),
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
                            // phonecallPbb (I134:14934;738:5815)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                            width: 29*fem,
                            height: 29*fem,
                            child: Image.asset(
                              'assets/cenima-app-user/images/phone-call-8TX.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // textDqX (I134:14934;51:956)
                            margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 0*fem, 0*fem),
                            child: Text(
                              'Firstcinema@gmail.com\n\n\n ',
                              style: SafeGoogleFont (
                                'Lucida Bright',
                                20*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575*ffem/fem,
                                color: const Color(0xff757575),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupezkdZH7 (W2ehn9chVu9GEd3eybezkd)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 289*fem),
                      width: 328*fem,
                      height: 64*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // inputandroidtextoutlinedinacti (134:14935)
                            left: 0*fem,
                            top: 5*fem,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(19*fem, 13*fem, 165*fem, 14*fem),
                              width: 328*fem,
                              height: 56*fem,
                              decoration: BoxDecoration (
                                border: Border.all(color: const Color(0xff020202)),
                                color: const Color(0xffffffff),
                                borderRadius: BorderRadius.circular(25*fem),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // phonecallsqX (I134:14935;738:5815)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                                    width: 29*fem,
                                    height: 29*fem,
                                    child: Image.asset(
                                      'assets/cenima-app-user/images/phone-call-3kZ.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    // textFr5 (I134:14935;51:956)
                                    margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                    child: Text(
                                      '000 000 000',
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
                          ),
                          Positioned(
                            // component9ZkH (134:14953)
                            left: 232*fem,
                            top: 0*fem,
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(11*fem, 20*fem, 6.41*fem, 16*fem),
                                width: 91*fem,
                                height: 64*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // RR7 (I134:14953;1:156)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18.27*fem, 0*fem),
                                      child: Text(
                                        '+962',
                                        style: SafeGoogleFont (
                                          'Tw Cen MT',
                                          22.0362129211*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2575*ffem/fem,
                                          color: const Color(0xffa6a6a6),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // arrowdownsigntonavigateRZX (I134:14953;1:158)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4.09*fem),
                                      width: 11.32*fem,
                                      height: 14.32*fem,
                                      child: Image.asset(
                                        'assets/cenima-app-user/images/arrow-down-sign-to-navigate-Tdo.png',
                                        fit: BoxFit.cover,
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
                    Container(
                      // mainbuttonRhw (134:14886)
                      margin: EdgeInsets.fromLTRB(68*fem, 0*fem, 62*fem, 0*fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: SizedBox(
                          width: double.infinity,
                          height: 37*fem,
                          child: Container(
                            // frame4Yvy (I134:14886;18:475)
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              border: Border.all(color: const Color(0xff707070)),
                              color: const Color(0xff7e132b),
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
                  ],
                ),
              ),
            ),
            Positioned(
              // headerpn1 (134:14959)
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
                      // arrowdownsigntonavigatejnV (I134:14959;75:1573;1:127)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 131.5*fem, 0*fem),
                      width: 30*fem,
                      height: 28*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/arrow-down-sign-to-navigate-nuB.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // accountinfoxQM (I134:14959;1:1762)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 138.5*fem, 1.5*fem),
                      child: Text(
                        'Profile',
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
                      // close5dP (I134:14959;76:1577;1:159)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.76*fem),
                      width: 24.24*fem,
                      height: 24.24*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/close-anR.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // iosstatusbarwithnotchsf6Hb (134:14903)
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
                      // notchgWh (I134:14903;9:41)
                      left: 87*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 219*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/cenima-app-user/images/notch-JLV.png',
                            width: 219*fem,
                            height: 30*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // timeEAq (I134:14903;9:73)
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
                      // iosiconstatusbar7P3 (I134:14903;9:57)
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
                              // autogrouptuv5enH (W2eokZVpiPqNsfU5TZtuv5)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1796*fem, 10*fem),
                              width: 48.96*fem,
                              height: 16*fem,
                            ),
                            Container(
                              // iosiconsmallmobilesignalHqF (I134:14903;9:57;9:6)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.35*fem, 2.33*fem),
                              width: 17*fem,
                              height: 10.67*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-mobile-signal-aUm-jMf.png',
                                width: 17*fem,
                                height: 10.67*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallwifi4zR (I134:14903;9:57;9:12)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.38*fem, 2.03*fem),
                              width: 15.27*fem,
                              height: 10.97*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-wifi-Xoj.png',
                                width: 15.27*fem,
                                height: 10.97*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallbatterynow (I134:14903;9:57;9:17)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.67*fem),
                              width: 24.33*fem,
                              height: 11.33*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-battery-54R.png',
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