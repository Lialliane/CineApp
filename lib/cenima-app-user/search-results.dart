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
        // searchresultsSJh (1:1539)
        width: double.infinity,
        height: 850*fem,
        decoration: const BoxDecoration (
          color: Color(0xfff1f1f1),
        ),
        child: Stack(
          children: [
            Positioned(
              // autogroupew3fF1F (W2VFDf9xaXsJoRETNAeW3F)
              left: 0*fem,
              top: 104*fem,
              child: SizedBox(
                width: 393*fem,
                height: 742*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle43m81 (87:8731)
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
                      // filmcard9eM (1:1548)
                      left: 6*fem,
                      top: 24*fem,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 99*fem, 0*fem),
                          width: 387*fem,
                          height: 174*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // SG5 (1:1540)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 0*fem),
                                width: 122*fem,
                                height: 174*fem,
                                child: Image.asset(
                                  'assets/cenima-app-user/images/-2ey.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                // autogroupaoa5ssB (W2VG2U9J4RcxFSUpBxaoa5)
                                width: 159*fem,
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // themenuKz5 (1:1541)
                                      margin: EdgeInsets.fromLTRB(9*fem, 0*fem, 0*fem, 12*fem),
                                      child: Text(
                                        'The Menu',
                                        style: SafeGoogleFont (
                                          'Lucida Bright',
                                          15*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2575*ffem/fem,
                                          color: const Color(0xff7e132b),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // comedyhorrorthrillerqL9 (1:1542)
                                      margin: EdgeInsets.fromLTRB(8*fem, 0*fem, 0*fem, 12*fem),
                                      child: Text(
                                        'Comedy, Horror, Thriller',
                                        style: SafeGoogleFont (
                                          'Lucida Bright',
                                          15*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2575*ffem/fem,
                                          color: const Color(0xffff2153),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // autogroup85vuckD (W2VGYNT8wAV2FeqScJ85vu)
                                      margin: EdgeInsets.fromLTRB(8*fem, 0*fem, 22*fem, 12*fem),
                                      width: double.infinity,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // durationG45 (1:1543)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19*fem, 0*fem),
                                            child: Text(
                                              'Duration:-',
                                              style: SafeGoogleFont (
                                                'Lucida Bright',
                                                15*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2575*ffem/fem,
                                                color: const Color(0xff464646),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            // h47md33 (1:1544)
                                            '1h 47m',
                                            style: SafeGoogleFont (
                                              'Lucida Bright',
                                              15*ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.2575*ffem/fem,
                                              color: const Color(0xff464646),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // autogroupf4nqgGD (W2VGu2XPJy4KQ3GMZEf4nq)
                                      margin: EdgeInsets.fromLTRB(8*fem, 0*fem, 71*fem, 30*fem),
                                      width: double.infinity,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // starvgM (1:1546)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                            width: 22*fem,
                                            height: 22*fem,
                                            child: Image.asset(
                                              'assets/cenima-app-user/images/star-3vm.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Text(
                                            // sV7 (1:1545)
                                            '7.5/10',
                                            style: SafeGoogleFont (
                                              'Lucida Bright',
                                              17*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2575*ffem/fem,
                                              color: const Color(0xffff2153),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // autogroupoduzvTP (W2VHHGPL5VKapGey3WodUZ)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13*fem, 0*fem),
                                      width: double.infinity,
                                      height: 29*fem,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // frame5AMj (I113:13933;18:494)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 25*fem, 0*fem),
                                            width: 30*fem,
                                            height: double.infinity,
                                            decoration: BoxDecoration (
                                              border: Border.all(color: const Color(0xff707070)),
                                              color: const Color(0xff7e132b),
                                              borderRadius: BorderRadius.circular(45*fem),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'R ',
                                                style: SafeGoogleFont (
                                                  'Lucida Bright',
                                                  16.5271606445*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2575*ffem/fem,
                                                  color: const Color(0xffffffff),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // frame3dPj (I113:13932;18:464)
                                            width: 91*fem,
                                            height: double.infinity,
                                            decoration: BoxDecoration (
                                              border: Border.all(color: const Color(0xff707070)),
                                              color: const Color(0xff7e132b),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'English',
                                                style: SafeGoogleFont (
                                                  'Lucida Bright',
                                                  16.5271606445*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2575*ffem/fem,
                                                  color: const Color(0xffffffff),
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
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // mainheaderNEq (18:513)
              left: 0*fem,
              top: 25*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 22*fem, 21*fem, 7*fem),
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
                      // autogroupkqus3kH (W2VLYvSKENAxpL4N7TkQus)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18*fem, 0*fem),
                      width: 320*fem,
                      height: double.infinity,
                      child: Stack(
                        children: [
                          Positioned(
                            // appnameAiR (I18:513;9:2000)
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
                            // rectangle26rDs (I18:513;9:2002)
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
                            // menuYW1 (I18:513;9:2003)
                            left: 56*fem,
                            top: 19*fem,
                            child: Align(
                              child: SizedBox(
                                width: 37*fem,
                                height: 19*fem,
                                child: Text(
                                  'menu',
                                  style: SafeGoogleFont (
                                    'Lucida Bright',
                                    15*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2575*ffem/fem,
                                    color: const Color(0xffff2153),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // closeUny (I18:513;113:13968)
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
                                  // closeyt9 (I18:513;113:13968;1:159)
                                  child: SizedBox(
                                    width: 24.24*fem,
                                    height: 24.24*fem,
                                    child: Image.asset(
                                      'assets/cenima-app-user/images/close-9Yy.png',
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
                      // loupedC1 (I18:513;9:2001)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                      width: 34*fem,
                      height: 34*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/loupe-n7w.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // androidkeyboardalphabetroboto1 (68:1942)
              left: 0*fem,
              top: 852*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                width: 393*fem,
                height: 266*fem,
                decoration: const BoxDecoration (
                  color: Color(0xff020202),
                ),
                child: Container(
                  // autogroupcqqqux9 (W2VMp418PGLKkp1pfCCqQq)
                  padding: EdgeInsets.fromLTRB(19*fem, 19*fem, 16*fem, 58*fem),
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // row3qwertyuiopXyX (I68:1942;40:559)
                        margin: EdgeInsets.fromLTRB(5.5*fem, 0*fem, 12*fem, 16*fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              // qx3F (I68:1942;40:539;40:537)
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
                              // w4Vb (I68:1942;40:541;40:537)
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
                              // eHBK (I68:1942;40:543;40:537)
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
                              // rXzm (I68:1942;40:545;40:537)
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
                              // tLBX (I68:1942;40:547;40:537)
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
                              // yHky (I68:1942;40:549;40:537)
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
                              // utEy (I68:1942;40:551;40:537)
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
                              // i2Vb (I68:1942;40:553;40:537)
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
                              // ocyb (I68:1942;40:555;40:537)
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
                              // pBfK (I68:1942;40:557;40:537)
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
                        // row2asdfghjklSr9 (I68:1942;40:560)
                        margin: EdgeInsets.fromLTRB(24*fem, 0*fem, 31.5*fem, 12*fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              // a35F (I68:1942;40:561;40:537)
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
                              // sajP (I68:1942;40:562;40:537)
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
                              // dCEy (I68:1942;40:563;40:537)
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
                              // f9ZX (I68:1942;40:564;40:537)
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
                              // gm57 (I68:1942;40:565;40:537)
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
                              // hWgu (I68:1942;40:566;40:537)
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
                              // jKPT (I68:1942;40:567;40:537)
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
                              // kK25 (I68:1942;40:568;40:537)
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
                              // lfk9 (I68:1942;40:569;40:537)
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
                        // row1zxcvbnmX1f (I68:1942;40:581)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 8*fem),
                        padding: EdgeInsets.fromLTRB(18*fem, 4*fem, 12*fem, 4*fem),
                        height: 40*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // uppercasecSR (I68:1942;40:600)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 30.5*fem, 0.5*fem),
                              width: 12*fem,
                              height: 12.5*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/uppercase-A61.png',
                                width: 12*fem,
                                height: 12.5*fem,
                              ),
                            ),
                            Center(
                              // z1UZ (I68:1942;40:582;40:537)
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
                              // xuTT (I68:1942;40:583;40:537)
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
                              // cgsX (I68:1942;40:584;40:537)
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
                              // vq89 (I68:1942;40:585;40:537)
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
                              // bQqT (I68:1942;40:586;40:537)
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
                              // nBUq (I68:1942;40:587;40:537)
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
                              // mPqo (I68:1942;40:588;40:537)
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
                              // uppercaseZ81 (I68:1942;40:604)
                              width: 24*fem,
                              height: 18*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/uppercase-bnM.png',
                                width: 24*fem,
                                height: 18*fem,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // row4actionrowbKb (I68:1942;40:613)
                        margin: EdgeInsets.fromLTRB(7.5*fem, 0*fem, 0*fem, 0*fem),
                        padding: EdgeInsets.fromLTRB(0*fem, 4*fem, 8*fem, 4*fem),
                        height: 48*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              // m7b (I68:1942;40:614)
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
                              // h9f (I68:1942;40:615)
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
                              // spacebarHNm (I68:1942;40:620)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20.5*fem, 0*fem),
                              width: 168*fem,
                              height: 24*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(4*fem),
                                color: const Color(0xffe0e0e0),
                              ),
                            ),
                            Center(
                              // sLy (I68:1942;40:616)
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
                              // donegpD (I68:1942;40:617)
                              width: 40*fem,
                              height: 40*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/done-WJZ.png',
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
              ),
            ),
            Positioned(
              // iosstatusbarwithnotchsfL85 (56:1166)
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
                      // notchg5T (I56:1166;9:41)
                      left: 87*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 219*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/cenima-app-user/images/notch-Jz1.png',
                            width: 219*fem,
                            height: 30*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // timeGZT (I56:1166;9:73)
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
                      // iosiconstatusbarZBB (I56:1166;9:57)
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
                              // autogroupyjr1gv1 (W2VW8EKN9jq9WoF3v4yJr1)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1796*fem, 10*fem),
                              width: 48.96*fem,
                              height: 16*fem,
                            ),
                            Container(
                              // iosiconsmallmobilesignaljdP (I56:1166;9:57;9:6)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.35*fem, 2.33*fem),
                              width: 17*fem,
                              height: 10.67*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-mobile-signal-YGD.png',
                                width: 17*fem,
                                height: 10.67*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallwifiH2d (I56:1166;9:57;9:12)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.38*fem, 2.03*fem),
                              width: 15.27*fem,
                              height: 10.97*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-wifi-jwK.png',
                                width: 15.27*fem,
                                height: 10.97*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallbattery5DP (I56:1166;9:57;9:17)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.67*fem),
                              width: 24.33*fem,
                              height: 11.33*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-battery-x2y.png',
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