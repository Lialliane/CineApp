import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

class TheaterInformation extends StatelessWidget {
  const TheaterInformation({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // thetreinfo5ZX (132:14709)
        width: double.infinity,
        height: 852*fem,
        decoration: const BoxDecoration (
          color: Color(0xfff1f1f1),
        ),
        child: Stack(
          children: [
            Positioned(
              // rectangletheatreinfoBFB (132:14710)
              left: 0*fem,
              top: 110*fem,
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
              // mainbuttonjvu (134:14782)
              left: 97*fem,
              top: 808*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: SizedBox(
                  width: 201*fem,
                  height: 37*fem,
                  child: Container(
                    // frame4hFT (I134:14782;18:475)
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: const Color(0xff707070)),
                      color: const Color(0xff7e132b),
                      borderRadius: BorderRadius.circular(54*fem),
                    ),
                    child: Center(
                      child: Text(
                        'EDIT',
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
              // firstcinemaYvH (132:14752)
              left: 105*fem,
              top: 155*fem,
              child: Align(
                child: SizedBox(
                  width: 106*fem,
                  height: 26*fem,
                  child: Text(
                    'First cinema\n\n\n ',
                    style: SafeGoogleFont (
                      'Lucida Bright',
                      20*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // firstcinemagmailcom3Em (132:14758)
              left: 106*fem,
              top: 477*fem,
              child: Align(
                child: SizedBox(
                  width: 207*fem,
                  height: 26*fem,
                  child: Text(
                    'Firstcinema@gmail.com\n\n\n ',
                    style: SafeGoogleFont (
                      'Lucida Bright',
                      20*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // y1w (132:14760)
              left: 106*fem,
              top: 413*fem,
              child: Align(
                child: SizedBox(
                  width: 132*fem,
                  height: 26*fem,
                  child: Text(
                    '000 000 000 000',
                    style: SafeGoogleFont (
                      'Lucida Bright',
                      20*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // greenlawnaveislipterracenewyor (132:14756)
              left: 105*fem,
              top: 203*fem,
              child: Align(
                child: SizedBox(
                  width: 239*fem,
                  height: 51*fem,
                  child: Text(
                    'Greenlawn Ave, Islip Terrace, New York(NY), 11752\n',
                    style: SafeGoogleFont (
                      'Lucida Bright',
                      20*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // firstnameN61 (132:14754)
              left: 11*fem,
              top: 156*fem,
              child: Align(
                child: SizedBox(
                  width: 71*fem,
                  height: 28*fem,
                  child: Text(
                    'Name:-',
                    style: SafeGoogleFont (
                      'Tw Cen MT',
                      22.0362129211*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xff7e132b),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // firstnamervH (132:14755)
              left: 11*fem,
              top: 204*fem,
              child: Align(
                child: SizedBox(
                  width: 92*fem,
                  height: 28*fem,
                  child: Text(
                    'Address:-',
                    style: SafeGoogleFont (
                      'Tw Cen MT',
                      22.0362129211*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xff7e132b),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // firstnamecHB (132:14757)
              left: 11*fem,
              top: 325*fem,
              child: Align(
                child: SizedBox(
                  width: 92*fem,
                  height: 28*fem,
                  child: Text(
                    'Website:-',
                    style: SafeGoogleFont (
                      'Tw Cen MT',
                      22.0362129211*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xff7e132b),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // firstnameK57 (132:14759)
              left: 11*fem,
              top: 387*fem,
              child: Align(
                child: SizedBox(
                  width: 93*fem,
                  height: 56*fem,
                  child: Text(
                    'Phone\nNumber:-',
                    style: SafeGoogleFont (
                      'Tw Cen MT',
                      22.0362129211*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xff7e132b),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // firstnameS3F (134:14773)
              left: 11*fem,
              top: 475*fem,
              child: Align(
                child: SizedBox(
                  width: 69*fem,
                  height: 28*fem,
                  child: Text(
                    'Email:-',
                    style: SafeGoogleFont (
                      'Tw Cen MT',
                      22.0362129211*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xff7e132b),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // line1MZX (134:14775)
              left: 0*fem,
              top: 191*fem,
              child: Align(
                child: SizedBox(
                  width: 393*fem,
                  height: 1*fem,
                  child: Container(
                    decoration: const BoxDecoration (
                      color: Color(0xff707070),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // line26vR (134:14777)
              left: 0*fem,
              top: 298*fem,
              child: Align(
                child: SizedBox(
                  width: 393*fem,
                  height: 1*fem,
                  child: Container(
                    decoration: const BoxDecoration (
                      color: Color(0xff707070),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // line374q (134:14778)
              left: 0*fem,
              top: 374*fem,
              child: Align(
                child: SizedBox(
                  width: 393*fem,
                  height: 1*fem,
                  child: Container(
                    decoration: const BoxDecoration (
                      color: Color(0xff707070),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // line45fs (134:14779)
              left: 0*fem,
              top: 457*fem,
              child: Align(
                child: SizedBox(
                  width: 393*fem,
                  height: 1*fem,
                  child: Container(
                    decoration: const BoxDecoration (
                      color: Color(0xff707070),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // line5VUh (134:14781)
              left: 0*fem,
              top: 529*fem,
              child: Align(
                child: SizedBox(
                  width: 393*fem,
                  height: 1*fem,
                  child: Container(
                    decoration: const BoxDecoration (
                      color: Color(0xff707070),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // iosstatusbarwithnotchsfuoK (132:14726)
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
                      // notchrc5 (I132:14726;9:41)
                      left: 87*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 219*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/cenima-app-user/images/notch-afP.png',
                            width: 219*fem,
                            height: 30*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // timeqiu (I132:14726;9:73)
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
                      // iosiconstatusbarigD (I132:14726;9:57)
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
                              // autogroupmnhbGbF (W2efr3AqYF4RcvhWPDmnhB)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1796*fem, 10*fem),
                              width: 48.96*fem,
                              height: 16*fem,
                            ),
                            Container(
                              // iosiconsmallmobilesignalViu (I132:14726;9:57;9:6)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.35*fem, 2.33*fem),
                              width: 17*fem,
                              height: 10.67*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-mobile-signal-u8Z.png',
                                width: 17*fem,
                                height: 10.67*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallwifipeh (I132:14726;9:57;9:12)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.38*fem, 2.03*fem),
                              width: 15.27*fem,
                              height: 10.97*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-wifi-NqK.png',
                                width: 15.27*fem,
                                height: 10.97*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallbatteryPrD (I132:14726;9:57;9:17)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.67*fem),
                              width: 24.33*fem,
                              height: 11.33*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-battery-5LR.png',
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
              // header5sT (143:22113)
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
                      // arrowdownsigntonavigatepCm (I143:22113;75:1573;1:127)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 72*fem, 0*fem),
                      width: 30*fem,
                      height: 28*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/arrow-down-sign-to-navigate-BV7.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // accountinfoAfw (I143:22113;1:1762)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 79*fem, 1.5*fem),
                      child: Text(
                        'Theatre Information',
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
                      // closewq7 (I143:22113;76:1577;1:159)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.76*fem),
                      width: 24.24*fem,
                      height: 24.24*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/close-7Nm.png',
                        fit: BoxFit.cover,
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