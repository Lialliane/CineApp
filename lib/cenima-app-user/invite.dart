import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

class Invite extends StatelessWidget {
  const Invite({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: SizedBox(
        // varifyemailQMj (134:15063)
        width: double.infinity,
        height: 852 * fem,
        child: Stack(
          children: [
            Positioned(
              // rectangle20m5o (134:15064)
              left: 2 * fem,
              top: 0 * fem,
              child: Align(
                child: SizedBox(
                  width: 392 * fem,
                  height: 852 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff707070)),
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(42 * fem),
                        topRight: Radius.circular(42 * fem),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // ifyoucantfindtheemailcheckoutt (134:15072)
              left: 42 * fem,
              top: 411 * fem,
              child: Align(
                child: SizedBox(
                  width: 284 * fem,
                  height: 17 * fem,
                  child: Text(
                    'Both of you can edit information about the theatre.',
                    style: SafeGoogleFont(
                      'Lucida Bright',
                      13 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2575 * ffem / fem,
                      color: const Color(0xff828282),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // checkoutyouremailforaverificat (134:15073)
              left: 50 * fem,
              top: 234 * fem,
              child: Align(
                child: SizedBox(
                  width: 245 * fem,
                  height: 76 * fem,
                  child: Text(
                    'Enter their email and we’ll send them a link to set their password',
                    style: SafeGoogleFont(
                      'Segoe UI',
                      20 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2575 * ffem / fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // mainbuttoncvy (134:15074)
              left: 113 * fem,
              top: 752 * fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      17.5 * fem, 0 * fem, 17.5 * fem, 0 * fem),
                  width: 166 * fem,
                  height: 57 * fem,
                  child: Container(
                    // frame4W9B (I134:15074;18:475)
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff707070)),
                      color: const Color(0xff9a2044),
                      borderRadius: BorderRadius.circular(54 * fem),
                    ),
                    child: Center(
                      child: Text(
                        'SEND',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Lucida Bright',
                          19.8325920105 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2575 * ffem / fem,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // inputandroidtextoutlinedinacti (134:15103)
              left: 31 * fem,
              top: 336 * fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(
                    19 * fem, 13 * fem, 217 * fem, 14 * fem),
                width: 328 * fem,
                height: 56 * fem,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff020202)),
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(25 * fem),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // phonecalleRj (I134:15103;738:5815)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 15 * fem, 0 * fem),
                      width: 29 * fem,
                      height: 29 * fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/phone-call-F7K.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // textrXo (I134:15103;51:956)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 1 * fem, 0 * fem, 0 * fem),
                      child: Text(
                        'Email',
                        style: SafeGoogleFont(
                          'Tw Cen MT',
                          20 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2 * ffem / fem,
                          letterSpacing: 0.150000006 * fem,
                          color: const Color(0xff757575),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // headerzGd (143:22039)
              left: 2 * fem,
              top: 26 * fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(
                    5 * fem, 32.5 * fem, 1.76 * fem, 9.5 * fem),
                width: 391 * fem,
                height: 70 * fem,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffc2c2c2)),
                  color: const Color(0xffffffff),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // arrowdownsigntonavigateKiD (I143:22039;75:1573;1:127)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 68.5 * fem, 0 * fem),
                      width: 30 * fem,
                      height: 28 * fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/arrow-down-sign-to-navigate-HmF.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // accountinfoYL5 (I143:22039;1:1762)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 75.5 * fem, 1.5 * fem),
                      child: Text(
                        'Invite another admin',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Segoe UI',
                          20 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2575 * ffem / fem,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      // closesFs (I143:22039;76:1577;1:159)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 1.76 * fem),
                      width: 24.24 * fem,
                      height: 24.24 * fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/close-bUH.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // iosstatusbarwithnotchsfrdb (134:15065)
              left: 2 * fem,
              top: 0 * fem,
              child: Container(
                width: 391 * fem,
                height: 44 * fem,
                decoration: const BoxDecoration(
                  color: Color(0xffffffff),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      // notchPX3 (I134:15065;9:41)
                      left: 86 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 219 * fem,
                          height: 30 * fem,
                          child: Image.asset(
                            'assets/cenima-app-user/images/notch-ycH.png',
                            width: 219 * fem,
                            height: 30 * fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // timeNtm (I134:15065;9:73)
                      left: 32 * fem,
                      top: 13 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 26 * fem,
                          height: 21 * fem,
                          child: Text(
                            '9:41',
                            style: SafeGoogleFont(
                              'SF Pro Text',
                              15 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.4 * ffem / fem,
                              letterSpacing: -0.3199999928 * fem,
                              color: const Color(0xff020202),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // iosiconstatusbar3tR (I134:15065;9:57)
                      left: -2 * fem,
                      top: 5 * fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                            20.04 * fem, 0 * fem, 0 * fem, 0 * fem),
                        width: 1929 * fem,
                        height: 26 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              // autogroupq9fsQMb (W2ew9gW8iZSMgfYyeqq9fs)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 1796 * fem, 10 * fem),
                              width: 48.96 * fem,
                              height: 16 * fem,
                            ),
                            Container(
                              // iosiconsmallmobilesignaldVF (I134:15065;9:57;9:6)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 4.35 * fem, 2.33 * fem),
                              width: 17 * fem,
                              height: 10.67 * fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-mobile-signal-Pxh.png',
                                width: 17 * fem,
                                height: 10.67 * fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallwifiZnD (I134:15065;9:57;9:12)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 3.38 * fem, 2.03 * fem),
                              width: 15.27 * fem,
                              height: 10.97 * fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-wifi-oU9.png',
                                width: 15.27 * fem,
                                height: 10.97 * fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallbatteryMTB (I134:15065;9:57;9:17)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 2.67 * fem),
                              width: 24.33 * fem,
                              height: 11.33 * fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-battery-EUM.png',
                                width: 24.33 * fem,
                                height: 11.33 * fem,
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
