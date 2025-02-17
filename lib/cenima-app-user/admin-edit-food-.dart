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
        // admineditfoodvTX (142:18190)
        width: double.infinity,
        height: 852*fem,
        decoration: const BoxDecoration (
          color: Color(0xfff1f1f1),
        ),
        child: Stack(
          children: [
            Positioned(
              // rectangleedittof (142:18191)
              left: 0*fem,
              top: 96*fem,
              child: Align(
                child: SizedBox(
                  width: 391*fem,
                  height: 1055*fem,
                  child: Container(
                    decoration: const BoxDecoration (
                      color: Color(0xfff1f1f1),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // choosefileb5o (142:18194)
              left: 19*fem,
              top: 478*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 112*fem,
                  height: 36*fem,
                  decoration: BoxDecoration (
                    border: Border.all(color: const Color(0xff707070)),
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(23*fem),
                  ),
                  child: Center(
                    child: Text(
                      'Choose file',
                      style: SafeGoogleFont (
                        'Tw Cen MT',
                        20*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2575*ffem/fem,
                        color: const Color(0xff464646),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // attachfileWkV (142:18197)
              left: 138*fem,
              top: 485*fem,
              child: Align(
                child: SizedBox(
                  width: 95*fem,
                  height: 26*fem,
                  child: RichText(
                    text: TextSpan(
                      style: SafeGoogleFont (
                        'Tw Cen MT',
                        20*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2575*ffem/fem,
                        color: const Color(0xffa6a6a6),
                      ),
                      children: [
                        TextSpan(
                          text: 'Attach File',
                          style: SafeGoogleFont (
                            'Tw Cen MT',
                            20*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2575*ffem/fem,
                            color: const Color(0xffa6a6a6),
                          ),
                        ),
                        const TextSpan(
                          text: '*',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // component56mrm (142:18199)
              left: 26.5*fem,
              top: 745*fem,
              child: SizedBox(
                width: 335.5*fem,
                height: 217*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // sizesgMT (I142:18199;118:15293)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                      width: double.infinity,
                      child: Text(
                        'Sizes',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Lucida Bright',
                          22*ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2575*ffem/fem,
                          color: const Color(0xff7e132b),
                        ),
                      ),
                    ),
                    Container(
                      // autogroup17hpexV (W2cyhcCraoDX1YQJsr17hP)
                      margin: EdgeInsets.fromLTRB(6.5*fem, 0*fem, 0*fem, 4*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // regulartbw (I142:18199;119:15363)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 247*fem, 0*fem),
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
                            // checkboxE3X (I142:18199;119:15373)
                            margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(3*fem, 3*fem, 3*fem, 3*fem),
                                width: 24*fem,
                                height: 24*fem,
                                child: Container(
                                  // checkboxALV (I142:18199;119:15373;48:402)
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: BoxDecoration (
                                    border: Border.all(color: const Color(0xff6f001a)),
                                    borderRadius: BorderRadius.circular(2*fem),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupkqg1dzm (W2czAG77Pe5xsetiHxkqG1)
                      margin: EdgeInsets.fromLTRB(6.5*fem, 0*fem, 0*fem, 4*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // spicyDCH (I142:18199;119:15364)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 223*fem, 0*fem),
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
                          Container(
                            // checkboxwhF (I142:18199;119:15377)
                            margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(3*fem, 3*fem, 3*fem, 3*fem),
                                width: 24*fem,
                                height: 24*fem,
                                child: Container(
                                  // checkboxZc9 (I142:18199;119:15377;48:402)
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: BoxDecoration (
                                    border: Border.all(color: const Color(0xff6f001a)),
                                    borderRadius: BorderRadius.circular(2*fem),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupzaxvw6u (W2czakQJpYxfK2odhvzAxV)
                      margin: EdgeInsets.fromLTRB(9.5*fem, 0*fem, 0*fem, 40*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // spicyJrZ (I142:18199;119:15365)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 246*fem, 0*fem),
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
                          Container(
                            // checkboxfqX (I142:18199;119:15381)
                            margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(3*fem, 3*fem, 3*fem, 3*fem),
                                width: 24*fem,
                                height: 24*fem,
                                child: Container(
                                  // checkbox7qw (I142:18199;119:15381;48:402)
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: BoxDecoration (
                                    border: Border.all(color: const Color(0xff6f001a)),
                                    borderRadius: BorderRadius.circular(2*fem),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupqxrfnx5 (W2czyzEazac7rDYAGjqXRf)
                      margin: EdgeInsets.fromLTRB(0.5*fem, 0*fem, 39*fem, 0*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // priceAxd (I142:18199;118:15294)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 111*fem, 5*fem),
                            child: Text(
                              'Price',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Lucida Bright',
                                22*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2575*ffem/fem,
                                color: const Color(0xff7e132b),
                              ),
                            ),
                          ),
                          SizedBox(
                            // component59HA5 (I142:18199;142:17958)
                            height: 27*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  // autogroup2qqf7eu (W2d1SZJeWxrt7v5jmK2qqf)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
                                  padding: EdgeInsets.fromLTRB(20*fem, 4*fem, 20*fem, 0*fem),
                                  height: double.infinity,
                                  decoration: BoxDecoration (
                                    border: Border.all(color: const Color(0xff383838)),
                                    color: const Color(0xffffffff),
                                  ),
                                  child: Text(
                                    '03.00',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Lucida Bright',
                                      18*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2575*ffem/fem,
                                      color: const Color(0xff8a8a8a),
                                    ),
                                  ),
                                ),
                                Text(
                                  // jodJso (I142:18199;142:17958;142:17954)
                                  'JOD',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Lucida Bright',
                                    18*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2575*ffem/fem,
                                    color: const Color(0xff000000),
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
              // component42VSV (142:18200)
              left: 32*fem,
              top: 161*fem,
              child: SizedBox(
                width: 337*fem,
                height: 101*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // movietitleF4H (I142:18200;142:17496)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                      width: double.infinity,
                      child: Text(
                        'Food Name',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Lucida Bright',
                          22*ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2575*ffem/fem,
                          color: const Color(0xff7e132b),
                        ),
                      ),
                    ),
                    Container(
                      // autogroupib6dnyK (W2d3B1RGkNp9fp6D7WiB6D)
                      padding: EdgeInsets.fromLTRB(14*fem, 16*fem, 14*fem, 13*fem),
                      width: double.infinity,
                      decoration: BoxDecoration (
                        border: Border.all(color: const Color(0xff6a6a6a)),
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(10*fem),
                      ),
                      child: Text(
                        'Fried Chicken',
                        style: SafeGoogleFont (
                          'Tw Cen MT',
                          20*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2*ffem/fem,
                          letterSpacing: 0.150000006*fem,
                          color: const Color(0xff020202),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // uploadfoodpictureeu3 (142:18269)
              left: 19*fem,
              top: 363*fem,
              child: Align(
                child: SizedBox(
                  width: 121*fem,
                  height: 56*fem,
                  child: Text(
                    'Upload Food Picture:-',
                    style: SafeGoogleFont (
                      'Lucida Bright',
                      22*ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xff7e132b),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // mwfzf2qid (142:18270)
              left: 207*fem,
              top: 345*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 152*fem,
                  height: 126*fem,
                  decoration: const BoxDecoration (
                    image: DecorationImage (
                      fit: BoxFit.cover,
                      image: AssetImage (
                        'assets/cenima-app-user/images/mwfzf-1-bg.png',
                      ),
                    ),
                  ),
                  child: Center(
                    // bulkmovietheaterpopcorneg5 (142:18263)
                    child: SizedBox(
                      width: 152*fem,
                      height: 126*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/bulk-movie-theater-popcorn-dJm.png',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // component617Jm (142:18528)
              left: 22*fem,
              top: 560*fem,
              child: SizedBox(
                width: 337*fem,
                height: 161*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // autogroupvmyraTF (W2d3rVHVFtRiuW9rhRVMYR)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                      width: 256*fem,
                      height: 64*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // flavorsFZP (I142:18528;142:18428)
                            left: 7*fem,
                            top: 0*fem,
                            child: Align(
                              child: SizedBox(
                                width: 69*fem,
                                height: 28*fem,
                                child: Text(
                                  'Flavors',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Lucida Bright',
                                    22*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2575*ffem/fem,
                                    color: const Color(0xff7e132b),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // separatebyacommaifmorethanoneu (I142:18528;142:18430)
                            left: 0*fem,
                            top: 26*fem,
                            child: Align(
                              child: SizedBox(
                                width: 256*fem,
                                height: 38*fem,
                                child: Text(
                                  'separate by a comma “,” if more than one\nusers will pick from these',
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
                        ],
                      ),
                    ),
                    Container(
                      // autogroupmzupvxM (W2d4A4cY8iEm6ccCVEMZuP)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                      padding: EdgeInsets.fromLTRB(19*fem, 15*fem, 19*fem, 14*fem),
                      width: double.infinity,
                      decoration: BoxDecoration (
                        border: Border.all(color: const Color(0xff6a6a6a)),
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(10*fem),
                      ),
                      child: Text(
                        'flavors',
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
                    Container(
                      // autogroupzccmj2d (W2d4QUNCE6frk399CMzccm)
                      margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 141*fem, 0*fem),
                      width: double.infinity,
                      height: 33*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // genreboxkCd (I142:18528;142:18419)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 0*fem),
                            padding: EdgeInsets.fromLTRB(8.48*fem, 4*fem, 2.17*fem, 7*fem),
                            height: double.infinity,
                            decoration: BoxDecoration (
                              border: Border.all(color: const Color(0xff787878)),
                              color: const Color(0xffffffff),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // textSUm (I142:18528;142:18421)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 27.35*fem, 3*fem),
                                  child: Text(
                                    'Regular',
                                    style: SafeGoogleFont (
                                      'Segoe UI',
                                      15*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2575*ffem/fem,
                                      color: const Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Container(
                                  // closeS7P (I142:18528;142:18422)
                                  margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 0*fem, 0*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(3.59*fem, 3.17*fem, 2.96*fem, 3.04*fem),
                                      child: Center(
                                        // closen4m (I142:18528;142:18422;1:159)
                                        child: SizedBox(
                                          width: 12.45*fem,
                                          height: 12.79*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/close-F3K.png',
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
                            // genreboxMGH (I142:18528;142:18423)
                            padding: EdgeInsets.fromLTRB(5.66*fem, 4*fem, 2.11*fem, 7*fem),
                            height: double.infinity,
                            decoration: BoxDecoration (
                              border: Border.all(color: const Color(0xff787878)),
                              color: const Color(0xffffffff),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // text9hw (I142:18528;142:18425)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 9.23*fem, 3*fem),
                                  child: Text(
                                    'Spicy',
                                    style: SafeGoogleFont (
                                      'Segoe UI',
                                      15*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2575*ffem/fem,
                                      color: const Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Container(
                                  // closexQV (I142:18528;142:18426)
                                  margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 0*fem, 0*fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(3.59*fem, 3.17*fem, 2.96*fem, 3.04*fem),
                                      child: Center(
                                        // closegUu (I142:18528;142:18426;1:159)
                                        child: SizedBox(
                                          width: 12.45*fem,
                                          height: 12.79*fem,
                                          child: Image.asset(
                                            'assets/cenima-app-user/images/close-GWq.png',
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
                  ],
                ),
              ),
            ),
            Positioned(
              // mainbuttonuMf (142:18202)
              left: 96*fem,
              top: 797*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: SizedBox(
                  width: 201*fem,
                  height: 37*fem,
                  child: Container(
                    // frame4fEM (I142:18202;18:475)
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: const Color(0xff707070)),
                      color: const Color(0xff9a2044),
                      borderRadius: BorderRadius.circular(54*fem),
                    ),
                    child: Center(
                      child: Text(
                        'CONFIRM',
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
              // headerBM7 (142:18203)
              left: 0*fem,
              top: 26*fem,
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
                      // arrowdownsigntonavigateFkH (I142:18203;75:1573;1:127)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 116*fem, 0*fem),
                      width: 30*fem,
                      height: 28*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/arrow-down-sign-to-navigate-p9s.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // accountinfosFs (I142:18203;1:1762)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 123*fem, 1.5*fem),
                      child: Text(
                        'Add Movie',
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
                    Container(
                      // closeqc1 (I142:18203;76:1577;1:159)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.76*fem),
                      width: 24.24*fem,
                      height: 24.24*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/close-pyb.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // iosstatusbarwithnotchsfQHj (142:18204)
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
                      // notchnZB (I142:18204;9:41)
                      left: 87*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 219*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/cenima-app-user/images/notch-Fw3.png',
                            width: 219*fem,
                            height: 30*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // time7Uy (I142:18204;9:73)
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
                      // iosiconstatusbarCPw (I142:18204;9:57)
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
                              // autogroup2wowHJu (W2d6WkBnojoyk6p6R82Wow)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1796*fem, 10*fem),
                              width: 48.96*fem,
                              height: 16*fem,
                            ),
                            Container(
                              // iosiconsmallmobilesignalWBf (I142:18204;9:57;9:6)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.35*fem, 2.33*fem),
                              width: 17*fem,
                              height: 10.67*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-mobile-signal-h89.png',
                                width: 17*fem,
                                height: 10.67*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallwifizm3 (I142:18204;9:57;9:12)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.38*fem, 2.03*fem),
                              width: 15.27*fem,
                              height: 10.97*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-wifi-pAH.png',
                                width: 15.27*fem,
                                height: 10.97*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallbatterymfK (I142:18204;9:57;9:17)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.67*fem),
                              width: 24.33*fem,
                              height: 11.33*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-battery-PbB.png',
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