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
        // adminsearchandaddmovieHoj (118:13707)
        width: double.infinity,
        height: 852*fem,
        child: Stack(
          children: [
            Positioned(
              // rectangle431Bnd (274:20224)
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
              // screen1NMK (118:13709)
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
              // screen22qB (118:13803)
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
              // schedulesxMT (118:13711)
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
              // schedules3nD (118:13712)
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
              // group86ouo (118:13717)
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
              // group93ENq (118:13720)
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
              // group89qX3 (118:13723)
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
              // group101kR3 (139:16725)
              left: 201*fem,
              top: 385*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
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
                      '00:00',
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
            ),
            Positioned(
              // group876mj (118:13726)
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
              // group9597j (118:13729)
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
              // addnewbuttonxjP (118:13732)
              left: 297*fem,
              top: 277*fem,
              child: Container(
                width: 88*fem,
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
              // addnewbuttonE4d (118:13734)
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
              // line36GQd (118:13741)
              left: 0*fem,
              top: 455*fem,
              child: Align(
                child: SizedBox(
                  width: 393*fem,
                  height: 1*fem,
                  child: Container(
                    decoration: const BoxDecoration (
                      color: Color(0xff404040),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // group85d8h (118:13736)
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
                        // amVq7 (I118:13736;118:13555)
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
                        // arrowdownsigntonavigateeLd (I118:13736;118:13557;1:127)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                        width: 17*fem,
                        height: 19*fem,
                        child: Image.asset(
                          'assets/cenima-app-user/images/arrow-down-sign-to-navigate-SZ3.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // group964QM (118:13737)
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
                        // ammCH (I118:13737;118:13555)
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
                        // arrowdownsigntonavigateuho (I118:13737;118:13557;1:127)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                        width: 17*fem,
                        height: 19*fem,
                        child: Image.asset(
                          'assets/cenima-app-user/images/arrow-down-sign-to-navigate-ZpH.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // group928aZ (118:13738)
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
                        // amaL5 (I118:13738;118:13555)
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
                        // arrowdownsigntonavigateAp5 (I118:13738;118:13557;1:127)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                        width: 17*fem,
                        height: 19*fem,
                        child: Image.asset(
                          'assets/cenima-app-user/images/arrow-down-sign-to-navigate-eKP.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // group1008PX (118:13796)
              left: 304*fem,
              top: 388*fem,
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
                        // amCnh (I118:13796;118:13555)
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
                        // arrowdownsigntonavigateLGd (I118:13796;118:13557;1:127)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                        width: 17*fem,
                        height: 19*fem,
                        child: Image.asset(
                          'assets/cenima-app-user/images/arrow-down-sign-to-navigate-PEM.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // group91jZf (118:13739)
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
                        // amnAZ (I118:13739;118:13555)
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
                        // arrowdownsigntonavigateaMK (I118:13739;118:13557;1:127)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                        width: 17*fem,
                        height: 19*fem,
                        child: Image.asset(
                          'assets/cenima-app-user/images/arrow-down-sign-to-navigate-sbb.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // group98niH (118:13740)
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
                        // pm43X (I118:13740;118:13576)
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
                        // arrowdownsigntonavigatesFs (I118:13740;118:13578;1:127)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                        width: 17*fem,
                        height: 19*fem,
                        child: Image.asset(
                          'assets/cenima-app-user/images/arrow-down-sign-to-navigate-dQq.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // addnewbutton33s (118:14435)
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
              // mainbuttonhnd (118:13742)
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
                    // frame4Sff (I118:13742;18:475)
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
              // headerZth (118:13743)
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
                      // arrowdownsigntonavigateeHs (I118:13743;75:1573;1:127)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 40.5*fem, 0*fem),
                      width: 30*fem,
                      height: 28*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/arrow-down-sign-to-navigate-jsj.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // accountinforPw (I118:13743;1:1762)
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
                      // closeisP (I118:13743;76:1577;1:159)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.76*fem),
                      width: 24.24*fem,
                      height: 24.24*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/close-eQu.png',
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