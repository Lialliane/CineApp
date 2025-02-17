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
        // searchGkm (348:20922)
        width: double.infinity,
        height: 850*fem,
        decoration: const BoxDecoration (
          color: Color(0xfff1f1f1),
        ),
        child: Stack(
          children: [
            Positioned(
              // rectangle43o8R (348:20923)
              left: 0*fem,
              top: 104*fem,
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
              // mainheaderAt5 (348:20924)
              left: 0*fem,
              top: 29*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 22*fem, 14*fem, 7*fem),
                width: 393*fem,
                height: 78*fem,
                decoration: BoxDecoration (
                  border: Border.all(color: const Color(0xffc2c2c2)),
                  color: const Color(0xffffffff),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // autogroupdf6urPX (W2f9JLG1SiBXDNd9i3df6u)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13*fem, 0*fem),
                      width: 320*fem,
                      height: double.infinity,
                      child: Stack(
                        children: [
                          Positioned(
                            // appnameAYd (I348:20924;9:1993)
                            left: 146.0645751953*fem,
                            top: 0*fem,
                            child: Align(
                              child: SizedBox(
                                width: 97*fem,
                                height: 28*fem,
                                child: Text(
                                  'App name',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Segoe UI',
                                    22.0362129211*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2575*ffem/fem,
                                    color: const Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // rectangle262z9 (I348:20924;9:1995)
                            left: 40*fem,
                            top: 10*fem,
                            child: Align(
                              child: SizedBox(
                                width: 280*fem,
                                height: 39*fem,
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom (
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(34*fem),
                                      border: Border.all(color: const Color(0xff777777)),
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // searchherem4Z (I348:20924;9:1997)
                            left: 56*fem,
                            top: 19*fem,
                            child: Align(
                              child: SizedBox(
                                width: 81*fem,
                                height: 19*fem,
                                child: Text(
                                  'SEARCH HERE ',
                                  style: SafeGoogleFont (
                                    'Lucida Bright',
                                    15*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2575*ffem/fem,
                                    color: const Color(0xff707070),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // close3RP (I348:20924;113:13959)
                            left: 0*fem,
                            top: 11*fem,
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(7*fem, 6*fem, 5.76*fem, 5.76*fem),
                                width: 37*fem,
                                height: 36*fem,
                                child: Center(
                                  // closenGV (I348:20924;113:13959;1:159)
                                  child: SizedBox(
                                    width: 24.24*fem,
                                    height: 24.24*fem,
                                    child: Image.asset(
                                      'assets/cenima-app-user/images/close-tCV.png',
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
                      // frame27A29 (I348:20924;151:17548)
                      margin: EdgeInsets.fromLTRB(0*fem, 6*fem, 0*fem, 0*fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(5*fem, 6*fem, 7*fem, 3*fem),
                          child: Center(
                            // loupeutq (I348:20924;9:1994)
                            child: SizedBox(
                              width: 34*fem,
                              height: 34*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/loupe-3Lh.png',
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
            ),
            Positioned(
              // androidkeyboardalphabetrobotok (348:20925)
              left: 0*fem,
              top: 584*fem,
              child: Container(
                width: 393*fem,
                height: 266*fem,
                decoration: const BoxDecoration (
                  color: Color(0xffffffff),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // bordertoprr1 (I348:20925;40:511)
                      width: double.infinity,
                      height: 1*fem,
                      decoration: const BoxDecoration (
                        color: Color(0xff020202),
                      ),
                    ),
                    Container(
                      // autogroupaz7jYD3 (W2fASU2Um4fYKBBCi5AZ7j)
                      padding: EdgeInsets.fromLTRB(19*fem, 19*fem, 16*fem, 58*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // row3qwertyuiopy3T (I348:20925;40:559)
                            margin: EdgeInsets.fromLTRB(5.5*fem, 0*fem, 12*fem, 16*fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  // qJzq (I348:20925;40:539;40:537)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16.5*fem, 0*fem),
                                    child: Text(
                                      'Q',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Roboto',
                                        24*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3333333333*ffem/fem,
                                        color: const Color(0xff020202),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // wU29 (I348:20925;40:541;40:537)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18*fem, 0*fem),
                                    child: Text(
                                      'W',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Roboto',
                                        24*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3333333333*ffem/fem,
                                        color: const Color(0xff020202),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // eQ4D (I348:20925;40:543;40:537)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21.5*fem, 0*fem),
                                    child: Text(
                                      'E',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Roboto',
                                        24*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3333333333*ffem/fem,
                                        color: const Color(0xff020202),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // rPRw (I348:20925;40:545;40:537)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21*fem, 0*fem),
                                    child: Text(
                                      'R',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Roboto',
                                        24*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3333333333*ffem/fem,
                                        color: const Color(0xff020202),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // tKyo (I348:20925;40:547;40:537)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21*fem, 0*fem),
                                    child: Text(
                                      'T',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Roboto',
                                        24*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3333333333*ffem/fem,
                                        color: const Color(0xff020202),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // yK6d (I348:20925;40:549;40:537)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20.5*fem, 0*fem),
                                    child: Text(
                                      'Y',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Roboto',
                                        24*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3333333333*ffem/fem,
                                        color: const Color(0xff020202),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // uVvD (I348:20925;40:551;40:537)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24.5*fem, 0*fem),
                                    child: Text(
                                      'U',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Roboto',
                                        24*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3333333333*ffem/fem,
                                        color: const Color(0xff020202),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // iegd (I348:20925;40:553;40:537)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
                                    child: Text(
                                      'I',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Roboto',
                                        24*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3333333333*ffem/fem,
                                        color: const Color(0xff020202),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // oScV (I348:20925;40:555;40:537)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19.5*fem, 0*fem),
                                    child: Text(
                                      'O',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Roboto',
                                        24*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3333333333*ffem/fem,
                                        color: const Color(0xff020202),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // pykq (I348:20925;40:557;40:537)
                                  child: Text(
                                    'P',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Roboto',
                                      24*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.3333333333*ffem/fem,
                                      color: const Color(0xff020202),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // row2asdfghjklbXK (I348:20925;40:560)
                            margin: EdgeInsets.fromLTRB(24*fem, 0*fem, 31.5*fem, 12*fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  // avxu (I348:20925;40:561;40:537)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20.5*fem, 0*fem),
                                    child: Text(
                                      'A',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Roboto',
                                        24*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3333333333*ffem/fem,
                                        color: const Color(0xff020202),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // s7Gh (I348:20925;40:562;40:537)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20.5*fem, 0*fem),
                                    child: Text(
                                      'S',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Roboto',
                                        24*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3333333333*ffem/fem,
                                        color: const Color(0xff020202),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // dTUy (I348:20925;40:563;40:537)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21*fem, 0*fem),
                                    child: Text(
                                      'D',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Roboto',
                                        24*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3333333333*ffem/fem,
                                        color: const Color(0xff020202),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // fTdP (I348:20925;40:564;40:537)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20.5*fem, 0*fem),
                                    child: Text(
                                      'F',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Roboto',
                                        24*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3333333333*ffem/fem,
                                        color: const Color(0xff020202),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // gBxh (I348:20925;40:565;40:537)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18.5*fem, 0*fem),
                                    child: Text(
                                      'G',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Roboto',
                                        24*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3333333333*ffem/fem,
                                        color: const Color(0xff020202),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // hmR7 (I348:20925;40:566;40:537)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                                    child: Text(
                                      'H',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Roboto',
                                        24*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3333333333*ffem/fem,
                                        color: const Color(0xff020202),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // jizZ (I348:20925;40:567;40:537)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21*fem, 0*fem),
                                    child: Text(
                                      'J',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Roboto',
                                        24*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3333333333*ffem/fem,
                                        color: const Color(0xff020202),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // k8Hb (I348:20925;40:568;40:537)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21.5*fem, 0*fem),
                                    child: Text(
                                      'K',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Roboto',
                                        24*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3333333333*ffem/fem,
                                        color: const Color(0xff020202),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // l8S1 (I348:20925;40:569;40:537)
                                  child: Text(
                                    'L',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Roboto',
                                      24*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.3333333333*ffem/fem,
                                      color: const Color(0xff020202),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // row1zxcvbnmL2H (I348:20925;40:581)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 8*fem),
                            padding: EdgeInsets.fromLTRB(18*fem, 4*fem, 12*fem, 4*fem),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // uppercaseti1 (I348:20925;40:600)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 30.5*fem, 0.5*fem),
                                  width: 12*fem,
                                  height: 12.5*fem,
                                  child: Image.asset(
                                    'assets/cenima-app-user/images/uppercase-12M.png',
                                    width: 12*fem,
                                    height: 12.5*fem,
                                  ),
                                ),
                                Center(
                                  // zS7F (I348:20925;40:582;40:537)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20.5*fem, 0*fem),
                                    child: Text(
                                      'Z',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Roboto',
                                        24*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3333333333*ffem/fem,
                                        color: const Color(0xff020202),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // xpNh (I348:20925;40:583;40:537)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                                    child: Text(
                                      'X',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Roboto',
                                        24*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3333333333*ffem/fem,
                                        color: const Color(0xff020202),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // c1CH (I348:20925;40:584;40:537)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                                    child: Text(
                                      'C',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Roboto',
                                        24*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3333333333*ffem/fem,
                                        color: const Color(0xff020202),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // vwk9 (I348:20925;40:585;40:537)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20.5*fem, 0*fem),
                                    child: Text(
                                      'V',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Roboto',
                                        24*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3333333333*ffem/fem,
                                        color: const Color(0xff020202),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // bjR7 (I348:20925;40:586;40:537)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19.5*fem, 0*fem),
                                    child: Text(
                                      'B',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Roboto',
                                        24*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3333333333*ffem/fem,
                                        color: const Color(0xff020202),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // nHqw (I348:20925;40:587;40:537)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16.5*fem, 0*fem),
                                    child: Text(
                                      'N',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Roboto',
                                        24*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3333333333*ffem/fem,
                                        color: const Color(0xff020202),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // mHUZ (I348:20925;40:588;40:537)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21.5*fem, 0*fem),
                                    child: Text(
                                      'M',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Roboto',
                                        24*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3333333333*ffem/fem,
                                        color: const Color(0xff020202),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  // uppercase36M (I348:20925;40:604)
                                  width: 24*fem,
                                  height: 18*fem,
                                  child: Image.asset(
                                    'assets/cenima-app-user/images/uppercase-M65.png',
                                    width: 24*fem,
                                    height: 18*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // row4actionrowftR (I348:20925;40:613)
                            margin: EdgeInsets.fromLTRB(7.5*fem, 0*fem, 0*fem, 0*fem),
                            padding: EdgeInsets.fromLTRB(0*fem, 4*fem, 8*fem, 4*fem),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  // fG9 (I348:20925;40:614)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 23*fem, 0*fem),
                                    child: Text(
                                      '?123',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Roboto',
                                        14*ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.7142857143*ffem/fem,
                                        letterSpacing: 1.5*fem,
                                        color: const Color(0xff020202),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // nVB (I348:20925;40:615)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21.5*fem, 0*fem),
                                    child: Text(
                                      ',',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Roboto',
                                        24*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3333333333*ffem/fem,
                                        color: const Color(0xff020202),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // spacebarBXK (I348:20925;40:620)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20.5*fem, 0*fem),
                                  width: 168*fem,
                                  height: 24*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(4*fem),
                                    color: const Color(0xffe0e0e0),
                                  ),
                                ),
                                Center(
                                  // kyj (I348:20925;40:616)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20.5*fem, 0*fem),
                                    child: Text(
                                      '.',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Roboto',
                                        24*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3333333333*ffem/fem,
                                        color: const Color(0xff020202),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  // done9W5 (I348:20925;40:617)
                                  width: 40*fem,
                                  height: 40*fem,
                                  child: Image.asset(
                                    'assets/cenima-app-user/images/done-eR3.png',
                                    width: 40*fem,
                                    height: 40*fem,
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
            Positioned(
              // iosstatusbarwithnotchsfGUD (348:20926)
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
                      // notchSGD (I348:20926;9:41)
                      left: 87*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 219*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/cenima-app-user/images/notch-ctm.png',
                            width: 219*fem,
                            height: 30*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // timeYiZ (I348:20926;9:73)
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
                      // iosiconstatusbarsPT (I348:20926;9:57)
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
                              // autogroupyx2vYtu (W2fHJrR13uFdBqTDFZyX2V)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1796*fem, 10*fem),
                              width: 48.96*fem,
                              height: 16*fem,
                            ),
                            Container(
                              // iosiconsmallmobilesignalyDX (I348:20926;9:57;9:6)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.35*fem, 2.33*fem),
                              width: 17*fem,
                              height: 10.67*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-mobile-signal-ucR.png',
                                width: 17*fem,
                                height: 10.67*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallwifiYfw (I348:20926;9:57;9:12)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.38*fem, 2.03*fem),
                              width: 15.27*fem,
                              height: 10.97*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-wifi-Fm7.png',
                                width: 15.27*fem,
                                height: 10.97*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallbattery4nh (I348:20926;9:57;9:17)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.67*fem),
                              width: 24.33*fem,
                              height: 11.33*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-battery-qS5.png',
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