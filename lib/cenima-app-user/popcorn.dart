import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class FoodOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    double width= deviceSize.width;
    double height= deviceSize.height;
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: height,
        width: width,
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: Container(
                decoration: BoxDecoration (
                  border: Border.all(color: Color(0xff707070)),
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.only (
                    topLeft: Radius.circular(42*fem),
                    topRight: Radius.circular(42*fem),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
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
                    // closeipM (I84:4910;1:159)
                    child: SizedBox(
                      width: 24.24*fem,
                      height: 24.24*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/close-7C1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            //popcorn imagge
            Container(
              padding: EdgeInsets.fromLTRB(78*fem, height*0.1, 78*fem, 4*fem),
              width: 334*fem,
              height: 216*fem,
              decoration: BoxDecoration (
                border: Border.all(color: Color(0xff9a2044)),
                color: Color(0xffffffff),
              ),
              child: Center(
                // bulkmovietheaterpopcornezq (84:4872)
                child: SizedBox(
                  width: 178*fem,
                  height: 207*fem,
                  child: Image.asset(
                    'assets/cenima-app-user/images/bulk-movie-theater-popcorn-YnR.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            //food name
            Row(
              children: [
                SizedBox(
                  width: 96*fem,
                  height: 33*fem,
                  child: Text(
                    'Popcorn',
                    textAlign: TextAlign.left,
                    style: SafeGoogleFont (
                      'Segoe UI',
                      26*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2575*ffem/fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                Container(
                  // incrementusT (I87:5651;87:5794)
                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 33*fem, 167.94*fem),
                  width: 135*fem,
                  height: 49.06*fem,
                  child: Stack(
                    children: [
                      Positioned(
                        // ri9 (I87:5651;87:5794;79:14140)
                        left: 11.9375*fem,
                        top: 14.5751953125*fem,
                        child: Center(
                          child: Align(
                            child: SizedBox(
                              width: 11*fem,
                              height: 21*fem,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                ),
                                child: Text(
                                  '-',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Adamina',
                                    25*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 0.84*ffem/fem,
                                    letterSpacing: -0.3199999928*fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // gah (I87:5651;87:5794;79:14141)
                        left: 62.4375*fem,
                        top: 14.0751953125*fem,
                        child: Center(
                          child: Align(
                            child: SizedBox(
                              width: 9*fem,
                              height: 22*fem,
                              child: Text(
                                '1',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Adamina',
                                  19*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.1052631579*ffem/fem,
                                  letterSpacing: -0.3199999928*fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // zzh (I87:5651;87:5794;79:14142)
                        left: 110.625*fem,
                        top: 14.5751953125*fem,
                        child: Center(
                          child: Align(
                            child: SizedBox(
                              width: 15*fem,
                              height: 21*fem,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                ),
                                child: Text(
                                  '+',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Adamina',
                                    25*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 0.84*ffem/fem,
                                    letterSpacing: -0.3199999928*fem,
                                    color: Color(0xff000000),
                                  ),
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //flavors
                Container(
                  // autogroupeezhXz5 (W2KiPHpF9XhodaGJPTEEzh)
                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                  width: double.infinity,
                  height: 31*fem,
                  child: Stack(
                    children: [
                      Positioned(
                        // regularmNd (84:4879)
                        left: 2.5*fem,
                        top: 0*fem,
                        child: Align(
                          child: SizedBox(
                            width: 82*fem,
                            height: 31*fem,
                            child: Text(
                              'Flavor:- ',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Tw Cen MT',
                                24*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575*ffem/fem,
                                color: Color(0xff707070),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // line31FSD (84:4881)
                        left: 0*fem,
                        top: 29*fem,
                        child: Align(
                          child: SizedBox(
                            width: 166*fem,
                            height: 1*fem,
                            child: Container(
                              decoration: BoxDecoration (
                                color: Color(0xff707070),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // group167Rzu (176:18238)
                  margin: EdgeInsets.fromLTRB(3.5*fem, 0*fem, 0*fem, 0*fem),
                  width: 87*fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // regular1TK (84:4878)
                        width: double.infinity,
                        child: Text(
                          'Butter',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Tw Cen MT',
                            24*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2575*ffem/fem,
                            color: Color(0xff7e132b),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4*fem,
                      ),
                      Container(
                        // spicyNSH (84:4880)
                        width: double.infinity,
                        child: Text(
                          'Caramel',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Tw Cen MT',
                            24*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2575*ffem/fem,
                            color: Color(0xff7e132b),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4*fem,
                      ),
                      Container(
                        // spicy7YH (84:4912)
                        width: double.infinity,
                        child: Text(
                          'Cheese',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Tw Cen MT',
                            24*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2575*ffem/fem,
                            color: Color(0xff7e132b),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              // regularGsf (I87:5651;87:5799)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6.11*fem),
              width: double.infinity,
              child: Text(
                'Size:-',
                textAlign: TextAlign.center,
                style: SafeGoogleFont (
                  'Tw Cen MT',
                  24*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.2575*ffem/fem,
                  color: Color(0xff707070),
                ),
              ),
            ),
            Container(
              // line32ray (I87:5651;87:5802)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12.89*fem),
              width: 166*fem,
              height: 1*fem,
              decoration: BoxDecoration (
                color: Color(0xff707070),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // autogroupqf8hEE9 (W2KjypzPRMDDpFUH2xqf8H)
                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 218*fem, 0*fem),
                  width: 82*fem,
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // regularTMo (I87:5651;87:5798)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                        width: double.infinity,
                        child: Text(
                          'Small',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Tw Cen MT',
                            24*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2575*ffem/fem,
                            color: Color(0xff7e132b),
                          ),
                        ),
                      ),
                      Container(
                        // spicy3qo (I87:5651;87:5800)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                        width: double.infinity,
                        child: Text(
                          'Medium',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Tw Cen MT',
                            24*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2575*ffem/fem,
                            color: Color(0xff7e132b),
                          ),
                        ),
                      ),
                      Container(
                        // spicyngu (I87:5651;87:5801)
                        width: double.infinity,
                        child: Text(
                          'Large',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Tw Cen MT',
                            24*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2575*ffem/fem,
                            color: Color(0xff7e132b),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //radio bottuns
                Container(
                  // checklistq9P (I87:5651;87:5803)
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                        // checkcirclehhP (I87:5651;87:5803;84:4806)
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: 20*fem,
                          height: 20*fem,
                          child: Image.asset(
                            'assets/cenima-app-user/images/checkcircle-x8M.png',
                            width: 20*fem,
                            height: 20*fem,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20*fem,
                      ),
                      TextButton(
                        // checkcirclep9j (I87:5651;87:5803;84:4807)
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: 20*fem,
                          height: 20*fem,
                          child: Image.asset(
                            'assets/cenima-app-user/images/checkcircle.png',
                            width: 20*fem,
                            height: 20*fem,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20*fem,
                      ),
                      TextButton(
                        // checkcirclenVs (I87:5651;87:5803;84:4810)
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: 20*fem,
                          height: 20*fem,
                          child: Image.asset(
                            'assets/cenima-app-user/images/checkcircle-T3s.png',
                            width: 20*fem,
                            height: 20*fem,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              // group106w1P (I87:5651;170:16899)
              padding: EdgeInsets.fromLTRB(38*fem, 9*fem, 29*fem, 0*fem),
              width: double.infinity,
              height: 55*fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(17.6289710999*fem),
              ),
              child: Container(
                // autogroup1pzpxx5 (W2KnMvgwvBF3YkkDf71PZP)
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // friedchickqky (I87:5651;87:5796)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 80*fem, 1*fem),
                      child: Text(
                        '0.75 JOD',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Tw Cen MT',
                          27*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2575*ffem/fem,
                          color: Color(0xff7e132b),
                        ),
                      ),
                    ),
                    TextButton(
                      // secondarybuttonPR7 (I87:5651;87:5797)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 146*fem,
                        height: double.infinity,
                        decoration: BoxDecoration (
                          color: Color(0xffff2153),
                          borderRadius: BorderRadius.circular(17.6289710999*fem),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x29000000),
                              offset: Offset(0*fem, 3.3054320812*fem),
                              blurRadius: 0.2754526734*fem,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'ADD',
                            style: GoogleFonts.caveat(
                              fontSize: 17.6289710999*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2575*ffem/fem,
                              color: Color(0xffffffff),
                            ),
                          ),
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