import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // contactusFdw (1:1094)
        width: double.infinity,
        height: 1206*fem,
        decoration: const BoxDecoration (
          color: Color(0xfff1f1f1),
        ),
        child: Stack(
          children: [
            Positioned(
              // autogroupqkz9xgm (W2Qj6Gkx49WhbZG6RWqkz9)
              left: 0*fem,
              top: 104*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(30*fem, 8*fem, 30*fem, 31*fem),
                width: 391*fem,
                height: 742*fem,
                decoration: const BoxDecoration (
                  color: Color(0xfff1f1f1),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // haveaquestionfaceaproblempleas (1:1098)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38*fem, 34*fem),
                      constraints: const BoxConstraints (
                        // maxWidth: 293*fem,
                      ),
                      child: Text(
                        'Have a question? face a problem?\nplease write to us.',
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
                      // group58uGZ (1:1133)
                      margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 23*fem),
                      padding: EdgeInsets.fromLTRB(17*fem, 15*fem, 173*fem, 14*fem),
                      width: double.infinity,
                      decoration: BoxDecoration (
                        border: Border.all(color: const Color(0xff707070)),
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(29*fem),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // user1dbs (1:1101)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                            width: 29*fem,
                            height: 29*fem,
                            child: Image.asset(
                              'assets/cenima-app-user/images/user-1-3Cy.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // firstnameems (1:1100)
                            margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 0*fem, 0*fem),
                            child: Text(
                              'First Name*',
                              style: SafeGoogleFont (
                                'Tw Cen MT',
                                20*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575*ffem/fem,
                                color: const Color(0xff8b8b8b),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // group58Pss (1:1134)
                      margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 22*fem),
                      padding: EdgeInsets.fromLTRB(17*fem, 15*fem, 215*fem, 14*fem),
                      width: double.infinity,
                      decoration: BoxDecoration (
                        border: Border.all(color: const Color(0xff707070)),
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(29*fem),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // emailYuB (1:1104)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                            width: 29*fem,
                            height: 29*fem,
                            child: Image.asset(
                              'assets/cenima-app-user/images/email-tPw.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // emailihB (1:1103)
                            margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 0*fem, 0*fem),
                            child: Text(
                              'Email*',
                              style: SafeGoogleFont (
                                'Tw Cen MT',
                                20*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575*ffem/fem,
                                color: const Color(0xff8b8b8b),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // group58iah (1:1135)
                      margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 15*fem),
                      width: 329*fem,
                      height: 64*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // rectangle21k1b (1:1105)
                            left: 0*fem,
                            top: 1*fem,
                            child: Align(
                              child: SizedBox(
                                width: 329*fem,
                                height: 58*fem,
                                child: Container(
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(29*fem),
                                    border: Border.all(color: const Color(0xff707070)),
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // mobilenumberriq (1:1106)
                            left: 58*fem,
                            top: 19*fem,
                            child: Align(
                              child: SizedBox(
                                width: 129*fem,
                                height: 26*fem,
                                child: RichText(
                                  text: TextSpan(
                                    style: SafeGoogleFont (
                                      'Tw Cen MT',
                                      20*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2575*ffem/fem,
                                      color: const Color(0xff8b8b8b),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'Mobile Numb',
                                        style: SafeGoogleFont (
                                          'Tw Cen MT',
                                          20*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2575*ffem/fem,
                                          color: const Color(0xff8b8b8b),
                                        ),
                                      ),
                                      const TextSpan(
                                        text: 'er',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // phonecallLZT (1:1107)
                            left: 17*fem,
                            top: 16*fem,
                            child: Align(
                              child: SizedBox(
                                width: 29*fem,
                                height: 29*fem,
                                child: Image.asset(
                                  'assets/cenima-app-user/images/phone-call-KCy.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // component9rw7 (1:1128)
                            left: 234.62890625*fem,
                            top: 0*fem,
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(11*fem, 20*fem, 6.41*fem, 16*fem),
                                width: 94*fem,
                                height: 64*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // B6D (I1:1128;1:156)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18.27*fem, 0*fem),
                                      child: Text(
                                        '+962',
                                        style: SafeGoogleFont (
                                          'Tw Cen MT',
                                          22.0362129211*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2575*ffem/fem,
                                          color: const Color(0xffa6a6a6),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // arrowdownsigntonavigateKrd (I1:1128;1:158)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4.1*fem),
                                      width: 14.32*fem,
                                      height: 14.32*fem,
                                      child: Image.asset(
                                        'assets/cenima-app-user/images/arrow-down-sign-to-navigate-2LD.png',
                                        fit: BoxFit.cover,
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
                    Container(
                      // group58LFw (1:1136)
                      margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 20*fem),
                      padding: EdgeInsets.fromLTRB(17*fem, 15*fem, 198*fem, 14*fem),
                      width: double.infinity,
                      decoration: BoxDecoration (
                        border: Border.all(color: const Color(0xff707070)),
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(29*fem),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // location5cq (1:1110)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                            width: 29*fem,
                            height: 29*fem,
                            child: Image.asset(
                              'assets/cenima-app-user/images/location-XoK.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // locationeJZ (1:1109)
                            margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 0*fem, 0*fem),
                            child: Text(
                              'Location',
                              style: SafeGoogleFont (
                                'Tw Cen MT',
                                20*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575*ffem/fem,
                                color: const Color(0xff8b8b8b),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // group58F3T (1:1137)
                      margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 7*fem),
                      padding: EdgeInsets.fromLTRB(25*fem, 19*fem, 25*fem, 19*fem),
                      width: 329*fem,
                      height: 224*fem,
                      decoration: BoxDecoration (
                        border: Border.all(color: const Color(0xff707070)),
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(29*fem),
                      ),
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
                              text: 'Your messag',
                              style: SafeGoogleFont (
                                'Tw Cen MT',
                                20*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575*ffem/fem,
                                color: const Color(0xffa6a6a6),
                              ),
                            ),
                            const TextSpan(
                              text: 'e...',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // messageshouldbeatleast50words2 (1:1095)
                      margin: EdgeInsets.fromLTRB(133.45*fem, 0*fem, 0*fem, 19*fem),
                      child: Text(
                        'Message should be at least 50 words',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Lucida Bright',
                          11*ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2575*ffem/fem,
                          color: const Color(0xffff2153),
                        ),
                      ),
                    ),
                    Container(
                      // autogroupqwbt1Eu (W2QjnAn8yxCgoK3sd9QwBT)
                      margin: EdgeInsets.fromLTRB(19*fem, 0*fem, 85*fem, 0*fem),
                      width: double.infinity,
                      height: 36*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // choosefileDLy (115:14513)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                width: 112*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  border: Border.all(color: const Color(0xff707070)),
                                  color: const Color(0xffffffff),
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
                          Container(
                            // attachfilebF3 (1:1126)
                            margin: EdgeInsets.fromLTRB(0*fem, 4*fem, 0*fem, 0*fem),
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // contactdetailsmqf (1:1138)
              left: 19*fem,
              top: 990*fem,
              child: SizedBox(
                width: 332*fem,
                height: 185*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // autogrouppctfa2R (W2QoDpYUBtsyzutRUPPcTF)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // cineaa9 (1:1113)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 248*fem, 0*fem),
                            child: Text(
                              'Cine',
                              style: SafeGoogleFont (
                                'Lucida Bright',
                                22*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2575*ffem/fem,
                                color: const Color(0xff7e132b),
                              ),
                            ),
                          ),
                          Text(
                            // cinevnR (1:1114)
                            'Cine',
                            style: SafeGoogleFont (
                              'Lucida Bright',
                              22*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2575*ffem/fem,
                              color: const Color(0xff7e132b),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // greenlawnaveislipterracenewyor (1:1115)
                      constraints: const BoxConstraints (
                        // maxWidth: 185*fem,
                      ),
                      child: RichText(
                        text: TextSpan(
                          style: SafeGoogleFont (
                            'Segoe UI',
                            12*ffem,
                            fontWeight: FontWeight.w300,
                            height: 1.2575*ffem/fem,
                            fontStyle: FontStyle.italic,
                            color: const Color(0xff000000),
                          ),
                          children: [
                            TextSpan(
                              text: 'Greenlawn Ave,',
                              style: SafeGoogleFont (
                                'Segoe UI',
                                12*ffem,
                                fontWeight: FontWeight.w300,
                                height: 1.2575*ffem/fem,
                                fontStyle: FontStyle.italic,
                                color: const Color(0xff000000),
                              ),
                            ),
                            const TextSpan(
                              text: ' Islip Terrace, New York(NY), 11752',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // autogroup45p1ZPT (W2Qq3wAKiWffttB5bb45p1)
                      padding: EdgeInsets.fromLTRB(0*fem, 21*fem, 0*fem, 0*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // autogroup9kxm8L5 (W2QodeC7M8qDgzEjW19kxm)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 230*fem, 0*fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // phonecallP17 (1:1120)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                                  width: 15*fem,
                                  height: 15*fem,
                                  child: Image.asset(
                                    'assets/cenima-app-user/images/phone-call-ar9.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                RichText(
                                  // CjF (1:1116)
                                  text: TextSpan(
                                    style: SafeGoogleFont (
                                      'Segoe UI',
                                      12*ffem,
                                      fontWeight: FontWeight.w300,
                                      height: 1.2575*ffem/fem,
                                      fontStyle: FontStyle.italic,
                                      color: const Color(0xff000000),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: '+123 555 555 5',
                                        style: SafeGoogleFont (
                                          'Segoe UI',
                                          12*ffem,
                                          fontWeight: FontWeight.w300,
                                          height: 1.2575*ffem/fem,
                                          fontStyle: FontStyle.italic,
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                      const TextSpan(
                                        text: '55',
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 11*fem,
                          ),
                          Container(
                            // autogroupwkrh6EH (W2QoxdeU3m6ry7m7z4WkrH)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 230*fem, 0*fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // phonecallvz1 (1:1121)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                                  width: 15*fem,
                                  height: 15*fem,
                                  child: Image.asset(
                                    'assets/cenima-app-user/images/phone-call-gdK.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                RichText(
                                  // WSR (1:1117)
                                  text: TextSpan(
                                    style: SafeGoogleFont (
                                      'Segoe UI',
                                      12*ffem,
                                      fontWeight: FontWeight.w300,
                                      height: 1.2575*ffem/fem,
                                      fontStyle: FontStyle.italic,
                                      color: const Color(0xff000000),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: '+123 555 555 6',
                                        style: SafeGoogleFont (
                                          'Segoe UI',
                                          12*ffem,
                                          fontWeight: FontWeight.w300,
                                          height: 1.2575*ffem/fem,
                                          fontStyle: FontStyle.italic,
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                      const TextSpan(
                                        text: '66',
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 11*fem,
                          ),
                          Container(
                            // autogroupnyn9hoj (W2QpJCvBjbgHQ8uHvvnYn9)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 225*fem, 0*fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // email6L5 (1:1122)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                                  width: 15*fem,
                                  height: 15*fem,
                                  child: Image.asset(
                                    'assets/cenima-app-user/images/email.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                RichText(
                                  // cinegmailcomuoK (1:1118)
                                  text: TextSpan(
                                    style: SafeGoogleFont (
                                      'Segoe UI',
                                      12*ffem,
                                      fontWeight: FontWeight.w300,
                                      height: 1.2575*ffem/fem,
                                      fontStyle: FontStyle.italic,
                                      color: const Color(0xff000000),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'Cine@Gmail.com',
                                        style: SafeGoogleFont (
                                          'Segoe UI',
                                          12*ffem,
                                          fontWeight: FontWeight.w300,
                                          height: 1.2575*ffem/fem,
                                          fontStyle: FontStyle.italic,
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                      const TextSpan(
                                        text: ' ',
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 11*fem,
                          ),
                          Container(
                            // autogroup5w3bRh7 (W2QpeXfeyZnrAsYuBh5w3b)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 264*fem, 0*fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // locations3K (1:1123)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                                  width: 15*fem,
                                  height: 15*fem,
                                  child: Image.asset(
                                    'assets/cenima-app-user/images/location.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  // viewmapsBj (1:1119)
                                  'View map',
                                  style: SafeGoogleFont (
                                    'Segoe UI',
                                    12*ffem,
                                    fontWeight: FontWeight.w300,
                                    height: 1.2575*ffem/fem,
                                    fontStyle: FontStyle.italic,
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
              // headerGjf (77:2156)
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
                      // arrowdownsigntonavigateCmj (I77:2156;75:1573;1:127)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 114*fem, 0*fem),
                      width: 30*fem,
                      height: 28*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/arrow-down-sign-to-navigate-f97.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // accountinfoxuK (I77:2156;1:1762)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 121*fem, 1.5*fem),
                      child: Text(
                        'Contact Us',
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
                      // closeMgZ (I77:2156;76:1577;1:159)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.76*fem),
                      width: 24.24*fem,
                      height: 24.24*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/close-dhf.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // iosstatusbarwithnotchsfBfb (77:2157)
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
                      // notchi3F (I77:2157;9:41)
                      left: 87*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 219*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/cenima-app-user/images/notch-M8Z.png',
                            width: 219*fem,
                            height: 30*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // timehA5 (I77:2157;9:73)
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
                      // iosiconstatusbarN9j (I77:2157;9:57)
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
                              // autogroupb4wqvaZ (W2QsMhemTUhzmvJ4DSB4Wq)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1796*fem, 10*fem),
                              width: 48.96*fem,
                              height: 16*fem,
                            ),
                            Container(
                              // iosiconsmallmobilesignalNSZ (I77:2157;9:57;9:6)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.35*fem, 2.33*fem),
                              width: 17*fem,
                              height: 10.67*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-mobile-signal-3w3.png',
                                width: 17*fem,
                                height: 10.67*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallwifi3x1 (I77:2157;9:57;9:12)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.38*fem, 2.03*fem),
                              width: 15.27*fem,
                              height: 10.97*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-wifi-fmf-peZ.png',
                                width: 15.27*fem,
                                height: 10.97*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallbatteryprH (I77:2157;9:57;9:17)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.67*fem),
                              width: 24.33*fem,
                              height: 11.33*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-battery-wH7.png',
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