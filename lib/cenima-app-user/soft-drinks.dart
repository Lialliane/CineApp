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
        // softdrinksUA1 (84:5030)
        width: double.infinity,
        height: 852*fem,
        child: Stack(
          children: [
            Positioned(
              // rectangle42Zqf (84:5032)
              left: 0*fem,
              top: 93*fem,
              child: Align(
                child: SizedBox(
                  width: 393*fem,
                  height: 759*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      border: Border.all(color: const Color(0xff707070)),
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.only (
                        topLeft: Radius.circular(42*fem),
                        topRight: Radius.circular(42*fem),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // closeVMw (84:5033)
              left: 347*fem,
              top: 110*fem,
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
                    // closeyRX (I84:5033;1:159)
                    child: SizedBox(
                      width: 24.24*fem,
                      height: 24.24*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/close-xVs.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // picCZB (84:5034)
              left: 37*fem,
              top: 154*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(78*fem, 5*fem, 78*fem, 4*fem),
                width: 334*fem,
                height: 216*fem,
                decoration: BoxDecoration (
                  border: Border.all(color: const Color(0xff9a2044)),
                  color: const Color(0xffffffff),
                ),
                child: Center(
                  // bulkmovietheaterpopcornxgm (84:5036)
                  child: SizedBox(
                    width: 178*fem,
                    height: 207*fem,
                    child: Image.asset(
                      'assets/cenima-app-user/images/bulk-movie-theater-popcorn.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // friedchick8Ds (84:5037)
              left: 37*fem,
              top: 383*fem,
              child: Align(
                child: SizedBox(
                  width: 127*fem,
                  height: 33*fem,
                  child: Text(
                    'Soft Drinks',
                    style: SafeGoogleFont (
                      'Segoe UI',
                      26*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // chooserJH (84:5041)
              left: 30*fem,
              top: 436*fem,
              child: SizedBox(
                width: 166*fem,
                height: 144*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // autogroupgrfwnr9 (W2KotJKN13zL4ngt9QgrFw)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                      width: double.infinity,
                      height: 31*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // regularcaH (84:5044)
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
                                    color: const Color(0xff707070),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // line31Lub (84:5050)
                            left: 0*fem,
                            top: 29*fem,
                            child: Align(
                              child: SizedBox(
                                width: 166*fem,
                                height: 1*fem,
                                child: Container(
                                  decoration: const BoxDecoration (
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
                      // regularGwf (84:5042)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                      width: double.infinity,
                      child: Text(
                        'Coca Cola',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Tw Cen MT',
                          24*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2575*ffem/fem,
                          color: const Color(0xff7e132b),
                        ),
                      ),
                    ),
                    Container(
                      // spicy58R (84:5046)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                      width: double.infinity,
                      child: Text(
                        'Sprite',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Tw Cen MT',
                          24*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2575*ffem/fem,
                          color: const Color(0xff7e132b),
                        ),
                      ),
                    ),
                    SizedBox(
                      // spicyCsF (84:5048)
                      width: double.infinity,
                      child: Text(
                        'Fanta',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Tw Cen MT',
                          24*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2575*ffem/fem,
                          color: const Color(0xff7e132b),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // foodselectioncolaeUM (87:7819)
              left: 0*fem,
              top: 380*fem,
              child: SizedBox(
                width: 393*fem,
                height: 461*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // incrementCuB (I87:7819;87:7024)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 33*fem, 171*fem),
                      width: 135*fem,
                      height: 46*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // redrecRX3 (I87:7819;87:7024;79:14521)
                            left: 50.625*fem,
                            top: 10.2221679688*fem,
                            child: Align(
                              child: SizedBox(
                                width: 32.63*fem,
                                height: 23.51*fem,
                                child: Container(
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(16*fem),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // rectangle381k9 (I87:7819;87:7024;79:14139)
                            left: 0*fem,
                            top: 0*fem,
                            child: Align(
                              child: SizedBox(
                                width: 135*fem,
                                height: 46*fem,
                                child: Container(
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(15*fem),
                                    border: Border.all(color: const Color(0xffffffff)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // wnD (I87:7819;87:7024;79:14140)
                            left: 11.9375*fem,
                            top: 13.0109863281*fem,
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
                                        color: const Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // LSy (I87:7819;87:7024;79:14141)
                            left: 62.4375*fem,
                            top: 12.5109863281*fem,
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
                                      color: const Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // dqP (I87:7819;87:7024;79:14142)
                            left: 110.625*fem,
                            top: 13.0109863281*fem,
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
                                        color: const Color(0xff000000),
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
                    SizedBox(
                      // component35UDj (I87:7819;87:7025)
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupcg5sMYR (W2Kr7emVhhRUVwi4qRCg5s)
                            padding: EdgeInsets.fromLTRB(30*fem, 0*fem, 37*fem, 37*fem),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // regularwFj (I87:7819;87:7029)
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
                                      color: const Color(0xff707070),
                                    ),
                                  ),
                                ),
                                Container(
                                  // line328LD (I87:7819;87:7032)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12.89*fem),
                                  width: 166*fem,
                                  height: 1*fem,
                                  decoration: const BoxDecoration (
                                    color: Color(0xff707070),
                                  ),
                                ),
                                Container(
                                  // autogroup11a5Myf (W2KpvSFptNBCSsBSgG11a5)
                                  margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 0*fem, 0*fem),
                                  width: double.infinity,
                                  height: 101*fem,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // autogroup7yvd7LZ (W2KqHve26kuKXP4cre7yvD)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 218*fem, 0*fem),
                                        width: 82*fem,
                                        height: double.infinity,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // regular7js (I87:7819;87:7028)
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
                                                  color: const Color(0xff7e132b),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // spicy7NV (I87:7819;87:7030)
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
                                                  color: const Color(0xff7e132b),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              // spicyTqf (I87:7819;87:7031)
                                              width: double.infinity,
                                              child: Text(
                                                'Large',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont (
                                                  'Tw Cen MT',
                                                  24*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2575*ffem/fem,
                                                  color: const Color(0xff7e132b),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // checklistVXT (I87:7819;87:7033)
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            TextButton(
                                              // checkcircleNr9 (I87:7819;87:7033;84:4806)
                                              onPressed: () {},
                                              style: TextButton.styleFrom (
                                                padding: EdgeInsets.zero,
                                              ),
                                              child: SizedBox(
                                                width: 20*fem,
                                                height: 20*fem,
                                                child: Image.asset(
                                                  'assets/cenima-app-user/images/checkcircle-x2y.png',
                                                  width: 20*fem,
                                                  height: 20*fem,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20*fem,
                                            ),
                                            TextButton(
                                              // checkcircleVJV (I87:7819;87:7033;84:4807)
                                              onPressed: () {},
                                              style: TextButton.styleFrom (
                                                padding: EdgeInsets.zero,
                                              ),
                                              child: SizedBox(
                                                width: 20*fem,
                                                height: 20*fem,
                                                child: Image.asset(
                                                  'assets/cenima-app-user/images/checkcircle-JKP.png',
                                                  width: 20*fem,
                                                  height: 20*fem,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20*fem,
                                            ),
                                            TextButton(
                                              // checkcirclefMP (I87:7819;87:7033;84:4810)
                                              onPressed: () {},
                                              style: TextButton.styleFrom (
                                                padding: EdgeInsets.zero,
                                              ),
                                              child: SizedBox(
                                                width: 20*fem,
                                                height: 20*fem,
                                                child: Image.asset(
                                                  'assets/cenima-app-user/images/checkcircle-Jjf.png',
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
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // group141nqK (I87:7819;170:16998)
                            padding: EdgeInsets.fromLTRB(44.5*fem, 9*fem, 29*fem, 0*fem),
                            width: double.infinity,
                            height: 55*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(17.6289710999*fem),
                            ),
                            child: SizedBox(
                              // autogroupg81jDQq (W2KsfGrq3TPzvAq8AtG81j)
                              width: double.infinity,
                              height: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    // friedchickVdF (I87:7819;87:7026)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 86.5*fem, 1*fem),
                                    child: Text(
                                      '0.5 JOD',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Tw Cen MT',
                                        27*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2575*ffem/fem,
                                        color: const Color(0xff7e132b),
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    // secondarybuttonqKj (I87:7819;87:7035)
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Container(
                                      width: 146*fem,
                                      height: double.infinity,
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
                                          'ADD',
                                          style: SafeGoogleFont (
                                            'Lucida Bright',
                                            17.6289710999*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.2575*ffem/fem,
                                            color: const Color(0xffffffff),
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
                  ],
                ),
              ),
            ),
            Positioned(
              // constraintp5B (176:18004)
              left: 9*fem,
              top: 473*fem,
              child: SizedBox(
                width: 384*fem,
                height: 380*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // checklistdHX (I176:18004;170:16744)
                      margin: EdgeInsets.fromLTRB(290*fem, 0*fem, 0*fem, 181*fem),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(
                            // checkcircleH7B (I176:18004;170:16744;84:4806)
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: SizedBox(
                              width: 20*fem,
                              height: 20*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/checkcircle-vow.png',
                                width: 20*fem,
                                height: 20*fem,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20*fem,
                          ),
                          TextButton(
                            // checkcircleQLD (I176:18004;170:16744;84:4807)
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: SizedBox(
                              width: 20*fem,
                              height: 20*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/checkcircle-unD.png',
                                width: 20*fem,
                                height: 20*fem,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20*fem,
                          ),
                          TextButton(
                            // checkcirclem4H (I176:18004;170:16744;84:4810)
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: SizedBox(
                              width: 20*fem,
                              height: 20*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/checkcircle-cCu.png',
                                width: 20*fem,
                                height: 20*fem,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      // group174JyK (I176:18004;176:18713)
                      width: double.infinity,
                      height: 99*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // rectangle103BXK (I176:18004;176:18713;176:18246)
                            left: 193*fem,
                            top: 23*fem,
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: SizedBox(
                                width: 191*fem,
                                height: 76*fem,
                              ),
                            ),
                          ),
                          Positioned(
                            // pleasechooseanoptionnX7 (I176:18004;176:18713;176:18247)
                            left: 0*fem,
                            top: 0*fem,
                            child: Opacity(
                              opacity: 0,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                ),
                                child: SizedBox(
                                  width: 340*fem,
                                  height: 29*fem,
                                  child: Text(
                                    'Please choose an option',
                                    style: SafeGoogleFont (
                                      'Segoe UI',
                                      20*ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.2575*ffem/fem,
                                      color: const Color(0xffff1e60),
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
          ],
        ),
      ),
          );
  }
}