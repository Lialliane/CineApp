import 'package:flutter/material.dart';

import '../utils.dart';

// class AdminProfile extends StatefulWidget {
//   const AdminProfile({super.key});

//   @override
//   State<AdminProfile> createState() => _AProfile();
// }

// class _AProfile extends State<AdminProfile> {
//   @override
//   Widget build(BuildContext context) {
//     double baseWidth = 393;
//     double fem = MediaQuery.of(context).size.width / baseWidth;
//     double ffem = fem * 0.97;
//     bool edit = false;
//     return Scaffold(
//       body: NestedScrollView(
//         floatHeaderSlivers: true,
//         headerSliverBuilder: (context, innerBoxIsScrolled) => [
//           SliverAppBar(
//             leading: GestureDetector(
//               child: const Icon(
//                 Icons.arrow_back_ios_new_rounded,
//               ),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//             iconTheme: const IconThemeData(
//               color: Color(0xffdd204a),
//             ),
//             backgroundColor: const Color(0xffffffff),
//             floating: true,
//             snap: true,
//             centerTitle: true,
//             title: const Text(
//               'Profile',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: 25,
//                 fontWeight: FontWeight.w600,
//                 color: Color(0xff000000),
//               ),
//             ),
//           ),
//         ],
//         body: Container(
//           color: const Color(0xfff1f1f1),
//           child: Stack(children: [SingleChildScrollView()]),
//         ),
//       ),
//     );
//   }
// }

