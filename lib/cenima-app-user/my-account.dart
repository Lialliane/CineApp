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
        // myaccountrEq (1:1760)
        width: double.infinity,
        height: 852*fem,
        decoration: const BoxDecoration (
          color: Color(0xfff1f1f1),
        ),
        child: Stack(
          children: [
            Positioned(
              // rectangle434Lu (87:8712)
              left: 0*fem,
              top: 104*fem,
              child: Align(
                child: SizedBox(
                  width: 391*fem,
                  height: 1121*fem,
                  child: Container(
                    decoration: const BoxDecoration (
                      color: Color(0xfff1f1f1),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // component12Eub (76:2188)
              left: 24*fem,
              top: 241.06640625*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(13.77*fem, 0*fem, 0*fem, 2.3*fem),
                width: 347*fem,
                height: 72.17*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // autogroupgrv1wSd (W2ZEBgyUVccESrZmM6Grv1)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9.46*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // phonecallNnq (I76:2188;1:71)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14.32*fem, 0*fem),
                            width: 31.95*fem,
                            height: 31.95*fem,
                            child: Image.asset(
                              'assets/cenima-app-user/images/phone-call-ivR.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // lastnameae1 (I76:2188;1:72)
                            margin: EdgeInsets.fromLTRB(0*fem, 4.41*fem, 153.95*fem, 0*fem),
                            child: Text(
                              'Last Name',
                              style: SafeGoogleFont (
                                'Tw Cen MT',
                                22.0362129211*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575*ffem/fem,
                                color: const Color(0xff7e132b),
                              ),
                            ),
                          ),
                          TextButton(
                            // edittYD (I76:2188;1:74)
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Text(
                              'Edit',
                              style: SafeGoogleFont (
                                'Tw Cen MT',
                                20.9344024658*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575*ffem/fem,
                                color: const Color(0xffff1e60),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // nameVH7 (I76:2188;1:73)
                      margin: EdgeInsets.fromLTRB(46.28*fem, 0*fem, 0*fem, 1.2*fem),
                      child: Text(
                        'name',
                        style: SafeGoogleFont (
                          'Tw Cen MT',
                          22.0362129211*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2575*ffem/fem,
                          color: const Color(0xff383838),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // component15Ra5 (76:2200)
              left: 24*fem,
              top: 576.19921875*fem,
              child: SizedBox(
                width: 348.46*fem,
                height: 100.13*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // autogroupk9jmc8m (W2ZFMA34MJwB3GF37pk9Jm)
                      margin: EdgeInsets.fromLTRB(13.77*fem, 0*fem, 0*fem, 9.46*fem),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // calendarT9P (I76:2200;1:50)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14.32*fem, 0.45*fem),
                            width: 31.95*fem,
                            height: 31.95*fem,
                            child: Image.asset(
                              'assets/cenima-app-user/images/calendar-Yxm.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // dateofbirthpu3 (I76:2200;1:51)
                            margin: EdgeInsets.fromLTRB(0*fem, 4.41*fem, 138.42*fem, 0*fem),
                            child: RichText(
                              text: TextSpan(
                                style: SafeGoogleFont (
                                  'Tw Cen MT',
                                  22.0362129211*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2575*ffem/fem,
                                  color: const Color(0xff7e132b),
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Date of bir',
                                    style: SafeGoogleFont (
                                      'Tw Cen MT',
                                      22.0362129211*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2575*ffem/fem,
                                      color: const Color(0xff7e132b),
                                    ),
                                  ),
                                  const TextSpan(
                                    text: 'th',
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            // edit9Ly (I76:2200;1:49)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4.39*fem),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Text(
                                'Edit',
                                style: SafeGoogleFont (
                                  'Tw Cen MT',
                                  20.9344024658*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2575*ffem/fem,
                                  color: const Color(0xffff1e60),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroup3q5734y (W2ZFrj286DLWfppMqz3q57)
                      margin: EdgeInsets.fromLTRB(13.77*fem, 0*fem, 0*fem, 8.95*fem),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // dayGiR (I76:2200;1:52)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 75.57*fem, 0*fem),
                            child: Text(
                              'Day',
                              style: SafeGoogleFont (
                                'Tw Cen MT',
                                17.6289710999*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575*ffem/fem,
                                color: const Color(0xff7e132b),
                              ),
                            ),
                          ),
                          Container(
                            // moncfo (I76:2200;1:54)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 98.12*fem, 0*fem),
                            child: Text(
                              'Mon',
                              style: SafeGoogleFont (
                                'Tw Cen MT',
                                17.6289710999*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575*ffem/fem,
                                color: const Color(0xff7e132b),
                              ),
                            ),
                          ),
                          Text(
                            // yearSPw (I76:2200;1:56)
                            'Year ',
                            style: SafeGoogleFont (
                              'Tw Cen MT',
                              17.6289710999*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xff7e132b),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      // autogroupuk5buoK (W2ZGKdQxkS41KB9F2jUk5b)
                      height: 26.31*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupygi9K6M (W2ZGmCWgsJvaTvLuSmyGi9)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 41.32*fem, 2.07*fem),
                            padding: EdgeInsets.fromLTRB(20.38*fem, 0*fem, 22.22*fem, 0*fem),
                            height: 24.24*fem,
                            child: Text(
                              '00',
                              style: SafeGoogleFont (
                                'Tw Cen MT',
                                17.6289710999*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575*ffem/fem,
                                color: const Color(0xff383838),
                              ),
                            ),
                          ),
                          Container(
                            // autogroupjrazRHo (W2ZH8BuiNwxbyxZ85tjrAZ)
                            margin: EdgeInsets.fromLTRB(0*fem, 3.31*fem, 51.79*fem, 0*fem),
                            width: 60.6*fem,
                            height: 23*fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // Sih (I76:2200;1:55)
                                  left: 20.9344482422*fem,
                                  top: 0*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 18*fem,
                                      height: 23*fem,
                                      child: Text(
                                        '00',
                                        style: SafeGoogleFont (
                                          'Tw Cen MT',
                                          17.6289710999*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2575*ffem/fem,
                                          color: const Color(0xff383838),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // line18xaZ (I76:2200;1:59)
                                  left: 0*fem,
                                  top: 19.8325195312*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 60.6*fem,
                                      height: 1.1*fem,
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
                            // autogroup7gzyMch (W2ZHQM7TRyK363wRBT7Gzy)
                            margin: EdgeInsets.fromLTRB(0*fem, 1.1*fem, 0*fem, 2.07*fem),
                            width: 106.88*fem,
                            height: double.infinity,
                            child: Center(
                              child: Text(
                                '0000',
                                style: SafeGoogleFont (
                                  'Tw Cen MT',
                                  17.6289710999*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2575*ffem/fem,
                                  color: const Color(0xff383838),
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
              // phoneeditEK7 (77:1928)
              left: 24*fem,
              top: 712.3623046875*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(13.77*fem, 0*fem, 0*fem, 2.3*fem),
                width: 347*fem,
                height: 72.17*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // autogrouprxkpzhb (W2ZKDsuwyNnwq8cHqqrxKP)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9.46*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // phonecallS3o (I77:1928;76:2227)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14.32*fem, 0*fem),
                            width: 31.95*fem,
                            height: 31.95*fem,
                            child: Image.asset(
                              'assets/cenima-app-user/images/phone-call-qRX.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // locationNbf (I77:1928;76:2228)
                            margin: EdgeInsets.fromLTRB(0*fem, 4.41*fem, 171.95*fem, 0*fem),
                            child: Text(
                              'Location',
                              style: SafeGoogleFont (
                                'Tw Cen MT',
                                22.0362129211*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575*ffem/fem,
                                color: const Color(0xff7e132b),
                              ),
                            ),
                          ),
                          TextButton(
                            // editmth (I77:1928;76:2230)
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Text(
                              'Edit',
                              style: SafeGoogleFont (
                                'Tw Cen MT',
                                20.9344024658*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575*ffem/fem,
                                color: const Color(0xffff1e60),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // nameYY5 (I77:1928;76:2229)
                      margin: EdgeInsets.fromLTRB(46.28*fem, 0*fem, 0*fem, 1.2*fem),
                      child: Text(
                        'location',
                        style: SafeGoogleFont (
                          'Tw Cen MT',
                          22.0362129211*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2575*ffem/fem,
                          color: const Color(0xff383838),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // component12NGD (151:17572)
              left: 24*fem,
              top: 133*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(13.77*fem, 0*fem, 0*fem, 2.3*fem),
                width: 347*fem,
                height: 72.17*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // autogroupdanht85 (W2ZLAGWzH2XiGisqg9daNh)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9.46*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // phonecallXgq (I151:17572;1:71)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14.32*fem, 0*fem),
                            width: 31.95*fem,
                            height: 31.95*fem,
                            child: Image.asset(
                              'assets/cenima-app-user/images/phone-call-jNu.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // lastname9iD (I151:17572;1:72)
                            margin: EdgeInsets.fromLTRB(0*fem, 4.41*fem, 153.95*fem, 0*fem),
                            child: Text(
                              'Last Name',
                              style: SafeGoogleFont (
                                'Tw Cen MT',
                                22.0362129211*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575*ffem/fem,
                                color: const Color(0xff7e132b),
                              ),
                            ),
                          ),
                          TextButton(
                            // editJjX (I151:17572;1:74)
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Text(
                              'Edit',
                              style: SafeGoogleFont (
                                'Tw Cen MT',
                                20.9344024658*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575*ffem/fem,
                                color: const Color(0xffff1e60),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // nameKuX (I151:17572;1:73)
                      margin: EdgeInsets.fromLTRB(46.28*fem, 0*fem, 0*fem, 1.2*fem),
                      child: Text(
                        'name',
                        style: SafeGoogleFont (
                          'Tw Cen MT',
                          22.0362129211*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2575*ffem/fem,
                          color: const Color(0xff383838),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // emaileditjyF (151:17578)
              left: 24*fem,
              top: 468.1328125*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(13.77*fem, 0*fem, 0*fem, 2.3*fem),
                width: 348*fem,
                height: 72.17*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupqdnu5Qq (W2ZM3psQw5MGYH1J7xQdNu)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9.46*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // phonecallX1w (I151:17578;68:2116)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14.32*fem, 0*fem),
                            width: 31.95*fem,
                            height: 31.95*fem,
                            child: Image.asset(
                              'assets/cenima-app-user/images/phone-call-Uu3.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // lastnamekQV (I151:17578;68:2117)
                            margin: EdgeInsets.fromLTRB(0*fem, 4.41*fem, 199.95*fem, 0*fem),
                            child: Text(
                              'Email',
                              style: SafeGoogleFont (
                                'Tw Cen MT',
                                22.0362129211*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575*ffem/fem,
                                color: const Color(0xff7e132b),
                              ),
                            ),
                          ),
                          TextButton(
                            // edittv1 (I151:17578;68:2119)
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Text(
                              'Edit',
                              style: SafeGoogleFont (
                                'Tw Cen MT',
                                20.9344024658*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575*ffem/fem,
                                color: const Color(0xffff1e60),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // nameL1K (I151:17578;68:2118)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 92.68*fem, 1.2*fem),
                      child: Text(
                        '123@gmail.com',
                        style: SafeGoogleFont (
                          'Tw Cen MT',
                          22.0362129211*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2575*ffem/fem,
                          color: const Color(0xff383838),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // emailphoneUWq (76:2219)
              left: 21*fem,
              top: 343.0629882812*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(13.77*fem, 0*fem, 0*fem, 4.3*fem),
                width: 355*fem,
                height: 78.24*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupbgtudo3 (W2ZMvYutkY1zshgVLKbgtu)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9.92*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // phonecallfzd (I76:2219;68:2243)
                            margin: EdgeInsets.fromLTRB(0*fem, 6.07*fem, 14.33*fem, 0*fem),
                            width: 31.95*fem,
                            height: 31.95*fem,
                            child: Image.asset(
                              'assets/cenima-app-user/images/phone-call-y1f.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // lastname41B (I76:2219;68:2244)
                            margin: EdgeInsets.fromLTRB(0*fem, 4*fem, 130.95*fem, 0*fem),
                            child: RichText(
                              text: TextSpan(
                                style: SafeGoogleFont (
                                  'Tw Cen MT',
                                  22.0362129211*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.0888671674*ffem/fem,
                                  color: const Color(0xff7e132b),
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Mobile Numb',
                                    style: SafeGoogleFont (
                                      'Tw Cen MT',
                                      20*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2575*ffem/fem,
                                      color: const Color(0xff7e132b),
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'er',
                                    style: SafeGoogleFont (
                                      'Tw Cen MT',
                                      20*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2575*ffem/fem,
                                      color: const Color(0xff7e132b),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          TextButton(
                            // editWSq (I76:2219;68:2246)
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Text(
                              'Edit',
                              style: SafeGoogleFont (
                                'Tw Cen MT',
                                20.9344024658*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575*ffem/fem,
                                color: const Color(0xffff1e60),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // nameV3s (I76:2219;68:2245)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 102.68*fem, 3.2*fem),
                      child: Text(
                        '+ 123 000 000 000',
                        style: SafeGoogleFont (
                          'Tw Cen MT',
                          20*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2575*ffem/fem,
                          color: const Color(0xff383838),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // header6JZ (76:1617)
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
                      // arrowdownsigntonavigate1pq (I76:1617;75:1573;1:127)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 106.5*fem, 0*fem),
                      width: 30*fem,
                      height: 28*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/arrow-down-sign-to-navigate-wRP.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // accountinfoAr9 (I76:1617;1:1762)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 113.5*fem, 1.5*fem),
                      child: RichText(
                        textAlign: TextAlign.center,
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
                              text: 'Account ',
                              style: SafeGoogleFont (
                                'Segoe UI',
                                20*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2575*ffem/fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                            const TextSpan(
                              text: 'Info',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // closeGZj (I76:1617;76:1577;1:159)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.76*fem),
                      width: 24.24*fem,
                      height: 24.24*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/close-cFF.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // iosstatusbarwithnotchsfRb3 (76:1594)
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
                      // notcha6Z (I76:1594;9:41)
                      left: 87*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 219*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/cenima-app-user/images/notch-yQq.png',
                            width: 219*fem,
                            height: 30*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // timeuY9 (I76:1594;9:73)
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
                      // iosiconstatusbarnEZ (I76:1594;9:57)
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
                              // autogroupwcbx6ny (W2ZPLm3uqTEmVBg1WMwcbX)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1796*fem, 10*fem),
                              width: 48.96*fem,
                              height: 16*fem,
                            ),
                            Container(
                              // iosiconsmallmobilesignalvn1 (I76:1594;9:57;9:6)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.35*fem, 2.33*fem),
                              width: 17*fem,
                              height: 10.67*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-mobile-signal-VMo.png',
                                width: 17*fem,
                                height: 10.67*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallwifir3P (I76:1594;9:57;9:12)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.38*fem, 2.03*fem),
                              width: 15.27*fem,
                              height: 10.97*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-wifi-qZX.png',
                                width: 15.27*fem,
                                height: 10.97*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallbatteryqg1 (I76:1594;9:57;9:17)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.67*fem),
                              width: 24.33*fem,
                              height: 11.33*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-battery-D6u.png',
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