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
        // adminsearchandaddmovie5hX (274:19895)
        width: double.infinity,
        height: 808*fem,
        child: Stack(
          children: [
            Positioned(
              // rectangle4343f (274:20229)
              left: 0*fem,
              top: 70*fem,
              child: Align(
                child: SizedBox(
                  width: 393*fem,
                  height: 738*fem,
                  child: Container(
                    decoration: const BoxDecoration (
                      color: Color(0xfff1f1f1),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // screen1Mgy (274:19897)
              left: 18.5*fem,
              top: 164*fem,
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
              // screen2TtR (274:19898)
              left: 19.5*fem,
              top: 436*fem,
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
              // schedulesMsK (274:19899)
              left: 23*fem,
              top: 228*fem,
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
              // scheduleseV3 (274:19900)
              left: 27*fem,
              top: 493*fem,
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
              // group86y9w (274:19901)
              left: 7*fem,
              top: 275*fem,
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
              // group93Adj (274:19904)
              left: 12*fem,
              top: 540*fem,
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
              // group89yUh (274:19907)
              left: 7*fem,
              top: 345*fem,
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
              // group87eUM (274:19910)
              left: 197*fem,
              top: 275*fem,
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
              // group95Tq7 (274:19913)
              left: 202*fem,
              top: 540*fem,
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
              // addnewbuttonJUM (274:19916)
              left: 297*fem,
              top: 233*fem,
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
              // addnewbuttonVhF (274:19918)
              left: 304*fem,
              top: 498*fem,
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
              // group85kWh (274:19920)
              left: 110*fem,
              top: 278*fem,
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
                        // amNAh (I274:19920;118:13555)
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
                        // arrowdownsigntonavigatekww (I274:19920;118:13557;1:127)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                        width: 17*fem,
                        height: 19*fem,
                        child: Image.asset(
                          'assets/cenima-app-user/images/arrow-down-sign-to-navigate-s2M.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // group96X5X (274:19921)
              left: 115*fem,
              top: 543*fem,
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
                        // amoBT (I274:19921;118:13555)
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
                        // arrowdownsigntonavigatewS5 (I274:19921;118:13557;1:127)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                        width: 17*fem,
                        height: 19*fem,
                        child: Image.asset(
                          'assets/cenima-app-user/images/arrow-down-sign-to-navigate-7tZ.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // group92mAD (274:19922)
              left: 110*fem,
              top: 348*fem,
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
                        // am1yf (I274:19922;118:13555)
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
                        // arrowdownsigntonavigate2Ny (I274:19922;118:13557;1:127)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                        width: 17*fem,
                        height: 19*fem,
                        child: Image.asset(
                          'assets/cenima-app-user/images/arrow-down-sign-to-navigate-NLD.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // group91SBo (274:19923)
              left: 305*fem,
              top: 278*fem,
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
                        // amUnh (I274:19923;118:13555)
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
                        // arrowdownsigntonavigate51o (I274:19923;118:13557;1:127)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                        width: 17*fem,
                        height: 19*fem,
                        child: Image.asset(
                          'assets/cenima-app-user/images/arrow-down-sign-to-navigate-kPf.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // group98qv5 (274:19924)
              left: 310*fem,
              top: 543*fem,
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
                        // pmV7T (I274:19924;118:13576)
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
                        // arrowdownsigntonavigatecbP (I274:19924;118:13578;1:127)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                        width: 17*fem,
                        height: 19*fem,
                        child: Image.asset(
                          'assets/cenima-app-user/images/arrow-down-sign-to-navigate-6eZ.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // addnewbuttonphT (274:19925)
              left: 62*fem,
              top: 108*fem,
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
              // mainbuttonxKo (274:19927)
              left: 96*fem,
              top: 758*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: SizedBox(
                  width: 201*fem,
                  height: 37*fem,
                  child: Container(
                    // frame4xj7 (I274:19927;18:475)
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
              // headerekM (274:19928)
              left: 0*fem,
              top: 0*fem,
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
                      // arrowdownsigntonavigateBth (I274:19928;75:1573;1:127)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 40.5*fem, 0*fem),
                      width: 30*fem,
                      height: 28*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/arrow-down-sign-to-navigate-6uK.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // accountinfoMRo (I274:19928;1:1762)
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
                      // close6Zj (I274:19928;76:1577;1:159)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.76*fem),
                      width: 24.24*fem,
                      height: 24.24*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/close-1GH.png',
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