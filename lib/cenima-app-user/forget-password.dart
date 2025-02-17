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
        // forgetpasswordXzD (1:1741)
        width: double.infinity,
        height: 852*fem,
        decoration: BoxDecoration (
          border: Border.all(color: const Color(0xff707070)),
          color: const Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // forgetpasswordWLM (1:1746)
              left: 87*fem,
              top: 59*fem,
              child: Align(
                child: SizedBox(
                  width: 178*fem,
                  height: 32*fem,
                  child: RichText(
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
                ),
              ),
            ),
            Positioned(
              // pleaseenteryouremailpA1 (1:1747)
              left: 42*fem,
              top: 288*fem,
              child: Align(
                child: SizedBox(
                  width: 207*fem,
                  height: 26*fem,
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
              ),
            ),
            Positioned(
              // wellsendyouinstructionsonhowto (1:1748)
              left: 42*fem,
              top: 411*fem,
              child: Align(
                child: SizedBox(
                  width: 262*fem,
                  height: 33*fem,
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
              ),
            ),
            Positioned(
              // inputandroidtextoutlinedinacti (51:855)
              left: 31*fem,
              top: 336*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(19*fem, 13*fem, 217*fem, 14*fem),
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
                      // phonecallM9F (I51:855;738:5815)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                      width: 29*fem,
                      height: 29*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/phone-call-Njo.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // textKkH (I51:855;51:956)
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
            ),
            Positioned(
              // mainbutton5ss (53:307)
              left: 110*fem,
              top: 754*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: SizedBox(
                  width: 173*fem,
                  height: 57*fem,
                  child: Container(
                    // frame4RKT (I53:307;18:475)
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: const Color(0xff707070)),
                      color: const Color(0xff9a2044),
                      borderRadius: BorderRadius.circular(54*fem),
                    ),
                    child: Center(
                      child: Text(
                        'CONTINUE',
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
              // iosstatusbarwithnotchsfwh7 (56:452)
              left: 2*fem,
              top: 0*fem,
              child: Container(
                width: 391*fem,
                height: 44*fem,
                decoration: const BoxDecoration (
                  color: Color(0xffffffff),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      // notchtEy (I56:452;9:41)
                      left: 86*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 219*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/cenima-app-user/images/notch-7G9.png',
                            width: 219*fem,
                            height: 30*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // timetPP (I56:452;9:73)
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
                      // iosiconstatusbarPDf (I56:452;9:57)
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
                              // autogroupcglmvN1 (W2Z8eGNiQnUuofjDpMcgLm)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1796*fem, 10*fem),
                              width: 48.96*fem,
                              height: 16*fem,
                            ),
                            Container(
                              // iosiconsmallmobilesignalMiD (I56:452;9:57;9:6)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.35*fem, 2.33*fem),
                              width: 17*fem,
                              height: 10.67*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-mobile-signal-aUm.png',
                                width: 17*fem,
                                height: 10.67*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallwifiVC9 (I56:452;9:57;9:12)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.38*fem, 2.03*fem),
                              width: 15.27*fem,
                              height: 10.97*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-wifi-NV3.png',
                                width: 15.27*fem,
                                height: 10.97*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallbattery5w3 (I56:452;9:57;9:17)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.67*fem),
                              width: 24.33*fem,
                              height: 11.33*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-battery-WVb.png',
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
              // arrowdownsigntonavigaterqK (56:1916)
              left: 14*fem,
              top: 60*fem,
              child: SizedBox(
                width: 27.55*fem,
                height: 27.55*fem,
                child: Center(
                  // arrowdownsigntonavigaterD3 (I56:1913;1:127)
                  child: SizedBox(
                    width: 27.55*fem,
                    height: 27.55*fem,
                    child: Image.asset(
                      'assets/cenima-app-user/images/arrow-down-sign-to-navigate-5yP.png',
                      fit: BoxFit.cover,
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