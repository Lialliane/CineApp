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
        // adminmoviepagefoodeub (278:19890)
        width: double.infinity,
        height: 852*fem,
        decoration: const BoxDecoration (
          color: Color(0xfff1f1f1),
        ),
        child: Stack(
          children: [
            Positioned(
              // group1774TX (348:21296)
              left: 18*fem,
              top: 114*fem,
              child: SizedBox(
                width: 369*fem,
                height: 291*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // autogroupuhb33aM (W2MSqzFqYhH8gUMS3wUHb3)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 43*fem),
                      width: double.infinity,
                      height: 74*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // dateeditor3yf (278:19898)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 90.99*fem, 0*fem),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(24*fem, 0*fem, 24.01*fem, 0*fem),
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // calendariiR (I278:19898;1:39)
                                      margin: EdgeInsets.fromLTRB(0.01*fem, 0*fem, 0*fem, 11.13*fem),
                                      width: 41.87*fem,
                                      height: 41.87*fem,
                                      child: Image.asset(
                                        'assets/cenima-app-user/images/calendar-Lmb.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Text(
                                      // thu08dec6ys (I278:19898;1:40)
                                      'Thu, 08 Dec',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Lucida Bright',
                                        16.5271606445*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2575*ffem/fem,
                                        color: const Color(0xff777777),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // secondarybuttoneditbottuns7T (278:19903)
                            margin: EdgeInsets.fromLTRB(0*fem, 11*fem, 0*fem, 32*fem),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                width: 148*fem,
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
                                    'EDIT',
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
                    SizedBox(
                      // autogroupynkuooj (W2MTMDv89mDjwP9T5vYNku)
                      width: 360.5*fem,
                      height: 174*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // filmcardB3b (278:19892)
                            left: 0*fem,
                            top: 0*fem,
                            child: SizedBox(
                              width: 267*fem,
                              height: 174*fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // arR (278:19894)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                                    width: 122*fem,
                                    height: 174*fem,
                                    child: Image.asset(
                                      'assets/cenima-app-user/images/-ze1.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    // autogroupbc2yQaZ (W2MTx85e42zmYNDetubc2y)
                                    width: 129*fem,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // themenuQiy (278:19895)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
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
                                        SizedBox(
                                          // autogrouplacumhw (W2MUMCFXf9Qrtj4XcdLACu)
                                          width: double.infinity,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // duration2Ny (278:19896)
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
                                                // h47mAdb (278:19897)
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
                                          // autogroupamhpd1P (W2MUgrMSdSbxvA9XV3AMHP)
                                          padding: EdgeInsets.fromLTRB(0.5*fem, 25*fem, 0.5*fem, 0*fem),
                                          width: double.infinity,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // secondarybutton01357 (278:19899)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
                                                child: TextButton(
                                                  onPressed: () {},
                                                  style: TextButton.styleFrom (
                                                    padding: EdgeInsets.zero,
                                                  ),
                                                  child: Container(
                                                    width: 102*fem,
                                                    height: 30*fem,
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
                                                        '09:10 AM',
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
                                              ),
                                              TextButton(
                                                // secondarybutton038PP (278:19901)
                                                onPressed: () {},
                                                style: TextButton.styleFrom (
                                                  padding: EdgeInsets.zero,
                                                ),
                                                child: Container(
                                                  width: 102*fem,
                                                  height: 30*fem,
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
                                                      '02:40 PM',
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
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            // secondarybutton02gxd (278:19900)
                            left: 256.5*fem,
                            top: 67*fem,
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                width: 102*fem,
                                height: 30*fem,
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
                                    '11:55 AM',
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
                          ),
                          Positioned(
                            // secondarybutton04EWH (278:19902)
                            left: 258.5*fem,
                            top: 111*fem,
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                width: 102*fem,
                                height: 30*fem,
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
                                    '05:25 PM',
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
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // badminfoodNPX (278:19904)
              left: 0*fem,
              top: 770*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(13*fem, 6*fem, 25*fem, 6*fem),
                width: 393*fem,
                height: 82*fem,
                decoration: BoxDecoration (
                  border: Border.all(color: const Color(0xff707070)),
                  color: const Color(0xffffffff),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // component116gHj (I278:19904;279:20968)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 62*fem, 0*fem),
                      padding: EdgeInsets.fromLTRB(4*fem, 0*fem, 4*fem, 6*fem),
                      width: 54*fem,
                      height: double.infinity,
                      decoration: const BoxDecoration (
                        color: Color(0xffdb0233),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // movieticketBNu (I278:19904;279:20968;1:171)
                            margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 6*fem, 4*fem),
                            width: double.infinity,
                            height: 34*fem,
                            decoration: const BoxDecoration (
                              color: Color(0xffff2153),
                              image: DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/cenima-app-user/images/movie-ticket-bg-rey.png',
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // bookticketxY5 (I278:19904;279:20968;1:172)
                            constraints: const BoxConstraints (
                              // maxWidth: 46*fem,
                            ),
                            child: Text(
                              'Movies &\nSchedules',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Segoe Script',
                                10*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2575*ffem/fem,
                                color: const Color(0xffff1e60),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // component121jhF (I278:19904;279:20970)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 66.5*fem, 6*fem),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // popcornip5 (I278:19904;279:20970;1:171)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                            width: 34*fem,
                            height: 34*fem,
                            child: Image.asset(
                              'assets/cenima-app-user/images/popcorn-8bw.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // foodmenuKYy (I278:19904;279:20970;1:172)
                            constraints: const BoxConstraints (
                              // maxWidth: 35*fem,
                            ),
                            child: Text(
                              'Screens\n& Seats ',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Segoe Script',
                                10*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2575*ffem/fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // component119qvd (I278:19904;279:20969)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 64.5*fem, 6*fem),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // popcorngRT (I278:19904;279:20969;1:171)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                            width: 34*fem,
                            height: 34*fem,
                            child: Image.asset(
                              'assets/cenima-app-user/images/popcorn-Tk9.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // foodmenuhbT (I278:19904;279:20969;1:172)
                            constraints: const BoxConstraints (
                              // maxWidth: 25*fem,
                            ),
                            child: Text(
                              'Food\nMenu',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Segoe Script',
                                10*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2575*ffem/fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // component120ShT (I278:19904;279:20971)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6*fem),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // user1gLu (I278:19904;279:20971;1:171)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                            width: 34*fem,
                            height: 34*fem,
                            child: Image.asset(
                              'assets/cenima-app-user/images/user-1-GJ1.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // profile6Qd (I278:19904;279:20971;1:172)
                            constraints: const BoxConstraints (
                              // maxWidth: 39*fem,
                            ),
                            child: Text(
                              'Profile &\nSettings',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Segoe Script',
                                10*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2575*ffem/fem,
                                color: const Color(0xff000000),
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
              // mainheader5nM (348:21299)
              left: 0*fem,
              top: 23*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(20*fem, 34*fem, 21*fem, 10*fem),
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
                      // listxDs (I348:21299;1:44)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 117.96*fem, 0.35*fem),
                      width: 33.05*fem,
                      height: 28.65*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/list-N9s.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // appnamexdB (I348:21299;1:42)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 119.99*fem, 1*fem),
                      child: Text(
                        'CINÉ',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Nature Beauty Personal Use',
                          25*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.1*ffem/fem,
                          color: const Color(0xffdd204a),
                        ),
                      ),
                    ),
                    SizedBox(
                      // loupeTyF (I348:21299;1:43)
                      width: 34*fem,
                      height: 34*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/loupe-4v1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // iosstatusbarwithnotchsfKVf (278:19905)
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
                      // notchhm7 (I278:19905;9:41)
                      left: 87*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 219*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/cenima-app-user/images/notch-mh7.png',
                            width: 219*fem,
                            height: 30*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // timedHP (I278:19905;9:73)
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
                      // iosiconstatusbarjjj (I278:19905;9:57)
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
                              // autogroupkcxppub (W2MYUfCrWSAThfk2jxKcXP)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1796*fem, 10*fem),
                              width: 48.96*fem,
                              height: 16*fem,
                            ),
                            Container(
                              // iosiconsmallmobilesignal4J9 (I278:19905;9:57;9:6)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.35*fem, 2.33*fem),
                              width: 17*fem,
                              height: 10.67*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-mobile-signal-Z9o.png',
                                width: 17*fem,
                                height: 10.67*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallwificiy (I278:19905;9:57;9:12)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.38*fem, 2.03*fem),
                              width: 15.27*fem,
                              height: 10.97*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-wifi-5Wu.png',
                                width: 15.27*fem,
                                height: 10.97*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallbattery96d (I278:19905;9:57;9:17)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.67*fem),
                              width: 24.33*fem,
                              height: 11.33*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-battery-JHs.png',
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