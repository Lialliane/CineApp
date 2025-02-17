import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpRefund extends StatefulWidget {
  const HelpRefund({super.key});

  @override
  State<HelpRefund> createState() => _HelpRefundPage();
}

class _HelpRefundPage extends State<HelpRefund> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            leading: GestureDetector(
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            iconTheme: const IconThemeData(
              color: Color(0xffdd204a),
            ),
            backgroundColor: const Color(0xffffffff),
            floating: true,
            snap: true,
            centerTitle: true,
            title: const Text(
              'Delete Account',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Color(0xff000000),
              ),
            ),
          ),
        ],
        body: Container(
          color: const Color(0xfff1f1f1),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 20),
                    child: Text(
                      'We apologize for the inconvenience, please contact us and we will return it to you in no time.',
                      style: GoogleFonts.ibmPlexSerif(
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w300,
                        height: 1.2575 * ffem / fem,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:flutter/gestures.dart';
// import 'dart:ui';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:myapp/utils.dart';

// class HelpRefund extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     double baseWidth = 393;
//     double fem = MediaQuery.of(context).size.width / baseWidth;
//     double ffem = fem * 0.97;
//     return Container(
//       width: double.infinity,
//       child: Container(
//         // recieverefundmZf (1:1427)
//         width: double.infinity,
//         height: 852*fem,
//         decoration: BoxDecoration (
//           color: Color(0xfff1f1f1),
//         ),
//         child: Stack(
//           children: [
//             Positioned(
//               // rectanglerefundhbj (87:8730)
//               left: 0*fem,
//               top: 104*fem,
//               child: Align(
//                 child: SizedBox(
//                   width: 391*fem,
//                   height: 742*fem,
//                   child: Container(
//                     decoration: BoxDecoration (
//                       color: Color(0xfff1f1f1),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               // weapologizefortheinconvenience (1:1430)
//               left: 30*fem,
//               top: 111*fem,
//               child: Align(
//                 child: SizedBox(
//                   width: 317*fem,
//                   height: 76*fem,
//                   child: Text(
//                     'We apologize for the inconvenience, please contact us and we\'ll return it to you in no time.',
//                     style: SafeGoogleFont (
//                       'Segoe UI',
//                       20*ffem,
//                       fontWeight: FontWeight.w400,
//                       height: 1.2575*ffem/fem,
//                       color: Color(0xff000000),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               // header6fo (77:2127)
//               left: 0*fem,
//               top: 26*fem,
//               child: Container(
//                 padding: EdgeInsets.fromLTRB(5*fem, 28.5*fem, 0*fem, 5.5*fem),
//                 width: 395*fem,
//                 height: 70*fem,
//                 decoration: BoxDecoration (
//                   border: Border.all(color: Color(0xffc2c2c2)),
//                   color: Color(0xffffffff),
//                 ),
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     Container(
//                       // arrowdownsigntonavigateQK7 (I77:2127;75:1573)
//                       margin: EdgeInsets.fromLTRB(0*fem, 4*fem, 0*fem, 4*fem),
//                       child: TextButton(
//                         onPressed: () {},
//                         style: TextButton.styleFrom (
//                           padding: EdgeInsets.zero,
//                         ),
//                         child: Container(
//                           height: double.infinity,
//                           child: Center(
//                             // arrowdownsigntonavigatebuP (I77:2127;75:1573;1:127)
//                             child: SizedBox(
//                               width: 30*fem,
//                               height: 28*fem,
//                               child: Image.asset(
//                                 'assets/cenima-app-user/images/arrow-down-sign-to-navigate-P4R.png',
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 46*fem,
//                     ),
//                     Container(
//                       // accountinfo9ZX (I77:2127;1:1762)
//                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10.5*fem),
//                       child: Text(
//                         'I HAVE YET TO RECEIVE MY REFUND',
//                         textAlign: TextAlign.center,
//                         style: SafeGoogleFont (
//                           'Segoe UI',
//                           16.5*ffem,
//                           fontWeight: FontWeight.w700,
//                           height: 1.2575*ffem/fem,
//                           color: Color(0xff000000),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 46*fem,
//                     ),
//                     TextButton(
//                       // close5Lh (I77:2127;76:1577)
//                       onPressed: () {},
//                       style: TextButton.styleFrom (
//                         padding: EdgeInsets.zero,
//                       ),
//                       child: Container(
//                         padding: EdgeInsets.fromLTRB(7*fem, 6*fem, 5.76*fem, 5.76*fem),
//                         width: 37*fem,
//                         height: double.infinity,
//                         child: Center(
//                           // closezc5 (I77:2127;76:1577;1:159)
//                           child: SizedBox(
//                             width: 24.24*fem,
//                             height: 24.24*fem,
//                             child: Image.asset(
//                               'assets/cenima-app-user/images/close-Br5.png',
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Positioned(
//               // iosstatusbarwithnotchsfduw (77:2128)
//               left: 0*fem,
//               top: 0*fem,
//               child: Container(
//                 width: 393*fem,
//                 height: 44*fem,
//                 decoration: BoxDecoration (
//                   color: Color(0xffffffff),
//                 ),
//                 child: Stack(
//                   children: [
//                     Positioned(
//                       // notchngM (I77:2128;9:41)
//                       left: 87*fem,
//                       top: 0*fem,
//                       child: Align(
//                         child: SizedBox(
//                           width: 219*fem,
//                           height: 30*fem,
//                           child: Image.asset(
//                             'assets/cenima-app-user/images/notch-HNd.png',
//                             width: 219*fem,
//                             height: 30*fem,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       // timeByP (I77:2128;9:73)
//                       left: 32*fem,
//                       top: 13*fem,
//                       child: Align(
//                         child: SizedBox(
//                           width: 26*fem,
//                           height: 21*fem,
//                           child: Text(
//                             '9:41',
//                             style: SafeGoogleFont (
//                               'SF Pro Text',
//                               15*ffem,
//                               fontWeight: FontWeight.w600,
//                               height: 1.4*ffem/fem,
//                               letterSpacing: -0.3199999928*fem,
//                               color: Color(0xff020202),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       // iosiconstatusbarszd (I77:2128;9:57)
//                       left: 0*fem,
//                       top: 5*fem,
//                       child: Container(
//                         padding: EdgeInsets.fromLTRB(20.04*fem, 0*fem, 0*fem, 0*fem),
//                         width: 1929*fem,
//                         height: 26*fem,
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.end,
//                           children: [
//                             Container(
//                               // autogroup7kn5oWu (W2TS7vmybB93K1tVrC7KN5)
//                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1796*fem, 10*fem),
//                               width: 48.96*fem,
//                               height: 16*fem,
//                             ),
//                             Container(
//                               // iosiconsmallmobilesignalSZs (I77:2128;9:57;9:6)
//                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.35*fem, 2.33*fem),
//                               width: 17*fem,
//                               height: 10.67*fem,
//                               child: Image.asset(
//                                 'assets/cenima-app-user/images/ios-icon-small-mobile-signal-dgR.png',
//                                 width: 17*fem,
//                                 height: 10.67*fem,
//                               ),
//                             ),
//                             Container(
//                               // iosiconsmallwifimkZ (I77:2128;9:57;9:12)
//                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.38*fem, 2.03*fem),
//                               width: 15.27*fem,
//                               height: 10.97*fem,
//                               child: Image.asset(
//                                 'assets/cenima-app-user/images/ios-icon-small-wifi-SXw.png',
//                                 width: 15.27*fem,
//                                 height: 10.97*fem,
//                               ),
//                             ),
//                             Container(
//                               // iosiconsmallbatteryaCD (I77:2128;9:57;9:17)
//                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.67*fem),
//                               width: 24.33*fem,
//                               height: 11.33*fem,
//                               child: Image.asset(
//                                 'assets/cenima-app-user/images/ios-icon-small-battery-bnD.png',
//                                 width: 24.33*fem,
//                                 height: 11.33*fem,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//           );
//   }
// }