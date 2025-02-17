import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

class CinemaList extends StatelessWidget {
  const CinemaList({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // cinemalistuQh (1:1051)
        width: double.infinity,
        height: 846 * fem,
        decoration: const BoxDecoration(
          color: Color(0xfff1f1f1),
        ),
        child: Stack(
          children: [
            Positioned(
              // Hg9 (87:8700)
              left: 0 * fem,
              top: 104 * fem,
              child: Align(
                child: SizedBox(
                  width: 391 * fem,
                  height: 742 * fem,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xfff1f1f1),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // group81QeH (76:2181)
              left: 0 * fem,
              top: 118 * fem,
              child: SizedBox(
                width: 393 * fem,
                height: 420 * fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      // group80DLq (76:2180)
                      width: double.infinity,
                      height: 94.5 * fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // group32VJM (1:1091)
                            left: 0 * fem,
                            top: 4 * fem,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(
                                  10.2 * fem, 0 * fem, 10.2 * fem, 0 * fem),
                              width: 381.83 * fem,
                              height: 90.5 * fem,
                              child: SizedBox(
                                // autogroupx9f33UH (W2QcJ8kMEiJRyxCDxmX9f3)
                                width: 236.81 * fem,
                                height: 72 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // cinema1gXF (1:1065)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 20.4 * fem, 0 * fem),
                                      width: 54.41 * fem,
                                      height: 56 * fem,
                                      child: Image.asset(
                                        'assets/cenima-app-user/images/cinema-1-KGH.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      // autogroupja4mJoX (W2QccHtm6kRFKxGMDPJA4M)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 5 * fem, 0 * fem, 0 * fem),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // firstcinemajtq (1:1066)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 0 * fem, 8 * fem),
                                            child: Text(
                                              'First Cinema ',
                                              style: SafeGoogleFont(
                                                'Lucida Bright',
                                                22 * ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.2575 * ffem / fem,
                                                color: const Color(0xff7e132b),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // greenlawnaveislipterracenewyor (1:1067)
                                            constraints: const BoxConstraints(
                                              // maxWidth: 162 * fem,
                                            ),
                                            child: RichText(
                                              text: TextSpan(
                                                style: SafeGoogleFont(
                                                  'Segoe UI',
                                                  12 * ffem,
                                                  fontWeight: FontWeight.w300,
                                                  height: 1.2575 * ffem / fem,
                                                  fontStyle: FontStyle.italic,
                                                  color:
                                                      const Color(0xff000000),
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: 'Greenlawn Ave,',
                                                    style: SafeGoogleFont(
                                                      'Segoe UI',
                                                      12 * ffem,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      height:
                                                          1.2575 * ffem / fem,
                                                      fontStyle:
                                                          FontStyle.italic,
                                                      color: const Color(
                                                          0xff000000),
                                                    ),
                                                  ),
                                                  const TextSpan(
                                                    text:
                                                        ' Islip Terrace, New York(NY), 11752',
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
                          ),
                          Positioned(
                            // secondarybuttonMch (56:1301)
                            left: 288.0704345703 * fem,
                            top: 0 * fem,
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                width: 103.96 * fem,
                                height: 33 * fem,
                                decoration: BoxDecoration(
                                  color: const Color(0xffff2153),
                                  borderRadius: BorderRadius.circular(
                                      17.6289710999 * fem),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x29000000),
                                      offset:
                                          Offset(0 * fem, 3.3054320812 * fem),
                                      blurRadius: 0.2754526734 * fem,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    'LOCATION',
                                    style: SafeGoogleFont(
                                      'Lucida Bright',
                                      14.5 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2575 * ffem / fem,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // secondarybuttonEiR (56:1304)
                            left: 288.0704345703 * fem,
                            top: 42 * fem,
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                width: 104.93 * fem,
                                height: 32 * fem,
                                decoration: BoxDecoration(
                                  color: const Color(0xffff2153),
                                  borderRadius: BorderRadius.circular(
                                      17.6289710999 * fem),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x29000000),
                                      offset:
                                          Offset(0 * fem, 3.3054320812 * fem),
                                      blurRadius: 0.2754526734 * fem,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    'SCHEDULE',
                                    style: SafeGoogleFont(
                                      'Lucida Bright',
                                      14 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2575 * ffem / fem,
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
                    Container(
                      // autogroup8anzkyb (W2QYi54NNRVBretDsa8ANZ)
                      padding: EdgeInsets.fromLTRB(
                          0 * fem, 14.5 * fem, 0 * fem, 15.5 * fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // group79y5f (76:2179)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 15 * fem),
                            width: 391 * fem,
                            height: 94 * fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // group33wAu (1:1088)
                                  left: 0 * fem,
                                  top: 3.5 * fem,
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(10.15 * fem,
                                        0 * fem, 10.15 * fem, 0 * fem),
                                    width: 379.88 * fem,
                                    height: 90.5 * fem,
                                    child: SizedBox(
                                      // autogroupfkehLiq (W2QZPDbok6e2ihAZmJfkEH)
                                      width: 252.43 * fem,
                                      height: 72 * fem,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // cinema1osK (1:1053)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 20.3 * fem, 0 * fem),
                                            width: 54.13 * fem,
                                            height: 56 * fem,
                                            child: Image.asset(
                                              'assets/cenima-app-user/images/cinema-1.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Container(
                                            // autogroupzyvqFDX (W2QZhYQcB3zDFX8Ls1ZYvq)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                5 * fem, 0 * fem, 0 * fem),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // secondcinemafHF (1:1054)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      0 * fem,
                                                      8 * fem),
                                                  child: Text(
                                                    'Second Cinema ',
                                                    style: SafeGoogleFont(
                                                      'Lucida Bright',
                                                      22 * ffem,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      height:
                                                          1.2575 * ffem / fem,
                                                      color: const Color(
                                                          0xff7e132b),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // duncanstjacksonvilleillinoisil (1:1055)
                                                  constraints: const BoxConstraints(
                                                    // maxWidth: 178 * fem,
                                                  ),
                                                  child: RichText(
                                                    text: TextSpan(
                                                      style: SafeGoogleFont(
                                                        'Segoe UI',
                                                        12 * ffem,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        height:
                                                            1.2575 * ffem / fem,
                                                        fontStyle:
                                                            FontStyle.italic,
                                                        color: const Color(
                                                            0xff000000),
                                                      ),
                                                      children: [
                                                        TextSpan(
                                                          text:
                                                              'Duncan St, Jac',
                                                          style: SafeGoogleFont(
                                                            'Segoe UI',
                                                            12 * ffem,
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            height: 1.2575 *
                                                                ffem /
                                                                fem,
                                                            fontStyle: FontStyle
                                                                .italic,
                                                            color: const Color(
                                                                0xff000000),
                                                          ),
                                                        ),
                                                        const TextSpan(
                                                          text:
                                                              'ksonville, Illinois(IL), 62650',
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
                                ),
                                Positioned(
                                  // secondarybuttonbnV (56:1307)
                                  left: 286.6044921875 * fem,
                                  top: 0 * fem,
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Container(
                                      width: 103.43 * fem,
                                      height: 33 * fem,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffff2153),
                                        borderRadius: BorderRadius.circular(
                                            17.6289710999 * fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color(0x29000000),
                                            offset: Offset(
                                                0 * fem, 3.3054320812 * fem),
                                            blurRadius: 0.2754526734 * fem,
                                          ),
                                        ],
                                      ),
                                      child: Center(
                                        child: Text(
                                          'LOCATION',
                                          style: SafeGoogleFont(
                                            'Lucida Bright',
                                            14.5 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.2575 * ffem / fem,
                                            color: const Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // secondarybuttonv61 (56:1308)
                                  left: 286.6044921875 * fem,
                                  top: 42 * fem,
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Container(
                                      width: 104.4 * fem,
                                      height: 32 * fem,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffff2153),
                                        borderRadius: BorderRadius.circular(
                                            17.6289710999 * fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color(0x29000000),
                                            offset: Offset(
                                                0 * fem, 3.3054320812 * fem),
                                            blurRadius: 0.2754526734 * fem,
                                          ),
                                        ],
                                      ),
                                      child: Center(
                                        child: Text(
                                          'SCHEDULE',
                                          style: SafeGoogleFont(
                                            'Lucida Bright',
                                            14 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.2575 * ffem / fem,
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
                          SizedBox(
                            // group77rXP (76:2177)
                            width: 392 * fem,
                            height: 93.5 * fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // group34XNd (1:1089)
                                  left: 0 * fem,
                                  top: 3 * fem,
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(10.18 * fem,
                                        0 * fem, 10.18 * fem, 0 * fem),
                                    width: 380.86 * fem,
                                    height: 90.5 * fem,
                                    child: SizedBox(
                                      // autogroupmcvqVTs (W2QaubEDpyPKEj7EFcMCvq)
                                      width: 252.62 * fem,
                                      height: 72 * fem,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // cinema1vp5 (1:1057)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 20.35 * fem, 0 * fem),
                                            width: 54.27 * fem,
                                            height: 56 * fem,
                                            child: Image.asset(
                                              'assets/cenima-app-user/images/cinema-1-yS5.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Container(
                                            // autogroupbqu1WGV (W2QbBamaK5WP9zbsW5bqU1)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                5 * fem, 0 * fem, 0 * fem),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // thirdcinemaZEm (1:1058)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      0 * fem,
                                                      8 * fem),
                                                  child: Text(
                                                    'Third Cinema ',
                                                    style: SafeGoogleFont(
                                                      'Lucida Bright',
                                                      22 * ffem,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      height:
                                                          1.2575 * ffem / fem,
                                                      color: const Color(
                                                          0xff7e132b),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // davisdr1belvidereillinoisil610 (1:1059)
                                                  constraints: const BoxConstraints(
                                                    // maxWidth: 178 * fem,
                                                  ),
                                                  child: RichText(
                                                    text: TextSpan(
                                                      style: SafeGoogleFont(
                                                        'Segoe UI',
                                                        12 * ffem,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        height:
                                                            1.2575 * ffem / fem,
                                                        fontStyle:
                                                            FontStyle.italic,
                                                        color: const Color(
                                                            0xff000000),
                                                      ),
                                                      children: [
                                                        TextSpan(
                                                          text:
                                                              'Davis Dr #1, B',
                                                          style: SafeGoogleFont(
                                                            'Segoe UI',
                                                            12 * ffem,
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            height: 1.2575 *
                                                                ffem /
                                                                fem,
                                                            fontStyle: FontStyle
                                                                .italic,
                                                            color: const Color(
                                                                0xff000000),
                                                          ),
                                                        ),
                                                        const TextSpan(
                                                          text:
                                                              'elvidere, Illinois(IL), 61008',
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
                                ),
                                Positioned(
                                  // secondarybuttonumo (56:1313)
                                  left: 287.3374633789 * fem,
                                  top: 0 * fem,
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Container(
                                      width: 103.69 * fem,
                                      height: 33 * fem,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffff2153),
                                        borderRadius: BorderRadius.circular(
                                            17.6289710999 * fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color(0x29000000),
                                            offset: Offset(
                                                0 * fem, 3.3054320812 * fem),
                                            blurRadius: 0.2754526734 * fem,
                                          ),
                                        ],
                                      ),
                                      child: Center(
                                        child: Text(
                                          'LOCATION',
                                          style: SafeGoogleFont(
                                            'Lucida Bright',
                                            14.5 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.2575 * ffem / fem,
                                            color: const Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // secondarybuttonqhP (56:1314)
                                  left: 287.3374633789 * fem,
                                  top: 42 * fem,
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Container(
                                      width: 104.66 * fem,
                                      height: 32 * fem,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffff2153),
                                        borderRadius: BorderRadius.circular(
                                            17.6289710999 * fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color(0x29000000),
                                            offset: Offset(
                                                0 * fem, 3.3054320812 * fem),
                                            blurRadius: 0.2754526734 * fem,
                                          ),
                                        ],
                                      ),
                                      child: Center(
                                        child: Text(
                                          'SCHEDULE',
                                          style: SafeGoogleFont(
                                            'Lucida Bright',
                                            14 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.2575 * ffem / fem,
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
                    SizedBox(
                      // group78PF3 (76:2178)
                      width: double.infinity,
                      height: 93 * fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // group35sAD (1:1090)
                            left: 0 * fem,
                            top: 2.5 * fem,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(
                                  10.2 * fem, 0 * fem, 10.2 * fem, 0 * fem),
                              width: 381.83 * fem,
                              height: 90.5 * fem,
                              child: SizedBox(
                                // autogroup7vydUfo (W2Qew4MYFDqmKwjEum7vYd)
                                width: 254.81 * fem,
                                height: 72 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // cinema1UZK (1:1061)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 20.4 * fem, 0 * fem),
                                      width: 54.41 * fem,
                                      height: 56 * fem,
                                      child: Image.asset(
                                        'assets/cenima-app-user/images/cinema-1-5Ts.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      // autogroupfknzWF7 (W2QfCtEWAQjU4PLEK9FknZ)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 5 * fem, 0 * fem, 0 * fem),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // fourthcinemaA4m (1:1062)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 0 * fem, 8 * fem),
                                            child: Text(
                                              'Fourth Cinema ',
                                              style: SafeGoogleFont(
                                                'Lucida Bright',
                                                22 * ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.2575 * ffem / fem,
                                                color: const Color(0xff7e132b),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // pennsylvaniaavestoneharbornewj (1:1063)
                                            constraints: const BoxConstraints(
                                              // maxWidth: 180 * fem,
                                            ),
                                            child: RichText(
                                              text: TextSpan(
                                                style: SafeGoogleFont(
                                                  'Segoe UI',
                                                  12 * ffem,
                                                  fontWeight: FontWeight.w300,
                                                  height: 1.2575 * ffem / fem,
                                                  fontStyle: FontStyle.italic,
                                                  color:
                                                      const Color(0xff000000),
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: 'Pennsylvania A',
                                                    style: SafeGoogleFont(
                                                      'Segoe UI',
                                                      12 * ffem,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      height:
                                                          1.2575 * ffem / fem,
                                                      fontStyle:
                                                          FontStyle.italic,
                                                      color: const Color(
                                                          0xff000000),
                                                    ),
                                                  ),
                                                  const TextSpan(
                                                    text:
                                                        've, Stone Harbor, New Jersey(NJ), 08247',
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
                          ),
                          Positioned(
                            // secondarybuttonWLu (56:1319)
                            left: 288.0704345703 * fem,
                            top: 0 * fem,
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                width: 103.96 * fem,
                                height: 33 * fem,
                                decoration: BoxDecoration(
                                  color: const Color(0xffff2153),
                                  borderRadius: BorderRadius.circular(
                                      17.6289710999 * fem),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x29000000),
                                      offset:
                                          Offset(0 * fem, 3.3054320812 * fem),
                                      blurRadius: 0.2754526734 * fem,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    'LOCATION',
                                    style: SafeGoogleFont(
                                      'Lucida Bright',
                                      14.5 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2575 * ffem / fem,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // secondarybuttonEZj (56:1320)
                            left: 288.0704345703 * fem,
                            top: 42 * fem,
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                width: 104.93 * fem,
                                height: 32 * fem,
                                decoration: BoxDecoration(
                                  color: const Color(0xffff2153),
                                  borderRadius: BorderRadius.circular(
                                      17.6289710999 * fem),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x29000000),
                                      offset:
                                          Offset(0 * fem, 3.3054320812 * fem),
                                      blurRadius: 0.2754526734 * fem,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    'SCHEDULE',
                                    style: SafeGoogleFont(
                                      'Lucida Bright',
                                      14 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2575 * ffem / fem,
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
            ),
            Positioned(
              // headernt5 (56:1364)
              left: 0 * fem,
              top: 26 * fem,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(11 * fem, 26 * fem, 22 * fem, 0 * fem),
                width: 394 * fem,
                height: 78 * fem,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffc2c2c2)),
                  color: const Color(0xffffffff),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // frame25v77 (I56:1364;151:16868)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 108.01 * fem, 0 * fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                              9 * fem, 13 * fem, 9.95 * fem, 10.35 * fem),
                          height: double.infinity,
                          child: Center(
                            // listSUm (I56:1364;1:44)
                            child: SizedBox(
                              width: 33.05 * fem,
                              height: 28.65 * fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/list-HnV.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // appnameSt5 (I56:1364;1:42)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 119.99 * fem, 11 * fem),
                      child: Text(
                        'CINÉ',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Nature Beauty Personal Use',
                          25 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.1 * ffem / fem,
                          color: const Color(0xffdd204a),
                        ),
                      ),
                    ),
                    Container(
                      // loupe2LV (I56:1364;1:43)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 10 * fem),
                      width: 34 * fem,
                      height: 34 * fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/loupe-EtM.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // bottomoriginalhsB (75:1431)
              left: 0 * fem,
              top: 764 * fem,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(24 * fem, 4 * fem, 29.5 * fem, 8 * fem),
                width: 393 * fem,
                height: 82 * fem,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff707070)),
                  color: const Color(0xffffffff),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // component116pKX (I75:1431;18:359)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 36.5 * fem, 0 * fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                              4.5 * fem, 0 * fem, 4.5 * fem, 6 * fem),
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // movieticket6RT (I75:1431;18:359;1:171)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 4 * fem),
                                width: 34 * fem,
                                height: 34 * fem,
                                child: Image.asset(
                                  'assets/cenima-app-user/images/movie-ticket-Wah.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                // booktickettcD (I75:1431;18:359;1:172)
                                constraints: const BoxConstraints(
                                  // maxWidth: 28 * fem,
                                ),
                                child: Text(
                                  'Book Ticket',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Segoe Script',
                                    10 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2575 * ffem / fem,
                                    color: const Color(0xff000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // component1182M3 (I75:1431;18:361)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 41 * fem, 6 * fem),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // filmreelFjb (I75:1431;18:361;1:171)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 4 * fem),
                            width: 34 * fem,
                            height: 34 * fem,
                            child: Image.asset(
                              'assets/cenima-app-user/images/film-reel-27o.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // rentmoviesh5o (I75:1431;18:361;1:172)
                            constraints: const BoxConstraints(
                              // maxWidth: 31 * fem,
                            ),
                            child: Text(
                              'Rent Movies',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Segoe Script',
                                10 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2575 * ffem / fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // component117r77 (I75:1431;18:360)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 3 * fem, 42 * fem, 3 * fem),
                      width: 34 * fem,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // cinemascreenGwX (I75:1431;18:360;1:171)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 4 * fem),
                            width: double.infinity,
                            height: 34 * fem,
                            decoration: const BoxDecoration(
                              color: Color(0xffff0039),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/cenima-app-user/images/cinema-screen-bg.png',
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // cinemalistUXo (I75:1431;18:360;1:172)
                            constraints: const BoxConstraints(
                              // maxWidth: 34 * fem,
                            ),
                            child: Text(
                              'Cinema List',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Segoe Script',
                                10 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2575 * ffem / fem,
                                color: const Color(0xffff2153),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // component1192Sq (I75:1431;18:362)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 41 * fem, 6 * fem),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // popcorn4uK (I75:1431;18:362;1:171)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 4 * fem),
                            width: 34 * fem,
                            height: 34 * fem,
                            child: Image.asset(
                              'assets/cenima-app-user/images/popcorn-mAD.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // foodmenuK4Z (I75:1431;18:362;1:172)
                            constraints: const BoxConstraints(
                              // maxWidth: 25 * fem,
                            ),
                            child: Text(
                              'Food\nMenu',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Segoe Script',
                                10 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2575 * ffem / fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // component120skH (I75:1431;18:363)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 8 * fem, 0 * fem, 11 * fem),
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // user1j1o (I75:1431;18:363;1:171)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 4 * fem),
                            width: 34 * fem,
                            height: 34 * fem,
                            child: Image.asset(
                              'assets/cenima-app-user/images/user-1-BL9.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            // profilekSh (I75:1431;18:363;1:172)
                            'Profile',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Segoe Script',
                              10 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2575 * ffem / fem,
                              color: const Color(0xff000000),
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
