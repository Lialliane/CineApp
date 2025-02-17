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
        // adminsearchandaddmoviebho (117:13402)
        width: double.infinity,
        height: 852*fem,
        child: Stack(
          children: [
            Positioned(
              // rectangle433NMB (117:13403)
              left: 0*fem,
              top: 114*fem,
              child: Align(
                child: SizedBox(
                  width: 393*fem,
                  height: 756*fem,
                  child: Container(
                    decoration: const BoxDecoration (
                      color: Color(0xfff1f1f1),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // screen1Gqs (118:13804)
              left: 18.5*fem,
              top: 208*fem,
              child: Align(
                child: SizedBox(
                  width: 117*fem,
                  height: 39*fem,
                  child: Text(
                    'Screen 1',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Cambria',
                      31*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xff7e132b),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // screen2mw3 (118:13805)
              left: 19.5*fem,
              top: 480*fem,
              child: Align(
                child: SizedBox(
                  width: 117*fem,
                  height: 39*fem,
                  child: Text(
                    'Screen 2',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Cambria',
                      31*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xff7e132b),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // schedulesrr1 (118:13806)
              left: 23*fem,
              top: 272*fem,
              child: Align(
                child: SizedBox(
                  width: 97*fem,
                  height: 28*fem,
                  child: Text(
                    'Schedules',
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
              // schedules1sK (118:13807)
              left: 27*fem,
              top: 537*fem,
              child: Align(
                child: SizedBox(
                  width: 97*fem,
                  height: 28*fem,
                  child: Text(
                    'Schedules',
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
              // group86vN1 (118:13808)
              left: 7*fem,
              top: 319*fem,
              child: Container(
                width: 96*fem,
                height: 49*fem,
                decoration: BoxDecoration (
                  border: Border.all(color: const Color(0xff383838)),
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(52*fem),
                ),
                child: Center(
                  child: Text(
                    '09:10',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Lucida Bright',
                      20*ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // group93ix5 (118:13811)
              left: 12*fem,
              top: 584*fem,
              child: Container(
                width: 96*fem,
                height: 49*fem,
                decoration: BoxDecoration (
                  border: Border.all(color: const Color(0xff383838)),
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(52*fem),
                ),
                child: Center(
                  child: Text(
                    '10:05',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Lucida Bright',
                      20*ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // group89b8h (118:13814)
              left: 7*fem,
              top: 389*fem,
              child: Container(
                width: 96*fem,
                height: 49*fem,
                decoration: BoxDecoration (
                  border: Border.all(color: const Color(0xff383838)),
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(52*fem),
                ),
                child: Center(
                  child: Text(
                    '02:40',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Lucida Bright',
                      20*ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // group87cT7 (118:13820)
              left: 197*fem,
              top: 319*fem,
              child: Container(
                width: 96*fem,
                height: 49*fem,
                decoration: BoxDecoration (
                  border: Border.all(color: const Color(0xff1e1e1e)),
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(52*fem),
                ),
                child: Center(
                  child: Text(
                    '11:55',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Lucida Bright',
                      20*ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // group953gq (118:13823)
              left: 202*fem,
              top: 584*fem,
              child: Container(
                width: 96*fem,
                height: 49*fem,
                decoration: BoxDecoration (
                  border: Border.all(color: const Color(0xff383838)),
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(52*fem),
                ),
                child: Center(
                  child: Text(
                    '10: 30',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Lucida Bright',
                      20*ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // addnewbuttonL3f (118:13826)
              left: 297*fem,
              top: 277*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 88*fem,
                  height: 34*fem,
                  decoration: BoxDecoration (
                    border: Border.all(color: const Color(0xffff1e60)),
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
                        color: const Color(0xffff1e60),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // addnewbutton6qT (118:13828)
              left: 304*fem,
              top: 542*fem,
              child: Container(
                width: 85*fem,
                height: 34*fem,
                decoration: BoxDecoration (
                  border: Border.all(color: const Color(0xff707070)),
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
                      color: const Color(0xff707070),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // group85X3b (118:13830)
              left: 110*fem,
              top: 322*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(9.5*fem, 8*fem, 6*fem, 6*fem),
                  width: 73*fem,
                  height: 42*fem,
                  decoration: BoxDecoration (
                    border: Border.all(color: const Color(0xff4c4c4c)),
                    color: const Color(0xffffffff),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // amL9T (I118:13830;118:13555)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.5*fem, 0*fem),
                        child: Text(
                          'AM',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Lucida Bright',
                            22*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2575*ffem/fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                      Container(
                        // arrowdownsigntonavigatevtM (I118:13830;118:13557;1:127)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                        width: 17*fem,
                        height: 19*fem,
                        child: Image.asset(
                          'assets/cenima-app-user/images/arrow-down-sign-to-navigate-dFT.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // group96wHf (118:13831)
              left: 115*fem,
              top: 587*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(9.5*fem, 8*fem, 6*fem, 6*fem),
                  width: 73*fem,
                  height: 42*fem,
                  decoration: BoxDecoration (
                    border: Border.all(color: const Color(0xff4c4c4c)),
                    color: const Color(0xffffffff),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // amBLR (I118:13831;118:13555)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.5*fem, 0*fem),
                        child: Text(
                          'AM',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Lucida Bright',
                            22*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2575*ffem/fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                      Container(
                        // arrowdownsigntonavigateNvh (I118:13831;118:13557;1:127)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                        width: 17*fem,
                        height: 19*fem,
                        child: Image.asset(
                          'assets/cenima-app-user/images/arrow-down-sign-to-navigate-EwX.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // group92w6d (118:13832)
              left: 110*fem,
              top: 392*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(9.5*fem, 8*fem, 6*fem, 6*fem),
                  width: 73*fem,
                  height: 42*fem,
                  decoration: BoxDecoration (
                    border: Border.all(color: const Color(0xff4c4c4c)),
                    color: const Color(0xffffffff),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // am2XP (I118:13832;118:13555)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.5*fem, 0*fem),
                        child: Text(
                          'AM',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Lucida Bright',
                            22*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2575*ffem/fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                      Container(
                        // arrowdownsigntonavigateNDs (I118:13832;118:13557;1:127)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                        width: 17*fem,
                        height: 19*fem,
                        child: Image.asset(
                          'assets/cenima-app-user/images/arrow-down-sign-to-navigate-BLh.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // group91BSD (118:13834)
              left: 305*fem,
              top: 322*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(9.5*fem, 8*fem, 6*fem, 6*fem),
                  width: 73*fem,
                  height: 42*fem,
                  decoration: BoxDecoration (
                    border: Border.all(color: const Color(0xff4c4c4c)),
                    color: const Color(0xffffffff),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // amdSd (I118:13834;118:13555)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.5*fem, 0*fem),
                        child: Text(
                          'AM',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Lucida Bright',
                            22*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2575*ffem/fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                      Container(
                        // arrowdownsigntonavigate2jf (I118:13834;118:13557;1:127)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                        width: 17*fem,
                        height: 19*fem,
                        child: Image.asset(
                          'assets/cenima-app-user/images/arrow-down-sign-to-navigate-csX.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // group98F6d (118:13835)
              left: 310*fem,
              top: 587*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(9*fem, 8*fem, 6*fem, 6*fem),
                  width: 73*fem,
                  height: 42*fem,
                  decoration: BoxDecoration (
                    border: Border.all(color: const Color(0xff4c4c4c)),
                    color: const Color(0xffffffff),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // pmqU9 (I118:13835;118:13576)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 0*fem),
                        child: Text(
                          'PM',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Lucida Bright',
                            22*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2575*ffem/fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                      Container(
                        // arrowdownsigntonavigatea4M (I118:13835;118:13578;1:127)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                        width: 17*fem,
                        height: 19*fem,
                        child: Image.asset(
                          'assets/cenima-app-user/images/arrow-down-sign-to-navigate-gF7.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // addnewbuttonysB (118:14437)
              left: 62*fem,
              top: 152*fem,
              child: Container(
                width: 265*fem,
                height: 34*fem,
                decoration: BoxDecoration (
                  border: Border.all(color: const Color(0xff555555)),
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(43*fem),
                ),
                child: Center(
                  child: Text(
                    'COPY YESTERDAY’S SCHEDULE',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Lucida Bright',
                      16*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xff555555),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // mainbuttonakV (117:13409)
              left: 96*fem,
              top: 802*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: SizedBox(
                  width: 201*fem,
                  height: 37*fem,
                  child: Container(
                    // frame4nLm (I117:13409;18:475)
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
              // headertHK (117:13410)
              left: 0*fem,
              top: 44*fem,
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
                      // arrowdownsigntonavigateo2u (I117:13410;75:1573;1:127)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 40.5*fem, 0*fem),
                      width: 30*fem,
                      height: 28*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/arrow-down-sign-to-navigate-nGd.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // accountinfoox1 (I117:13410;1:1762)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 47.5*fem, 1.5*fem),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: SafeGoogleFont (
                            'Segoe UI',
                            20*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2575*ffem/fem,
                            color: const Color(0xff000000),
                          ),
                          children: [
                            const TextSpan(
                              text: 'Edit Schedules- ',
                            ),
                            TextSpan(
                              text: 'Thu, 08 Dec',
                              style: SafeGoogleFont (
                                'Segoe UI',
                                20*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2575*ffem/fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // closehbT (I117:13410;76:1577;1:159)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.76*fem),
                      width: 24.24*fem,
                      height: 24.24*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/close-tww.png',
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