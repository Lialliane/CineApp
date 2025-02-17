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
        // seatlayoutKCH (119:15491)
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xfff1f1f1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              // iosstatusbarwithnotchsfuwB (119:15636)
              width: double.infinity,
              height: 44*fem,
              decoration: const BoxDecoration (
                color: Color(0xffffffff),
              ),
              child: Stack(
                children: [
                  Positioned(
                    // notch3g1 (I119:15636;9:41)
                    left: 87*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 219*fem,
                        height: 30*fem,
                        child: Image.asset(
                          'assets/cenima-app-user/images/notch-TmX.png',
                          width: 219*fem,
                          height: 30*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // timeRRf (I119:15636;9:73)
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
                    // iosiconstatusbarqth (I119:15636;9:57)
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
                            // autogroupnrotaUu (W2YZyHeZGjf64vewgDnRoT)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1796*fem, 10*fem),
                            width: 48.96*fem,
                            height: 16*fem,
                          ),
                          Container(
                            // iosiconsmallmobilesignalzoX (I119:15636;9:57;9:6)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.35*fem, 2.33*fem),
                            width: 17*fem,
                            height: 10.67*fem,
                            child: Image.asset(
                              'assets/cenima-app-user/images/ios-icon-small-mobile-signal-tGm.png',
                              width: 17*fem,
                              height: 10.67*fem,
                            ),
                          ),
                          Container(
                            // iosiconsmallwifiW9b (I119:15636;9:57;9:12)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.38*fem, 2.03*fem),
                            width: 15.27*fem,
                            height: 10.97*fem,
                            child: Image.asset(
                              'assets/cenima-app-user/images/ios-icon-small-wifi-4Jh.png',
                              width: 15.27*fem,
                              height: 10.97*fem,
                            ),
                          ),
                          Container(
                            // iosiconsmallbatterysPT (I119:15636;9:57;9:17)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.67*fem),
                            width: 24.33*fem,
                            height: 11.33*fem,
                            child: Image.asset(
                              'assets/cenima-app-user/images/ios-icon-small-battery-CWy.png',
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
            Container(
              // toppxu (119:15495)
              padding: EdgeInsets.fromLTRB(17*fem, 22*fem, 156*fem, 10*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                border: Border.all(color: const Color(0xff707070)),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x3f4e4e4e),
                    offset: Offset(0*fem, 4*fem),
                    blurRadius: 2*fem,
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // arrowdownsigntonavigategtd (I119:16006;1:127)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 109*fem, 0*fem),
                    width: 30*fem,
                    height: 28*fem,
                    child: Image.asset(
                      'assets/cenima-app-user/images/arrow-down-sign-to-navigate-Pj3.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    // pleasepickaseathYq (119:15497)
                    'Screen 1',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Lucida Bright',
                      22*ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xff4b4a4a),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              // autogroupi94yiyj (W2X1doLXUhNPxcnxPji94y)
              width: 394*fem,
              height: 759*fem,
              child: Stack(
                children: [
                  Positioned(
                    // rectangle435ho (119:15492)
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
                    // lettersfR7 (119:15493)
                    left: 0*fem,
                    top: 131*fem,
                    child: Align(
                      child: SizedBox(
                        width: 24*fem,
                        height: 339*fem,
                        child: Image.asset(
                          'assets/cenima-app-user/images/letters-W3f.png',
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // screenbxy (119:15632)
                    left: 8*fem,
                    top: 100.5*fem,
                    child: SizedBox(
                      width: 381*fem,
                      height: 27.5*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // screenqMX (119:15633)
                            left: 171*fem,
                            top: 6.5*fem,
                            child: Align(
                              child: SizedBox(
                                width: 36*fem,
                                height: 16*fem,
                                child: Text(
                                  'Screen',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Lucida Bright',
                                    12*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2575*ffem/fem,
                                    color: const Color(0xff777777),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // vector5h2M (119:15634)
                            left: 0*fem,
                            top: 0*fem,
                            child: Align(
                              child: SizedBox(
                                width: 381*fem,
                                height: 27.5*fem,
                                child: Image.asset(
                                  'assets/cenima-app-user/images/vector-5-SjX.png',
                                  width: 381*fem,
                                  height: 27.5*fem,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // inactiveseatstMj (119:16014)
                    left: 24.9345703125*fem,
                    top: 169.9377441406*fem,
                    child: SizedBox(
                      width: 364.66*fem,
                      height: 287.06*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupa1gzrC5 (W2Xw3BXBBBUrwFw9Uha1GZ)
                            padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.44*fem, 0*fem),
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogrouparrhq41 (W2XV1GEQvYou97tgB1Arrh)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.44*fem, 0.49*fem),
                                  width: 20.26*fem,
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // seatregadqCR (119:16013)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11.66*fem),
                                        child: TextButton(
                                          onPressed: () {},
                                          style: TextButton.styleFrom (
                                            padding: EdgeInsets.zero,
                                          ),
                                          child: SizedBox(
                                            width: double.infinity,
                                            height: 20.23*fem,
                                            child: Align(
                                              // armchairb57 (I119:16013;143:20729)
                                              alignment: Alignment.topLeft,
                                              child: SizedBox(
                                                width: 19*fem,
                                                height: 19*fem,
                                                child: Image.asset(
                                                  'assets/cenima-app-user/images/armchair-Tty.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // seatregadmdo (119:16083)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 214.26*fem),
                                        child: TextButton(
                                          onPressed: () {},
                                          style: TextButton.styleFrom (
                                            padding: EdgeInsets.zero,
                                          ),
                                          child: SizedBox(
                                            width: double.infinity,
                                            height: 20.26*fem,
                                            child: Align(
                                              // armchairMM7 (I119:16083;143:20729)
                                              alignment: Alignment.topLeft,
                                              child: SizedBox(
                                                width: 19*fem,
                                                height: 19*fem,
                                                child: Image.asset(
                                                  'assets/cenima-app-user/images/armchair-LnZ.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // seatpremadwaD (119:16010)
                                        margin: EdgeInsets.fromLTRB(0.07*fem, 0*fem, 0*fem, 0*fem),
                                        child: TextButton(
                                          onPressed: () {},
                                          style: TextButton.styleFrom (
                                            padding: EdgeInsets.zero,
                                          ),
                                          child: SizedBox(
                                            width: double.infinity,
                                            child: Center(
                                              // armchair2K4y (I119:16010;143:20736)
                                              child: SizedBox(
                                                width: 20.2*fem,
                                                height: 20.16*fem,
                                                child: Image.asset(
                                                  'assets/cenima-app-user/images/armchair-2-1Ju.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogroup96puXB3 (W2XWZU97FX6CiEdWyH96pu)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.49*fem),
                                  width: 20.26*fem,
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // seatregadTD7 (119:16012)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11.66*fem),
                                        child: TextButton(
                                          onPressed: () {},
                                          style: TextButton.styleFrom (
                                            padding: EdgeInsets.zero,
                                          ),
                                          child: SizedBox(
                                            width: double.infinity,
                                            height: 20.23*fem,
                                            child: Align(
                                              // armchairF8y (I119:16012;143:20729)
                                              alignment: Alignment.topLeft,
                                              child: SizedBox(
                                                width: 19*fem,
                                                height: 19*fem,
                                                child: Image.asset(
                                                  'assets/cenima-app-user/images/armchair-WpV.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // seatregadEWh (119:16082)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 74.34*fem),
                                        child: TextButton(
                                          onPressed: () {},
                                          style: TextButton.styleFrom (
                                            padding: EdgeInsets.zero,
                                          ),
                                          child: SizedBox(
                                            width: double.infinity,
                                            height: 20.26*fem,
                                            child: Align(
                                              // armchairFAu (I119:16082;143:20729)
                                              alignment: Alignment.topLeft,
                                              child: SizedBox(
                                                width: 19*fem,
                                                height: 19*fem,
                                                child: Image.asset(
                                                  'assets/cenima-app-user/images/armchair-XnM.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // seatregadgn1 (119:16055)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14.82*fem),
                                        child: TextButton(
                                          onPressed: () {},
                                          style: TextButton.styleFrom (
                                            padding: EdgeInsets.zero,
                                          ),
                                          child: SizedBox(
                                            width: double.infinity,
                                            height: 20.26*fem,
                                            child: Align(
                                              // armchairES9 (I119:16055;143:20729)
                                              alignment: Alignment.topLeft,
                                              child: SizedBox(
                                                width: 19*fem,
                                                height: 19*fem,
                                                child: Image.asset(
                                                  'assets/cenima-app-user/images/armchair-2S1.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      TextButton(
                                        // seatregadGtd (119:16054)
                                        onPressed: () {},
                                        style: TextButton.styleFrom (
                                          padding: EdgeInsets.zero,
                                        ),
                                        child: SizedBox(
                                          width: double.infinity,
                                          height: 20.26*fem,
                                          child: Align(
                                            // armchair7eM (I119:16054;143:20729)
                                            alignment: Alignment.topLeft,
                                            child: SizedBox(
                                              width: 19*fem,
                                              height: 19*fem,
                                              child: Image.asset(
                                                'assets/cenima-app-user/images/armchair-V97.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // autogroupdycmWRb (W2XXnWw4JwsVpPxKSQdYcM)
                                        padding: EdgeInsets.fromLTRB(0.07*fem, 14.88*fem, 0*fem, 0*fem),
                                        width: double.infinity,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // seatpremJMT (119:16017)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14.88*fem),
                                              width: double.infinity,
                                              height: 20.2*fem,
                                              child: TextButton(
                                                // seatregad9cy (119:16053)
                                                onPressed: () {},
                                                style: TextButton.styleFrom (
                                                  padding: EdgeInsets.zero,
                                                ),
                                                child: SizedBox(
                                                  width: double.infinity,
                                                  height: double.infinity,
                                                  child: Align(
                                                    // armchairmuF (I119:16053;143:20729)
                                                    alignment: Alignment.topLeft,
                                                    child: SizedBox(
                                                      width: 19*fem,
                                                      height: 19*fem,
                                                      child: Image.asset(
                                                        'assets/cenima-app-user/images/armchair-mfb.png',
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // seatpremad12u (119:16016)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14.42*fem),
                                              child: TextButton(
                                                onPressed: () {},
                                                style: TextButton.styleFrom (
                                                  padding: EdgeInsets.zero,
                                                ),
                                                child: SizedBox(
                                                  width: double.infinity,
                                                  child: Center(
                                                    // armchair2Qqj (I119:16016;143:20736)
                                                    child: SizedBox(
                                                      width: 20.2*fem,
                                                      height: 20.2*fem,
                                                      child: Image.asset(
                                                        'assets/cenima-app-user/images/armchair-2-4aZ.png',
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            TextButton(
                                              // seatpremadoN5 (119:16011)
                                              onPressed: () {},
                                              style: TextButton.styleFrom (
                                                padding: EdgeInsets.zero,
                                              ),
                                              child: SizedBox(
                                                width: double.infinity,
                                                child: Center(
                                                  // armchair2Uz1 (I119:16011;143:20736)
                                                  child: SizedBox(
                                                    width: 20.2*fem,
                                                    height: 20.16*fem,
                                                    child: Image.asset(
                                                      'assets/cenima-app-user/images/armchair-2-fS5.png',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
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
                          Container(
                            // autogroupddp9XSV (W2XYwKM5tyGyfW4ypnddp9)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.44*fem, 0*fem),
                            width: 20.26*fem,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // seatregadsuf (119:16081)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11.63*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 20.26*fem,
                                      child: Align(
                                        // armchair5F3 (I119:16081;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-z4M.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // seatregadujs (119:16080)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 45.64*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 20.26*fem,
                                      child: Align(
                                        // armchair4mB (I119:16080;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-E8u.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // seatregadiaq (119:16059)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8.44*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 20.26*fem,
                                      child: Align(
                                        // armchairfPb (I119:16059;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-1Sd.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // seatregadHvm (119:16058)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14.82*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 20.26*fem,
                                      child: Align(
                                        // armchairfAd (I119:16058;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-brd.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                TextButton(
                                  // seatregadSah (119:16057)
                                  onPressed: () {},
                                  style: TextButton.styleFrom (
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: SizedBox(
                                    width: double.infinity,
                                    height: 20.26*fem,
                                    child: Align(
                                      // armchair5df (I119:16057;143:20729)
                                      alignment: Alignment.topLeft,
                                      child: SizedBox(
                                        width: 19*fem,
                                        height: 19*fem,
                                        child: Image.asset(
                                          'assets/cenima-app-user/images/armchair-iFF.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // autogroupvfy1spR (W2XargKCJVpfwUuh7GVFY1)
                                  padding: EdgeInsets.fromLTRB(0.07*fem, 14.88*fem, 0*fem, 0*fem),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        // seatpremtjX (119:16019)
                                        width: double.infinity,
                                        height: 20.2*fem,
                                        child: TextButton(
                                          // seatregadoLh (119:16056)
                                          onPressed: () {},
                                          style: TextButton.styleFrom (
                                            padding: EdgeInsets.zero,
                                          ),
                                          child: SizedBox(
                                            width: double.infinity,
                                            height: double.infinity,
                                            child: Align(
                                              // armchaircow (I119:16056;143:20729)
                                              alignment: Alignment.topLeft,
                                              child: SizedBox(
                                                width: 19*fem,
                                                height: 19*fem,
                                                child: Image.asset(
                                                  'assets/cenima-app-user/images/armchair-r9B.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 14.88*fem,
                                      ),
                                      TextButton(
                                        // seatpremado7j (119:16018)
                                        onPressed: () {},
                                        style: TextButton.styleFrom (
                                          padding: EdgeInsets.zero,
                                        ),
                                        child: SizedBox(
                                          width: double.infinity,
                                          child: Center(
                                            // armchair2stH (I119:16018;143:20736)
                                            child: SizedBox(
                                              width: 20.2*fem,
                                              height: 20.2*fem,
                                              child: Image.asset(
                                                'assets/cenima-app-user/images/armchair-2-wgy.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 14.88*fem,
                                      ),
                                      TextButton(
                                        // seatpremadczH (119:16015)
                                        onPressed: () {},
                                        style: TextButton.styleFrom (
                                          padding: EdgeInsets.zero,
                                        ),
                                        child: SizedBox(
                                          width: double.infinity,
                                          child: Center(
                                            // armchair2JMK (I119:16015;143:20736)
                                            child: SizedBox(
                                              width: 20.2*fem,
                                              height: 20.2*fem,
                                              child: Image.asset(
                                                'assets/cenima-app-user/images/armchair-2-8u3.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroupphqfwQH (W2Xc4toCXLT97WnELxPhqF)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.44*fem, 0*fem),
                            width: 20.26*fem,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // seatregadHcZ (119:16079)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11.63*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 20.26*fem,
                                      child: Align(
                                        // armchairgub (I119:16079;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-XQH.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // seatregadV6M (119:16078)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 45.71*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 20.26*fem,
                                      child: Align(
                                        // armchairUys (I119:16078;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-6bw.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // seatprem94R (119:16022)
                                  margin: EdgeInsets.fromLTRB(0.07*fem, 0*fem, 0*fem, 8.44*fem),
                                  width: double.infinity,
                                  height: 20.2*fem,
                                  child: TextButton(
                                    // seatregadzaq (119:16087)
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: double.infinity,
                                      child: Align(
                                        // armchair2XX (I119:16087;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-79F.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // seatregadGRs (119:16086)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14.82*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 20.26*fem,
                                      child: Align(
                                        // armchairEX7 (I119:16086;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-meV.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                TextButton(
                                  // seatregadGCu (119:16085)
                                  onPressed: () {},
                                  style: TextButton.styleFrom (
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: SizedBox(
                                    width: double.infinity,
                                    height: 20.26*fem,
                                    child: Align(
                                      // armchairXed (I119:16085;143:20729)
                                      alignment: Alignment.topLeft,
                                      child: SizedBox(
                                        width: 19*fem,
                                        height: 19*fem,
                                        child: Image.asset(
                                          'assets/cenima-app-user/images/armchair-NSH.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // autogroupavtmvwf (W2XdKmsRprmTGkuD84AvtM)
                                  padding: EdgeInsets.fromLTRB(0.07*fem, 14.88*fem, 0*fem, 0*fem),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        // seatprem9pR (119:16021)
                                        width: double.infinity,
                                        height: 20.2*fem,
                                        child: TextButton(
                                          // seatregad3eu (119:16084)
                                          onPressed: () {},
                                          style: TextButton.styleFrom (
                                            padding: EdgeInsets.zero,
                                          ),
                                          child: SizedBox(
                                            width: double.infinity,
                                            height: double.infinity,
                                            child: Align(
                                              // armchairXa5 (I119:16084;143:20729)
                                              alignment: Alignment.topLeft,
                                              child: SizedBox(
                                                width: 19*fem,
                                                height: 19*fem,
                                                child: Image.asset(
                                                  'assets/cenima-app-user/images/armchair-UgV.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 14.88*fem,
                                      ),
                                      TextButton(
                                        // seatpremadfph (119:16020)
                                        onPressed: () {},
                                        style: TextButton.styleFrom (
                                          padding: EdgeInsets.zero,
                                        ),
                                        child: SizedBox(
                                          width: double.infinity,
                                          child: Center(
                                            // armchair2xJ1 (I119:16020;143:20736)
                                            child: SizedBox(
                                              width: 20.2*fem,
                                              height: 20.2*fem,
                                              child: Image.asset(
                                                'assets/cenima-app-user/images/armchair-2-u2u.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 14.88*fem,
                                      ),
                                      TextButton(
                                        // seatpremadNFF (119:16043)
                                        onPressed: () {},
                                        style: TextButton.styleFrom (
                                          padding: EdgeInsets.zero,
                                        ),
                                        child: SizedBox(
                                          width: double.infinity,
                                          child: Center(
                                            // armchair2BCh (I119:16043;143:20736)
                                            child: SizedBox(
                                              width: 20.2*fem,
                                              height: 20.2*fem,
                                              child: Image.asset(
                                                'assets/cenima-app-user/images/armchair-2-2AZ.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroupomjdozm (W2XeZjoX1LKFuTd6kAomJd)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.44*fem, 0*fem),
                            width: 20.26*fem,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // seatregadzpM (119:16077)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11.63*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 20.26*fem,
                                      child: Align(
                                        // armchair8ZB (I119:16077;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-1iD.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // seatregadmMF (119:16076)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 45.64*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 20.26*fem,
                                      child: Align(
                                        // armchairvdT (I119:16076;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-Az1.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // seatregadmty (119:16091)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8.44*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 20.26*fem,
                                      child: Align(
                                        // armchairnZB (I119:16091;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-ms3.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // seatregadBbK (119:16090)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14.82*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 20.26*fem,
                                      child: Align(
                                        // armchairb9F (I119:16090;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-AgV.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                TextButton(
                                  // seatregadca9 (119:16089)
                                  onPressed: () {},
                                  style: TextButton.styleFrom (
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: SizedBox(
                                    width: double.infinity,
                                    height: 20.26*fem,
                                    child: Align(
                                      // armchairS3P (I119:16089;143:20729)
                                      alignment: Alignment.topLeft,
                                      child: SizedBox(
                                        width: 19*fem,
                                        height: 19*fem,
                                        child: Image.asset(
                                          'assets/cenima-app-user/images/armchair-oeM.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // autogroupab4qUkm (W2XgVgazQ5AjLL5bVTaB4q)
                                  padding: EdgeInsets.fromLTRB(0.07*fem, 14.88*fem, 0*fem, 0*fem),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        // seatprem733 (119:16024)
                                        width: double.infinity,
                                        height: 20.2*fem,
                                        child: TextButton(
                                          // seatregadMi5 (119:16088)
                                          onPressed: () {},
                                          style: TextButton.styleFrom (
                                            padding: EdgeInsets.zero,
                                          ),
                                          child: SizedBox(
                                            width: double.infinity,
                                            height: double.infinity,
                                            child: Align(
                                              // armchairEG5 (I119:16088;143:20729)
                                              alignment: Alignment.topLeft,
                                              child: SizedBox(
                                                width: 19*fem,
                                                height: 19*fem,
                                                child: Image.asset(
                                                  'assets/cenima-app-user/images/armchair-yxh.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 14.88*fem,
                                      ),
                                      TextButton(
                                        // seatpremad2xd (119:16023)
                                        onPressed: () {},
                                        style: TextButton.styleFrom (
                                          padding: EdgeInsets.zero,
                                        ),
                                        child: SizedBox(
                                          width: double.infinity,
                                          child: Center(
                                            // armchair2GMB (I119:16023;143:20736)
                                            child: SizedBox(
                                              width: 20.2*fem,
                                              height: 20.2*fem,
                                              child: Image.asset(
                                                'assets/cenima-app-user/images/armchair-2-M7K.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 14.88*fem,
                                      ),
                                      TextButton(
                                        // seatpremadFyo (119:16044)
                                        onPressed: () {},
                                        style: TextButton.styleFrom (
                                          padding: EdgeInsets.zero,
                                        ),
                                        child: SizedBox(
                                          width: double.infinity,
                                          child: Center(
                                            // armchair2k9s (I119:16044;143:20736)
                                            child: SizedBox(
                                              width: 20.2*fem,
                                              height: 20.2*fem,
                                              child: Image.asset(
                                                'assets/cenima-app-user/images/armchair-2-N3f.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroupyqqxXK3 (W2XhgUwgo7LbRLt62tyqqX)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.11*fem, 0*fem),
                            width: 20.59*fem,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // seatregadv6H (119:16075)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.33*fem, 11.63*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 20.26*fem,
                                      child: Align(
                                        // armchairDDo (I119:16075;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-1kR.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // seatregadScM (119:16074)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.33*fem, 46.77*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 20.26*fem,
                                      child: Align(
                                        // armchaira6H (I119:16074;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-ysK.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // wheelchairoUq (119:16116)
                                  margin: EdgeInsets.fromLTRB(0.07*fem, 0*fem, 0*fem, 6.31*fem),
                                  width: 20.53*fem,
                                  height: 21.26*fem,
                                  child: Image.asset(
                                    'assets/cenima-app-user/images/wheelchair-8uK.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  // seatregadQzR (119:16094)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.33*fem, 14.82*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 20.26*fem,
                                      child: Align(
                                        // armchairx8m (I119:16094;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-JqK.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // seatregadB1X (119:16093)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.33*fem, 14.88*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 20.26*fem,
                                      child: Align(
                                        // armchairgcV (I119:16093;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-m2d.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // seatpremjKs (119:16026)
                                  margin: EdgeInsets.fromLTRB(0.07*fem, 0*fem, 0.33*fem, 14.88*fem),
                                  width: double.infinity,
                                  height: 20.2*fem,
                                  child: TextButton(
                                    // seatregadNNq (119:16092)
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: double.infinity,
                                      child: Align(
                                        // armchairnxM (I119:16092;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-Hjs.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // seatpremad2bo (119:16025)
                                  margin: EdgeInsets.fromLTRB(0.07*fem, 0*fem, 0.33*fem, 14.88*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      child: Center(
                                        // armchair2oFB (I119:16025;143:20736)
                                        child: SizedBox(
                                          width: 20.2*fem,
                                          height: 20.2*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-2-Ko3.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // seatpremadSZ3 (119:16045)
                                  margin: EdgeInsets.fromLTRB(0.07*fem, 0*fem, 0.33*fem, 0*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      child: Center(
                                        // armchair2rMs (I119:16045;143:20736)
                                        child: SizedBox(
                                          width: 20.2*fem,
                                          height: 20.2*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-2-WsF.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroupnxj7eHj (W2Xj7MjG9hUpn8SDbHnxj7)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.11*fem, 0*fem),
                            width: 20.59*fem,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // seatregadRSu (119:16073)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.33*fem, 11.63*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 20.26*fem,
                                      child: Align(
                                        // armchairxLM (I119:16073;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-dss.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // seatregadCkV (119:16072)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.33*fem, 46.77*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 20.26*fem,
                                      child: Align(
                                        // armchair1C9 (I119:16072;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-ktm.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // wheelchairQVB (119:16117)
                                  margin: EdgeInsets.fromLTRB(0.07*fem, 0*fem, 0*fem, 6.31*fem),
                                  width: 20.53*fem,
                                  height: 21.26*fem,
                                  child: Image.asset(
                                    'assets/cenima-app-user/images/wheelchair-zaR.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  // seatregadoXK (119:16097)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.33*fem, 14.82*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 20.26*fem,
                                      child: Align(
                                        // armchairQX7 (I119:16097;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-FHF.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // seatregadQfX (119:16096)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.33*fem, 14.88*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 20.26*fem,
                                      child: Align(
                                        // armchairzdj (I119:16096;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-CDT.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // seatpremEY5 (119:16028)
                                  margin: EdgeInsets.fromLTRB(0.07*fem, 0*fem, 0.33*fem, 14.88*fem),
                                  width: double.infinity,
                                  height: 20.2*fem,
                                  child: TextButton(
                                    // seatregad2Tw (119:16095)
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: double.infinity,
                                      child: Align(
                                        // armchairWP7 (I119:16095;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-rrq.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // seatpremadkoF (119:16027)
                                  margin: EdgeInsets.fromLTRB(0.07*fem, 0*fem, 0.33*fem, 14.88*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      child: Center(
                                        // armchair2idb (I119:16027;143:20736)
                                        child: SizedBox(
                                          width: 20.2*fem,
                                          height: 20.2*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-2-dcq.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // seatpremadx29 (119:16046)
                                  margin: EdgeInsets.fromLTRB(0.07*fem, 0*fem, 0.33*fem, 0*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      child: Center(
                                        // armchair2xgM (I119:16046;143:20736)
                                        child: SizedBox(
                                          width: 20.2*fem,
                                          height: 20.2*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-2-rnh.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroup47qym81 (W2XkVKS2aE6ANTuRqe47Qy)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.11*fem, 0*fem),
                            width: 20.59*fem,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // seatregadM6D (119:16071)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.33*fem, 11.63*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 20.26*fem,
                                      child: Align(
                                        // armchairuG9 (I119:16071;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-TWM.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // seatregad9AV (119:16070)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.33*fem, 46.77*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 20.26*fem,
                                      child: Align(
                                        // armchairv4m (I119:16070;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-53B.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // wheelchair7uw (119:16118)
                                  margin: EdgeInsets.fromLTRB(0.07*fem, 0*fem, 0*fem, 6.31*fem),
                                  width: 20.53*fem,
                                  height: 21.26*fem,
                                  child: Image.asset(
                                    'assets/cenima-app-user/images/wheelchair-tWR.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  // seatregad95w (119:16100)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.33*fem, 14.82*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 20.26*fem,
                                      child: Align(
                                        // armchair9EM (I119:16100;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-RQZ.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // seatregadkV3 (119:16099)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.33*fem, 14.88*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 20.26*fem,
                                      child: Align(
                                        // armchairMjj (I119:16099;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-9zm.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // seatpremABP (119:16030)
                                  margin: EdgeInsets.fromLTRB(0.07*fem, 0*fem, 0.33*fem, 14.88*fem),
                                  width: double.infinity,
                                  height: 20.2*fem,
                                  child: TextButton(
                                    // seatregadcZB (119:16098)
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: double.infinity,
                                      child: Align(
                                        // armchairgJ9 (I119:16098;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-C8V.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // seatpremad8A9 (119:16029)
                                  margin: EdgeInsets.fromLTRB(0.07*fem, 0*fem, 0.33*fem, 14.88*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      child: Center(
                                        // armchair2toX (I119:16029;143:20736)
                                        child: SizedBox(
                                          width: 20.2*fem,
                                          height: 20.2*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-2-owj.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // seatpremaduyX (119:16047)
                                  margin: EdgeInsets.fromLTRB(0.07*fem, 0*fem, 0.33*fem, 0*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      child: Center(
                                        // armchair2w9X (I119:16047;143:20736)
                                        child: SizedBox(
                                          width: 20.2*fem,
                                          height: 20.2*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-2-ZAV.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroupsvhsXtR (W2XmmnHxGU6SoYz7A5SvHs)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.44*fem, 0*fem),
                            width: 20.26*fem,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // seatregadKpH (119:16069)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11.63*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 20.26*fem,
                                      child: Align(
                                        // armchair5gy (I119:16069;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-V8q.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // seatregadX3B (119:16068)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 45.71*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 20.26*fem,
                                      child: Align(
                                        // armchairKDw (I119:16068;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-6Ms.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // seatpremK7T (119:16033)
                                  margin: EdgeInsets.fromLTRB(0.07*fem, 0*fem, 0*fem, 8.44*fem),
                                  width: double.infinity,
                                  height: 20.2*fem,
                                  child: TextButton(
                                    // seatregadANy (119:16104)
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: double.infinity,
                                      child: Align(
                                        // armchair3hf (I119:16104;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-3AV.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // seatregadYnq (119:16103)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14.82*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 20.26*fem,
                                      child: Align(
                                        // armchairwa5 (I119:16103;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-rvh.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                TextButton(
                                  // seatregadzYM (119:16102)
                                  onPressed: () {},
                                  style: TextButton.styleFrom (
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: SizedBox(
                                    width: double.infinity,
                                    height: 20.26*fem,
                                    child: Align(
                                      // armchairQry (I119:16102;143:20729)
                                      alignment: Alignment.topLeft,
                                      child: SizedBox(
                                        width: 19*fem,
                                        height: 19*fem,
                                        child: Image.asset(
                                          'assets/cenima-app-user/images/armchair-Tau.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // autogroupf9czrys (W2Xni64oHfDXejJq4qf9CZ)
                                  padding: EdgeInsets.fromLTRB(0.07*fem, 14.88*fem, 0*fem, 0*fem),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        // seatpremt9s (119:16032)
                                        width: double.infinity,
                                        height: 20.2*fem,
                                        child: TextButton(
                                          // seatregadaYV (119:16101)
                                          onPressed: () {},
                                          style: TextButton.styleFrom (
                                            padding: EdgeInsets.zero,
                                          ),
                                          child: SizedBox(
                                            width: double.infinity,
                                            height: double.infinity,
                                            child: Align(
                                              // armchaircVB (I119:16101;143:20729)
                                              alignment: Alignment.topLeft,
                                              child: SizedBox(
                                                width: 19*fem,
                                                height: 19*fem,
                                                child: Image.asset(
                                                  'assets/cenima-app-user/images/armchair-6AR.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 14.88*fem,
                                      ),
                                      TextButton(
                                        // seatpremadCTP (119:16031)
                                        onPressed: () {},
                                        style: TextButton.styleFrom (
                                          padding: EdgeInsets.zero,
                                        ),
                                        child: SizedBox(
                                          width: double.infinity,
                                          child: Center(
                                            // armchair2gNZ (I119:16031;143:20736)
                                            child: SizedBox(
                                              width: 20.2*fem,
                                              height: 20.2*fem,
                                              child: Image.asset(
                                                'assets/cenima-app-user/images/armchair-2-tq3.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 14.88*fem,
                                      ),
                                      TextButton(
                                        // seatpremaddh7 (119:16048)
                                        onPressed: () {},
                                        style: TextButton.styleFrom (
                                          padding: EdgeInsets.zero,
                                        ),
                                        child: SizedBox(
                                          width: double.infinity,
                                          child: Center(
                                            // armchair2uuX (I119:16048;143:20736)
                                            child: SizedBox(
                                              width: 20.2*fem,
                                              height: 20.2*fem,
                                              child: Image.asset(
                                                'assets/cenima-app-user/images/armchair-2-muf.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroupdcc5Ljw (W2XouoZdok9uGHWQmGDCc5)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.44*fem, 0*fem),
                            width: 20.26*fem,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // seatregadHob (119:16067)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11.63*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 20.26*fem,
                                      child: Align(
                                        // armchairg53 (I119:16067;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-m2V.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // seatregadTk1 (119:16066)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 45.71*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 20.26*fem,
                                      child: Align(
                                        // armchairf5P (I119:16066;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-eY5.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // seatpremJ8M (119:16036)
                                  margin: EdgeInsets.fromLTRB(0.07*fem, 0*fem, 0*fem, 8.44*fem),
                                  width: double.infinity,
                                  height: 20.2*fem,
                                  child: TextButton(
                                    // seatregadMkq (119:16108)
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: double.infinity,
                                      child: Align(
                                        // armchairEJq (I119:16108;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-Y9B.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // seatregad54Z (119:16107)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14.82*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 20.26*fem,
                                      child: Align(
                                        // armchairpgM (I119:16107;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-s3s.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                TextButton(
                                  // seatregadG2Z (119:16106)
                                  onPressed: () {},
                                  style: TextButton.styleFrom (
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: SizedBox(
                                    width: double.infinity,
                                    height: 20.26*fem,
                                    child: Align(
                                      // armchairjB3 (I119:16106;143:20729)
                                      alignment: Alignment.topLeft,
                                      child: SizedBox(
                                        width: 19*fem,
                                        height: 19*fem,
                                        child: Image.asset(
                                          'assets/cenima-app-user/images/armchair-4Ny.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // autogroupk4ariYm (W2Xpo7RUcR8QkboPSSK4AR)
                                  padding: EdgeInsets.fromLTRB(0.07*fem, 14.88*fem, 0*fem, 0*fem),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        // seatpremjim (119:16035)
                                        width: double.infinity,
                                        height: 20.2*fem,
                                        child: TextButton(
                                          // seatregadqmo (119:16105)
                                          onPressed: () {},
                                          style: TextButton.styleFrom (
                                            padding: EdgeInsets.zero,
                                          ),
                                          child: SizedBox(
                                            width: double.infinity,
                                            height: double.infinity,
                                            child: Align(
                                              // armchairumf (I119:16105;143:20729)
                                              alignment: Alignment.topLeft,
                                              child: SizedBox(
                                                width: 19*fem,
                                                height: 19*fem,
                                                child: Image.asset(
                                                  'assets/cenima-app-user/images/armchair-YLM.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 14.88*fem,
                                      ),
                                      TextButton(
                                        // seatpremadfPT (119:16034)
                                        onPressed: () {},
                                        style: TextButton.styleFrom (
                                          padding: EdgeInsets.zero,
                                        ),
                                        child: SizedBox(
                                          width: double.infinity,
                                          child: Center(
                                            // armchair2wLy (I119:16034;143:20736)
                                            child: SizedBox(
                                              width: 20.2*fem,
                                              height: 20.2*fem,
                                              child: Image.asset(
                                                'assets/cenima-app-user/images/armchair-2-1qF.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 14.88*fem,
                                      ),
                                      TextButton(
                                        // seatpremadLP7 (119:16049)
                                        onPressed: () {},
                                        style: TextButton.styleFrom (
                                          padding: EdgeInsets.zero,
                                        ),
                                        child: SizedBox(
                                          width: double.infinity,
                                          child: Center(
                                            // armchair2N4u (I119:16049;143:20736)
                                            child: SizedBox(
                                              width: 20.2*fem,
                                              height: 20.2*fem,
                                              child: Image.asset(
                                                'assets/cenima-app-user/images/armchair-2-qFb.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroupihzdbiM (W2Xr2k2nf4DV1ejyNNiHzD)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.44*fem, 0*fem),
                            width: 20.26*fem,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // seatregadM5F (119:16065)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11.63*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 20.26*fem,
                                      child: Align(
                                        // armchairkt5 (I119:16065;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-3nu.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // seatregadPw3 (119:16064)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 45.71*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 20.26*fem,
                                      child: Align(
                                        // armchairMFb (I119:16064;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-iVs.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // seatpremo7b (119:16039)
                                  margin: EdgeInsets.fromLTRB(0.07*fem, 0*fem, 0*fem, 8.44*fem),
                                  width: double.infinity,
                                  height: 20.2*fem,
                                  child: TextButton(
                                    // seatregadTC9 (119:16112)
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: double.infinity,
                                      child: Align(
                                        // armchairgah (I119:16112;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-Xuo.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // seatregadXLR (119:16111)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14.82*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 20.26*fem,
                                      child: Align(
                                        // armchair8b7 (I119:16111;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-nGM.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                TextButton(
                                  // seatregadY93 (119:16110)
                                  onPressed: () {},
                                  style: TextButton.styleFrom (
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: SizedBox(
                                    width: double.infinity,
                                    height: 20.26*fem,
                                    child: Align(
                                      // armchairzWq (I119:16110;143:20729)
                                      alignment: Alignment.topLeft,
                                      child: SizedBox(
                                        width: 19*fem,
                                        height: 19*fem,
                                        child: Image.asset(
                                          'assets/cenima-app-user/images/armchair-Yrh.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // autogrouphmfkqnM (W2XrutEEtoxdK99JCThMFK)
                                  padding: EdgeInsets.fromLTRB(0.07*fem, 14.88*fem, 0*fem, 0*fem),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        // seatpremREm (119:16038)
                                        width: double.infinity,
                                        height: 20.2*fem,
                                        child: TextButton(
                                          // seatregad7tH (119:16109)
                                          onPressed: () {},
                                          style: TextButton.styleFrom (
                                            padding: EdgeInsets.zero,
                                          ),
                                          child: SizedBox(
                                            width: double.infinity,
                                            height: double.infinity,
                                            child: Align(
                                              // armchairWfX (I119:16109;143:20729)
                                              alignment: Alignment.topLeft,
                                              child: SizedBox(
                                                width: 19*fem,
                                                height: 19*fem,
                                                child: Image.asset(
                                                  'assets/cenima-app-user/images/armchair-kp5.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 14.88*fem,
                                      ),
                                      TextButton(
                                        // seatpremaddtZ (119:16037)
                                        onPressed: () {},
                                        style: TextButton.styleFrom (
                                          padding: EdgeInsets.zero,
                                        ),
                                        child: SizedBox(
                                          width: double.infinity,
                                          child: Center(
                                            // armchair26n9 (I119:16037;143:20736)
                                            child: SizedBox(
                                              width: 20.2*fem,
                                              height: 20.2*fem,
                                              child: Image.asset(
                                                'assets/cenima-app-user/images/armchair-2-SsF.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 14.88*fem,
                                      ),
                                      TextButton(
                                        // seatpremadF2m (119:16050)
                                        onPressed: () {},
                                        style: TextButton.styleFrom (
                                          padding: EdgeInsets.zero,
                                        ),
                                        child: SizedBox(
                                          width: double.infinity,
                                          child: Center(
                                            // armchair2XFB (I119:16050;143:20736)
                                            child: SizedBox(
                                              width: 20.2*fem,
                                              height: 20.2*fem,
                                              child: Image.asset(
                                                'assets/cenima-app-user/images/armchair-2-8wF.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroupnwuf9nM (W2XtDM4VzZM6sBZtbRnwuf)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.44*fem, 0*fem),
                            width: 20.26*fem,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // seatregaduf3 (119:16063)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11.63*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 20.26*fem,
                                      child: Align(
                                        // armchairVt9 (I119:16063;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-g7X.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // seatregadVFs (119:16062)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 74.34*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 20.26*fem,
                                      child: Align(
                                        // armchairg5T (I119:16062;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-2tD.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                TextButton(
                                  // seatregadegV (119:16115)
                                  onPressed: () {},
                                  style: TextButton.styleFrom (
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: SizedBox(
                                    width: double.infinity,
                                    height: 20.26*fem,
                                    child: Align(
                                      // armchairhem (I119:16115;143:20729)
                                      alignment: Alignment.topLeft,
                                      child: SizedBox(
                                        width: 19*fem,
                                        height: 19*fem,
                                        child: Image.asset(
                                          'assets/cenima-app-user/images/armchair-365.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // autogroup4uwxVqX (W2Xty5JdyULVMvqgG64UwX)
                                  padding: EdgeInsets.fromLTRB(0.07*fem, 14.88*fem, 0*fem, 0*fem),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        // seatpremKpZ (119:16042)
                                        width: double.infinity,
                                        height: 20.2*fem,
                                        child: TextButton(
                                          // seatregad1SV (119:16114)
                                          onPressed: () {},
                                          style: TextButton.styleFrom (
                                            padding: EdgeInsets.zero,
                                          ),
                                          child: SizedBox(
                                            width: double.infinity,
                                            height: double.infinity,
                                            child: Align(
                                              // armchairEa9 (I119:16114;143:20729)
                                              alignment: Alignment.topLeft,
                                              child: SizedBox(
                                                width: 19*fem,
                                                height: 19*fem,
                                                child: Image.asset(
                                                  'assets/cenima-app-user/images/armchair-Zy7.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 14.88*fem,
                                      ),
                                      SizedBox(
                                        // seatpremdcH (119:16041)
                                        width: double.infinity,
                                        height: 20.2*fem,
                                        child: TextButton(
                                          // seatregadXhf (119:16113)
                                          onPressed: () {},
                                          style: TextButton.styleFrom (
                                            padding: EdgeInsets.zero,
                                          ),
                                          child: SizedBox(
                                            width: double.infinity,
                                            height: double.infinity,
                                            child: Align(
                                              // armchairxHB (I119:16113;143:20729)
                                              alignment: Alignment.topLeft,
                                              child: SizedBox(
                                                width: 19*fem,
                                                height: 19*fem,
                                                child: Image.asset(
                                                  'assets/cenima-app-user/images/armchair-J1s.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 14.88*fem,
                                      ),
                                      TextButton(
                                        // seatpremadXzV (119:16040)
                                        onPressed: () {},
                                        style: TextButton.styleFrom (
                                          padding: EdgeInsets.zero,
                                        ),
                                        child: SizedBox(
                                          width: double.infinity,
                                          child: Center(
                                            // armchair21uf (I119:16040;143:20736)
                                            child: SizedBox(
                                              width: 20.2*fem,
                                              height: 20.2*fem,
                                              child: Image.asset(
                                                'assets/cenima-app-user/images/armchair-2-yem.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 14.88*fem,
                                      ),
                                      TextButton(
                                        // seatpremadmXT (119:16051)
                                        onPressed: () {},
                                        style: TextButton.styleFrom (
                                          padding: EdgeInsets.zero,
                                        ),
                                        child: SizedBox(
                                          width: double.infinity,
                                          child: Center(
                                            // armchair2Efw (I119:16051;143:20736)
                                            child: SizedBox(
                                              width: 20.2*fem,
                                              height: 20.2*fem,
                                              child: Image.asset(
                                                'assets/cenima-app-user/images/armchair-2-zXX.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            // autogroupc6tmq9w (W2XvETN2ykLu5edcaTC6tM)
                            width: 20.26*fem,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // seatregad5KB (119:16061)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11.63*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 20.26*fem,
                                      child: Align(
                                        // armchairskq (I119:16061;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-Wof.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // seatregadgCV (119:16060)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 214.72*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 20.26*fem,
                                      child: Align(
                                        // armchairgbo (I119:16060;143:20729)
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 19*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-DhP.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // seatpremadLRT (119:16052)
                                  margin: EdgeInsets.fromLTRB(0.07*fem, 0*fem, 0*fem, 0*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: double.infinity,
                                      child: Center(
                                        // armchair2VxZ (I119:16052;143:20736)
                                        child: SizedBox(
                                          width: 20.2*fem,
                                          height: 20.2*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/armchair-2-Ksb.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // totalseatswZf (119:16248)
                    left: 0*fem,
                    top: 668*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(96*fem, 22*fem, 96*fem, 23*fem),
                      width: 393*fem,
                      height: 82*fem,
                      decoration: BoxDecoration (
                        border: Border.all(color: const Color(0xff707070)),
                        color: const Color(0xffffffff),
                      ),
                      child: TextButton(
                        // mainbutton6qs (131:14332)
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: SizedBox(
                          width: double.infinity,
                          height: double.infinity,
                          child: Container(
                            // frame4XAV (I131:14332;18:475)
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              border: Border.all(color: const Color(0xff707070)),
                              color: const Color(0xffff2153),
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
                  ),
                  Positioned(
                    // makeseatsunavailablebypressing (119:16268)
                    left: 35*fem,
                    top: 27*fem,
                    child: Align(
                      child: SizedBox(
                        width: 274*fem,
                        height: 38*fem,
                        child: Text(
                          'Make seats unavailable by pressing on them\n once, don’t forget to save when you’re done',
                          style: SafeGoogleFont (
                            'Lucida Bright',
                            15*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2575*ffem/fem,
                            color: const Color(0xff8a8a8a),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // secondarybuttonRBK (134:15252)
                    left: 30*fem,
                    top: 622*fem,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 148*fem,
                        height: 33*fem,
                        decoration: BoxDecoration (
                          color: const Color(0xffff2153),
                          borderRadius: BorderRadius.circular(17.6289710999*fem),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x29000000),
                              offset: Offset(0*fem, 3.3054320812*fem),
                              blurRadius: 0.2754526734*fem,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'EDIT LAYOUT',
                            style: SafeGoogleFont (
                              'Lucida Bright',
                              13*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // secondarybuttonkWR (134:15253)
                    left: 209*fem,
                    top: 622*fem,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 148*fem,
                        height: 33*fem,
                        decoration: BoxDecoration (
                          color: const Color(0xffff2153),
                          borderRadius: BorderRadius.circular(17.6289710999*fem),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x29000000),
                              offset: Offset(0*fem, 3.3054320812*fem),
                              blurRadius: 0.2754526734*fem,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'EDIT SEATS TYPES',
                            style: SafeGoogleFont (
                              'Lucida Bright',
                              13*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}