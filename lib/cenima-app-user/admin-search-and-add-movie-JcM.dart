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
        // adminsearchandaddmovievoP (118:14336)
        width: double.infinity,
        height: 852*fem,
        child: Stack(
          children: [
            Positioned(
              // rectangle43128eZ (274:20225)
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
              // screen1tXF (118:14338)
              left: 18.5*fem,
              top: 213*fem,
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
              // screen2LnZ (118:14339)
              left: 19.5*fem,
              top: 485*fem,
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
              // schedulesDzm (118:14340)
              left: 23*fem,
              top: 277*fem,
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
              // schedulesm97 (118:14341)
              left: 27*fem,
              top: 542*fem,
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
              // addnewbuttones7 (118:14357)
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
              // addnewbuttonjXB (118:14433)
              left: 62*fem,
              top: 152*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 265*fem,
                  height: 34*fem,
                  decoration: BoxDecoration (
                    border: Border.all(color: const Color(0xffff1e60)),
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
                        color: const Color(0xffff1e60),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // addnewbutton68m (118:14359)
              left: 300*fem,
              top: 538*fem,
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
              // mainbutton7TB (118:14366)
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
                    // frame4ihs (I118:14366;18:475)
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
              // headerp8d (118:14367)
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
                      // arrowdownsigntonavigate94R (I118:14367;75:1573;1:127)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 49*fem, 0*fem),
                      width: 30*fem,
                      height: 28*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/arrow-down-sign-to-navigate-hnm.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // accountinfo5sB (I118:14367;1:1762)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 56*fem, 1.5*fem),
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
                              text: 'Edit Schedules Fri',
                            ),
                            TextSpan(
                              text: ', 0',
                              style: SafeGoogleFont (
                                'Segoe UI',
                                20*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2575*ffem/fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                            const TextSpan(
                              text: '9',
                            ),
                            TextSpan(
                              text: ' Dec',
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
                      // closekXP (I118:14367;76:1577;1:159)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.76*fem),
                      width: 24.24*fem,
                      height: 24.24*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/close-GSZ.png',
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