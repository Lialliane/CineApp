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
        // friedchicekenbP3 (83:4755)
        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          border: Border.all(color: const Color(0xff707070)),
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.only (
            topLeft: Radius.circular(42*fem),
            topRight: Radius.circular(42*fem),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupi9zpvJq (W2KchY82gp4Df6u8YJi9ZP)
              padding: EdgeInsets.fromLTRB(30*fem, 13*fem, 18*fem, 6*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    // closeZ6u (84:4986)
                    margin: EdgeInsets.fromLTRB(308*fem, 0*fem, 0*fem, 4*fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(7*fem, 6*fem, 5.76*fem, 5.76*fem),
                        child: Center(
                          // closegDT (I84:4986;1:159)
                          child: SizedBox(
                            width: 24.24*fem,
                            height: 24.24*fem,
                            child: Image.asset(
                              'assets/cenima-app-user/images/close-BoB.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // picuM7 (83:4780)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 0*fem),
                    padding: EdgeInsets.fromLTRB(24*fem, 10*fem, 39*fem, 10*fem),
                    decoration: BoxDecoration (
                      border: Border.all(color: const Color(0xff9a2044)),
                      color: const Color(0xffffffff),
                    ),
                    child: Center(
                      // bulkmovietheaterpopcorntiq (83:4769)
                      child: SizedBox(
                        width: 271*fem,
                        height: 196*fem,
                        child: Image.asset(
                          'assets/cenima-app-user/images/bulk-movie-theater-popcorn-W6y.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              // autogroupon7fFSu (W2KahqwoXRX2XeuTFXon7F)
              width: double.infinity,
              height: 300*fem,
              child: Stack(
                children: [
                  Positioned(
                    // friedchickWtd (83:4761)
                    left: 39*fem,
                    top: 8*fem,
                    child: Align(
                      child: SizedBox(
                        width: 118*fem,
                        height: 26*fem,
                        child: Text(
                          'Fried chicken',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Segoe UI',
                            20*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2575*ffem/fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // chooseLWH (84:4843)
                    left: 31*fem,
                    top: 61*fem,
                    child: SizedBox(
                      width: 166*fem,
                      height: 123*fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // regularwFB (83:4781)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                            width: double.infinity,
                            child: Text(
                              'Spice:- ',
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
                            // line31vcu (84:4782)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                            width: double.infinity,
                            height: 1*fem,
                            decoration: const BoxDecoration (
                              color: Color(0xff707070),
                            ),
                          ),
                          Container(
                            // regular7Bb (83:4776)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                            width: double.infinity,
                            child: Text(
                              'Regular',
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
                            // spicyJG5 (83:4777)
                            width: double.infinity,
                            child: Text(
                              'Spicy',
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
                    // foodselectionchickenuFs (87:8159)
                    left: 0*fem,
                    top: 0*fem,
                    child: SizedBox(
                      width: 393*fem,
                      height: 288*fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // incrementFyw (I87:8159;87:7882)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 29*fem, 187*fem),
                            padding: EdgeInsets.fromLTRB(11.94*fem, 12.51*fem, 9.38*fem, 11.49*fem),
                            decoration: BoxDecoration (
                              border: Border.all(color: const Color(0xffffffff)),
                              borderRadius: BorderRadius.circular(15*fem),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  // nsP (I87:8159;87:7882;79:14169)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39.5*fem, 0*fem),
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
                                Center(
                                  // e2R (I87:8159;87:7882;79:14170)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39.19*fem, 0*fem),
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
                                Center(
                                  // cdT (I87:8159;87:7882;79:14171)
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
                              ],
                            ),
                          ),
                          Container(
                            // line31kNH (I87:8159;87:7883)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                            width: double.infinity,
                            height: 1*fem,
                            decoration: const BoxDecoration (
                              color: Color(0xff707070),
                            ),
                          ),
                          Container(
                            // autogroupwv3bas7 (W2KbWKcMsUowc2NWP9WV3b)
                            margin: EdgeInsets.fromLTRB(54.5*fem, 0*fem, 29*fem, 0*fem),
                            width: double.infinity,
                            height: 46*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  // friedchickC7o (I87:8159;87:7880)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 96.5*fem, 1*fem),
                                  child: Text(
                                    '3 JOD',
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
                                  // secondarybuttonLNR (I87:8159;87:7881)
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
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // youwontaddunlessyouchoose6PX (170:16648)
                    left: 9*fem,
                    top: 116*fem,
                    child: SizedBox(
                      width: 384*fem,
                      height: 184*fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // checklistGSR (I170:16648;170:16674)
                            margin: EdgeInsets.fromLTRB(292*fem, 0*fem, 0*fem, 25*fem),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // checkcircle7C9 (I170:16648;170:16674;84:4785)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: SizedBox(
                                      width: 20*fem,
                                      height: 20*fem,
                                      child: Image.asset(
                                        'assets/cenima-app-user/images/checkcircle-q4R.png',
                                        width: 20*fem,
                                        height: 20*fem,
                                      ),
                                    ),
                                  ),
                                ),
                                TextButton(
                                  // checkcirclePJ5 (I170:16648;170:16674;84:4786)
                                  onPressed: () {},
                                  style: TextButton.styleFrom (
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: SizedBox(
                                    width: 20*fem,
                                    height: 20*fem,
                                    child: Image.asset(
                                      'assets/cenima-app-user/images/checkcircle-UcV.png',
                                      width: 20*fem,
                                      height: 20*fem,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            // group173Z65 (I170:16648;176:18508)
                            width: double.infinity,
                            height: 99*fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // rectangle103y9o (I170:16648;176:18508;176:18246)
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
                                  // pleasechooseanoptionAVB (I170:16648;176:18508;176:18247)
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
          ],
        ),
      ),
          );
  }
}