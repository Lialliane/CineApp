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
        // mymoviesupdatedz2y (114:12672)
        width: double.infinity,
        height: 852*fem,
        decoration: const BoxDecoration (
          color: Color(0xfff1f1f1),
        ),
        child: Stack(
          children: [
            Positioned(
              // autogroupmtdxup9 (W2QHeLVZajrFsrtjmpMTDX)
              left: 0*fem,
              top: 104*fem,
              child: SizedBox(
                width: 443*fem,
                height: 742*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle438B7 (114:12673)
                      left: 0*fem,
                      top: 0*fem,
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
                      // filmcardiQD (114:12708)
                      left: 15*fem,
                      top: 24*fem,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 106*fem, 0*fem),
                          width: 428*fem,
                          height: 174*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // aKw (114:12710)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                                width: 122*fem,
                                height: 174*fem,
                                child: Image.asset(
                                  'assets/cenima-app-user/images/-uKB.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                // autogroupnegdcGd (W2QJL9gZE5vZVCjh3uNEGD)
                                width: 185*fem,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // theshawshankredemptionej7 (114:12711)
                                      margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                      child: Text(
                                        'The Shawshank Redemption',
                                        style: SafeGoogleFont (
                                          'Lucida Bright',
                                          15*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2575*ffem/fem,
                                          color: const Color(0xff7e132b),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12*fem,
                                    ),
                                    Text(
                                      // drama8nh (114:12712)
                                      'Drama',
                                      style: SafeGoogleFont (
                                        'Lucida Bright',
                                        15*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2575*ffem/fem,
                                        color: const Color(0xffff2153),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12*fem,
                                    ),
                                    Container(
                                      // autogroupmyw7MfT (W2QJnJbeLB6unqZ8vkmYw7)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 56*fem, 0*fem),
                                      width: double.infinity,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // durationYE9 (114:12713)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19*fem, 0*fem),
                                            child: Text(
                                              'Duration:-',
                                              style: SafeGoogleFont (
                                                'Lucida Bright',
                                                15*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2575*ffem/fem,
                                                color: const Color(0xff464646),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            // h22mwn5 (114:12714)
                                            '2h 22m',
                                            style: SafeGoogleFont (
                                              'Lucida Bright',
                                              15*ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.2575*ffem/fem,
                                              color: const Color(0xff464646),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12*fem,
                                    ),
                                    Container(
                                      // autogroupyzlrZoT (W2QK6Tk4CDDj8qdGBNYZLR)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 105*fem, 0*fem),
                                      width: double.infinity,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // starZws (114:12716)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                            width: 22*fem,
                                            height: 22*fem,
                                            child: Image.asset(
                                              'assets/cenima-app-user/images/star-tvR.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Text(
                                            // PR7 (114:12715)
                                            '9.3/10',
                                            style: SafeGoogleFont (
                                              'Lucida Bright',
                                              17*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2575*ffem/fem,
                                              color: const Color(0xffff2153),
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
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // rectangle14f7j (114:12674)
              left: 0*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 151*fem,
                  height: 34*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(16*fem),
                      color: const Color(0xffff2153),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0*fem, 3*fem),
                          blurRadius: 0.25*fem,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // headervSy (114:12679)
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
                      // arrowdownsigntonavigateqyF (I114:12679;75:1573;1:127)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 115.5*fem, 0*fem),
                      width: 30*fem,
                      height: 28*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/arrow-down-sign-to-navigate-r1B.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // accountinfodGq (I114:12679;1:1762)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 122.5*fem, 1.5*fem),
                      child: Text(
                        'My Movies',
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
                      // closeAg5 (I114:12679;76:1577;1:159)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.76*fem),
                      width: 24.24*fem,
                      height: 24.24*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/close-qid.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // iosstatusbarwithnotchsfMkZ (114:12680)
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
                      // notchhC9 (I114:12680;9:41)
                      left: 87*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 219*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/cenima-app-user/images/notch-xj7.png',
                            width: 219*fem,
                            height: 30*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // time5Tb (I114:12680;9:73)
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
                      // iosiconstatusbarZXB (I114:12680;9:57)
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
                              // autogroupq6db8Cu (W2QMoJQPYHg9NEb7WwQ6DB)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1796*fem, 10*fem),
                              width: 48.96*fem,
                              height: 16*fem,
                            ),
                            Container(
                              // iosiconsmallmobilesignalyDX (I114:12680;9:57;9:6)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.35*fem, 2.33*fem),
                              width: 17*fem,
                              height: 10.67*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-mobile-signal-jkZ.png',
                                width: 17*fem,
                                height: 10.67*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallwifi7j3 (I114:12680;9:57;9:12)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.38*fem, 2.03*fem),
                              width: 15.27*fem,
                              height: 10.97*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-wifi-too.png',
                                width: 15.27*fem,
                                height: 10.97*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallbattery5JV (I114:12680;9:57;9:17)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.67*fem),
                              width: 24.33*fem,
                              height: 11.33*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-battery-nVs.png',
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