class AdminProfile extends StatelessWidget {
  const AdminProfile({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // adminprofilekxM (132:14496)
        width: double.infinity,
        height: 852 * fem,
        decoration: const BoxDecoration(
          color: Color(0xfff1f1f1),
        ),
        child: Stack(
          children: [
            Positioned(
              // rectangle43xYd (132:14497)
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
              // lastnameedit5Fs (132:14498)
              left: 15 * fem,
              top: 134 * fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(
                    13.77 * fem, 0 * fem, 0 * fem, 2.3 * fem),
                width: 347 * fem,
                height: 72.17 * fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // autogroup6xp32qK (W2ZQTeMTtvVYgo3ffE6XP3)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 9.46 * fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // phonecallbmw (I132:14498;68:2142)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 14.32 * fem, 0 * fem),
                            width: 31.95 * fem,
                            height: 31.95 * fem,
                            child: Image.asset(
                              'assets/cenima-app-user/images/phone-call-oRf.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // lastnamedCq (I132:14498;68:2143)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 4.41 * fem, 151.95 * fem, 0 * fem),
                            child: Text(
                              'First Name',
                              style: SafeGoogleFont(
                                'Tw Cen MT',
                                22.0362129211 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575 * ffem / fem,
                                color: const Color(0xff7e132b),
                              ),
                            ),
                          ),
                          TextButton(
                            // editPbK (I132:14498;68:2145)
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Text(
                              'Edit',
                              style: SafeGoogleFont(
                                'Tw Cen MT',
                                20.9344024658 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575 * ffem / fem,
                                color: const Color(0xffff1e60),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // nameYsX (I132:14498;68:2144)
                      margin: EdgeInsets.fromLTRB(
                          46.28 * fem, 0 * fem, 0 * fem, 1.2 * fem),
                      child: Text(
                        'name',
                        style: SafeGoogleFont(
                          'Tw Cen MT',
                          22.0362129211 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2575 * ffem / fem,
                          color: const Color(0xff383838),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // component127p9 (132:14499)
              left: 15 * fem,
              top: 242 * fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(
                    13.77 * fem, 0 * fem, 0 * fem, 2.3 * fem),
                width: 347 * fem,
                height: 72.17 * fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // autogroupjbkr2Jq (W2ZRLHZkRvYbRon2x3jBkR)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 9.46 * fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // phonecallTuw (I132:14499;1:71)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 14.32 * fem, 0 * fem),
                            width: 31.95 * fem,
                            height: 31.95 * fem,
                            child: Image.asset(
                              'assets/cenima-app-user/images/phone-call-LgM.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // lastnameV5w (I132:14499;1:72)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 4.41 * fem, 153.95 * fem, 0 * fem),
                            child: Text(
                              'Last Name',
                              style: SafeGoogleFont(
                                'Tw Cen MT',
                                22.0362129211 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575 * ffem / fem,
                                color: const Color(0xff7e132b),
                              ),
                            ),
                          ),
                          TextButton(
                            // editqJD (I132:14499;1:74)
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Text(
                              'Edit',
                              style: SafeGoogleFont(
                                'Tw Cen MT',
                                20.9344024658 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575 * ffem / fem,
                                color: const Color(0xffff1e60),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // nameELM (I132:14499;1:73)
                      margin: EdgeInsets.fromLTRB(
                          46.28 * fem, 0 * fem, 0 * fem, 1.2 * fem),
                      child: Text(
                        'name',
                        style: SafeGoogleFont(
                          'Tw Cen MT',
                          22.0362129211 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2575 * ffem / fem,
                          color: const Color(0xff383838),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // emailedityx9 (132:14500)
              left: 16 * fem,
              top: 351 * fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(
                    13.77 * fem, 0 * fem, 0 * fem, 2.3 * fem),
                width: 348 * fem,
                height: 72.17 * fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroups4bfZ9f (W2ZSBWej98935oSMYcs4bF)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 9.46 * fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // phonecallaqT (I132:14500;68:2116)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 14.32 * fem, 0 * fem),
                            width: 31.95 * fem,
                            height: 31.95 * fem,
                            child: Image.asset(
                              'assets/cenima-app-user/images/phone-call-jzm.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // lastnamepE1 (I132:14500;68:2117)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 4.41 * fem, 199.95 * fem, 0 * fem),
                            child: Text(
                              'Email',
                              style: SafeGoogleFont(
                                'Tw Cen MT',
                                22.0362129211 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575 * ffem / fem,
                                color: const Color(0xff7e132b),
                              ),
                            ),
                          ),
                          TextButton(
                            // editZ57 (I132:14500;68:2119)
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Text(
                              'Edit',
                              style: SafeGoogleFont(
                                'Tw Cen MT',
                                20.9344024658 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575 * ffem / fem,
                                color: const Color(0xffff1e60),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // namenCm (I132:14500;68:2118)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 92.68 * fem, 1.2 * fem),
                      child: Text(
                        '123@gmail.com',
                        style: SafeGoogleFont(
                          'Tw Cen MT',
                          22.0362129211 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2575 * ffem / fem,
                          color: const Color(0xff383838),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // emailphonejXK (132:14502)
              left: 15 * fem,
              top: 451.9300537109 * fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(
                    13.77 * fem, 0 * fem, 0 * fem, 4.3 * fem),
                width: 355 * fem,
                height: 78.24 * fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupwkp1uKK (W2ZT452pPfaQEQDtutwKp1)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 9.92 * fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // phonecall9Df (I132:14502;68:2243)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 6.07 * fem, 14.33 * fem, 0 * fem),
                            width: 31.95 * fem,
                            height: 31.95 * fem,
                            child: Image.asset(
                              'assets/cenima-app-user/images/phone-call-Nb7.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // lastname7ph (I132:14502;68:2244)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 4 * fem, 130.95 * fem, 0 * fem),
                            child: RichText(
                              text: TextSpan(
                                style: SafeGoogleFont(
                                  'Tw Cen MT',
                                  22.0362129211 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.0888671674 * ffem / fem,
                                  color: const Color(0xff7e132b),
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Mobile Numb',
                                    style: SafeGoogleFont(
                                      'Tw Cen MT',
                                      20 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2575 * ffem / fem,
                                      color: const Color(0xff7e132b),
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'er',
                                    style: SafeGoogleFont(
                                      'Tw Cen MT',
                                      20 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2575 * ffem / fem,
                                      color: const Color(0xff7e132b),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          TextButton(
                            // edittH3 (I132:14502;68:2246)
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Text(
                              'Edit',
                              style: SafeGoogleFont(
                                'Tw Cen MT',
                                20.9344024658 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575 * ffem / fem,
                                color: const Color(0xffff1e60),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // nameF17 (I132:14502;68:2245)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 102.68 * fem, 3.2 * fem),
                      child: Text(
                        '+ 123 000 000 000',
                        style: SafeGoogleFont(
                          'Tw Cen MT',
                          20 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2575 * ffem / fem,
                          color: const Color(0xff383838),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // headerDs3 (132:14504)
              left: 0 * fem,
              top: 26 * fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(
                    5 * fem, 32.5 * fem, 3.76 * fem, 9.5 * fem),
                width: 393 * fem,
                height: 70 * fem,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffc2c2c2)),
                  color: const Color(0xffffffff),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // arrowdownsigntonavigate6JZ (I132:14504;75:1573;1:127)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 131.5 * fem, 0 * fem),
                      width: 30 * fem,
                      height: 28 * fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/arrow-down-sign-to-navigate-byf.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // accountinfoHdw (I132:14504;1:1762)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 138.5 * fem, 1.5 * fem),
                      child: Text(
                        'Profile',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Segoe UI',
                          20 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2575 * ffem / fem,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      // closeUiR (I132:14504;76:1577;1:159)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 1.76 * fem),
                      width: 24.24 * fem,
                      height: 24.24 * fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/close-Mj3.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // iosstatusbarwithnotchsfdUq (132:14505)
              left: 0 * fem,
              top: 0 * fem,
              child: Container(
                width: 393 * fem,
                height: 44 * fem,
                decoration: const BoxDecoration(
                  color: Color(0xffffffff),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      // notch1kH (I132:14505;9:41)
                      left: 87 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 219 * fem,
                          height: 30 * fem,
                          child: Image.asset(
                            'assets/cenima-app-user/images/notch-jwB.png',
                            width: 219 * fem,
                            height: 30 * fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // timeZvD (I132:14505;9:73)
                      left: 32 * fem,
                      top: 13 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 26 * fem,
                          height: 21 * fem,
                          child: Text(
                            '9:41',
                            style: SafeGoogleFont(
                              'SF Pro Text',
                              15 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.4 * ffem / fem,
                              letterSpacing: -0.3199999928 * fem,
                              color: const Color(0xff020202),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // iosiconstatusbartLD (I132:14505;9:57)
                      left: 0 * fem,
                      top: 5 * fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                            20.04 * fem, 0 * fem, 0 * fem, 0 * fem),
                        width: 1929 * fem,
                        height: 26 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              // autogrouphgykobb (W2ZUQccGzPj8jid4TzhgyK)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 1796 * fem, 10 * fem),
                              width: 48.96 * fem,
                              height: 16 * fem,
                            ),
                            Container(
                              // iosiconsmallmobilesignalFCh (I132:14505;9:57;9:6)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 4.35 * fem, 2.33 * fem),
                              width: 17 * fem,
                              height: 10.67 * fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-mobile-signal-m1f.png',
                                width: 17 * fem,
                                height: 10.67 * fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallwifidj3 (I132:14505;9:57;9:12)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 3.38 * fem, 2.03 * fem),
                              width: 15.27 * fem,
                              height: 10.97 * fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-wifi-ZAm.png',
                                width: 15.27 * fem,
                                height: 10.97 * fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallbatteryDx9 (I132:14505;9:57;9:17)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 2.67 * fem),
                              width: 24.33 * fem,
                              height: 11.33 * fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-battery-Vcq.png',
                                width: 24.33 * fem,
                                height: 11.33 * fem,
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
