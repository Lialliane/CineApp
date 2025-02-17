// import 'package:flutter/material.dart';
// import 'package:flutter/gestures.dart';
// import 'dart:ui';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:myapp/utils.dart';

// class Scene extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     double baseWidth = 393;
//     double fem = MediaQuery.of(context).size.width / baseWidth;
//     double ffem = fem * 0.97;
//     return Container(
//       width: double.infinity,
//       child: Container(
//         // seatsfoodyjb (279:20493)
//         width: double.infinity,
//         height: 852*fem,
//         decoration: BoxDecoration (
//           color: Color(0xfff1f1f1),
//         ),
//         child: Stack(
//           children: [
//             Positioned(
//               // rectanglescreensnBF (279:20494)
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
//               // rectangle71tdb (279:20503)
//               left: 0*fem,
//               top: 44*fem,
//               child: Align(
//                 child: SizedBox(
//                   width: 393*fem,
//                   height: 64*fem,
//                   child: Container(
//                     decoration: BoxDecoration (
//                       color: Color(0xffffffff),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Color(0x3f000000),
//                           offset: Offset(0*fem, 2*fem),
//                           blurRadius: 2.5*fem,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               // accountinfoQVT (279:20504)
//               left: 134.5*fem,
//               top: 67*fem,
//               child: Align(
//                 child: SizedBox(
//                   width: 137*fem,
//                   height: 26*fem,
//                   child: Text(
//                     'Screens & seats',
//                     textAlign: TextAlign.center,
//                     style: SafeGoogleFont (
//                       'Segoe UI',
//                       20*ffem,
//                       fontWeight: FontWeight.w700,
//                       height: 1.2575*ffem/fem,
//                       color: Color(0xff000000),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               // slideselect3elemnets14Cd (279:20505)
//               left: 0*fem,
//               top: 108*fem,
//               child: Container(
//                 width: 393*fem,
//                 height: 62*fem,
//                 decoration: BoxDecoration (
//                   border: Border.all(color: Color(0xff707070)),
//                   color: Color(0xffffffff),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Color(0x3f3f3f3f),
//                       offset: Offset(0*fem, 4*fem),
//                       blurRadius: 2*fem,
//                     ),
//                   ],
//                 ),
//                 child: Container(
//                   // group20oZX (279:20507)
//                   width: double.infinity,
//                   height: double.infinity,
//                   decoration: BoxDecoration (
//                     border: Border.all(color: Color(0xff707070)),
//                     color: Color(0xffffffff),
//                   ),
//                   child: Center(
//                     child: Text(
//                       'First cinema',
//                       textAlign: TextAlign.center,
//                       style: SafeGoogleFont (
//                         'Lucida Bright',
//                         20*ffem,
//                         fontWeight: FontWeight.w400,
//                         height: 1.2575*ffem/fem,
//                         color: Color(0xffff1e60),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               // component66hoK (325:21511)
//               left: 20*fem,
//               top: 193*fem,
//               child: Container(
//                 width: 353*fem,
//                 height: 109*fem,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Container(
//                       // profilecarduuP (I325:21511;325:21338)
//                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 30*fem),
//                       padding: EdgeInsets.fromLTRB(13*fem, 10*fem, 10*fem, 16*fem),
//                       width: double.infinity,
//                       decoration: BoxDecoration (
//                         color: Color(0xffffffff),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Color(0x29000000),
//                             offset: Offset(0*fem, 3*fem),
//                             blurRadius: 1.5*fem,
//                           ),
//                         ],
//                       ),
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Container(
//                             // changepasswordYay (I325:21511;325:21340)
//                             margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 237*fem, 0*fem),
//                             child: Text(
//                               'SCREEN 1',
//                               style: SafeGoogleFont (
//                                 'Lucida Bright',
//                                 22*ffem,
//                                 fontWeight: FontWeight.w600,
//                                 height: 1.2575*ffem/fem,
//                                 color: Color(0xff7e132b),
//                               ),
//                             ),
//                           ),
//                           TextButton(
//                             // xj9f (I325:21511;325:21361)
//                             onPressed: () {},
//                             style: TextButton.styleFrom (
//                               padding: EdgeInsets.zero,
//                             ),
//                             child: Text(
//                               'X',
//                               style: SafeGoogleFont (
//                                 'Lucida Sans',
//                                 22*ffem,
//                                 fontWeight: FontWeight.w400,
//                                 height: 1.2575*ffem/fem,
//                                 color: Color(0xff000000),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       // addnewscreentgm (I325:21511;325:21341)
//                       margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 0*fem, 0*fem),
//                       child: TextButton(
//                         onPressed: () {},
//                         style: TextButton.styleFrom (
//                           padding: EdgeInsets.zero,
//                         ),
//                         child: Text(
//                           'ADD NEW SCREEN',
//                           textAlign: TextAlign.center,
//                           style: SafeGoogleFont (
//                             'Lucida Bright',
//                             19.8325920105*ffem,
//                             fontWeight: FontWeight.w600,
//                             height: 1.2575*ffem/fem,
//                             color: Color(0xffff2153),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Positioned(
//               // badminfoodEe9 (279:20511)
//               left: 0*fem,
//               top: 770*fem,
//               child: Container(
//                 padding: EdgeInsets.fromLTRB(13*fem, 6*fem, 25*fem, 6*fem),
//                 width: 393*fem,
//                 height: 82*fem,
//                 decoration: BoxDecoration (
//                   border: Border.all(color: Color(0xff707070)),
//                   color: Color(0xffffffff),
//                 ),
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Container(
//                       // component116JGd (I279:20511;279:20974)
//                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 62*fem, 0*fem),
//                       padding: EdgeInsets.fromLTRB(4*fem, 0*fem, 4*fem, 6*fem),
//                       width: 54*fem,
//                       height: double.infinity,
//                       decoration: BoxDecoration (
//                         color: Color(0xffdb0233),
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Container(
//                             // movieticket2rq (I279:20511;279:20974;1:171)
//                             margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 6*fem, 4*fem),
//                             width: double.infinity,
//                             height: 34*fem,
//                             decoration: BoxDecoration (
//                               image: DecorationImage (
//                                 fit: BoxFit.cover,
//                                 image: AssetImage (
//                                   'assets/cenima-app-user/images/movie-ticket-bg-4KX.png',
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             // bookticketqJV (I279:20511;279:20974;1:172)
//                             constraints: BoxConstraints (
//                               maxWidth: 46*fem,
//                             ),
//                             child: Text(
//                               'Movies &\nSchedules',
//                               textAlign: TextAlign.center,
//                               style: SafeGoogleFont (
//                                 'Segoe Script',
//                                 10*ffem,
//                                 fontWeight: FontWeight.w700,
//                                 height: 1.2575*ffem/fem,
//                                 color: Color(0xff000000),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       // component121BFs (I279:20511;279:20976)
//                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 66.5*fem, 6*fem),
//                       width: 35*fem,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Container(
//                             // popcornPsj (I279:20511;279:20976;1:171)
//                             margin: EdgeInsets.fromLTRB(0.5*fem, 0*fem, 0.5*fem, 4*fem),
//                             width: double.infinity,
//                             height: 34*fem,
//                             decoration: BoxDecoration (
//                               color: Color(0xffff2153),
//                               image: DecorationImage (
//                                 fit: BoxFit.cover,
//                                 image: AssetImage (
//                                   'assets/cenima-app-user/images/popcorn-bg-by7.png',
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             // foodmenu18R (I279:20511;279:20976;1:172)
//                             constraints: BoxConstraints (
//                               maxWidth: 35*fem,
//                             ),
//                             child: Text(
//                               'Screens\n& Seats ',
//                               textAlign: TextAlign.center,
//                               style: SafeGoogleFont (
//                                 'Segoe Script',
//                                 10*ffem,
//                                 fontWeight: FontWeight.w700,
//                                 height: 1.2575*ffem/fem,
//                                 color: Color(0xffff2153),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       // component119M5o (I279:20511;279:20975)
//                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 64.5*fem, 6*fem),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Container(
//                             // popcornBqX (I279:20511;279:20975;1:171)
//                             margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
//                             width: 34*fem,
//                             height: 34*fem,
//                             child: Image.asset(
//                               'assets/cenima-app-user/images/popcorn-Frd.png',
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                           Container(
//                             // foodmenuQyB (I279:20511;279:20975;1:172)
//                             constraints: BoxConstraints (
//                               maxWidth: 25*fem,
//                             ),
//                             child: Text(
//                               'Food\nMenu',
//                               textAlign: TextAlign.center,
//                               style: SafeGoogleFont (
//                                 'Segoe Script',
//                                 10*ffem,
//                                 fontWeight: FontWeight.w700,
//                                 height: 1.2575*ffem/fem,
//                                 color: Color(0xff000000),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       // component120mhF (I279:20511;279:20977)
//                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6*fem),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Container(
//                             // user1D3T (I279:20511;279:20977;1:171)
//                             margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
//                             width: 34*fem,
//                             height: 34*fem,
//                             child: Image.asset(
//                               'assets/cenima-app-user/images/user-1-4uj.png',
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                           Container(
//                             // profileDxZ (I279:20511;279:20977;1:172)
//                             constraints: BoxConstraints (
//                               maxWidth: 39*fem,
//                             ),
//                             child: Text(
//                               'Profile &\nSettings',
//                               textAlign: TextAlign.center,
//                               style: SafeGoogleFont (
//                                 'Segoe Script',
//                                 10*ffem,
//                                 fontWeight: FontWeight.w700,
//                                 height: 1.2575*ffem/fem,
//                                 color: Color(0xff000000),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Positioned(
//               // iosstatusbarwithnotchsfzM3 (279:20512)
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
//                       // notchP8H (I279:20512;9:41)
//                       left: 87*fem,
//                       top: 0*fem,
//                       child: Align(
//                         child: SizedBox(
//                           width: 219*fem,
//                           height: 30*fem,
//                           child: Image.asset(
//                             'assets/cenima-app-user/images/notch-mGq.png',
//                             width: 219*fem,
//                             height: 30*fem,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       // timeW6R (I279:20512;9:73)
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
//                       // iosiconstatusbarQr1 (I279:20512;9:57)
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
//                               // autogrouppuv7rrR (W2eXsbni2XNPUnW6vJPuV7)
//                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1796*fem, 10*fem),
//                               width: 48.96*fem,
//                               height: 16*fem,
//                             ),
//                             Container(
//                               // iosiconsmallmobilesignalgqT (I279:20512;9:57;9:6)
//                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.35*fem, 2.33*fem),
//                               width: 17*fem,
//                               height: 10.67*fem,
//                               child: Image.asset(
//                                 'assets/cenima-app-user/images/ios-icon-small-mobile-signal-5J5.png',
//                                 width: 17*fem,
//                                 height: 10.67*fem,
//                               ),
//                             ),
//                             Container(
//                               // iosiconsmallwifirdT (I279:20512;9:57;9:12)
//                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.38*fem, 2.03*fem),
//                               width: 15.27*fem,
//                               height: 10.97*fem,
//                               child: Image.asset(
//                                 'assets/cenima-app-user/images/ios-icon-small-wifi-EQd.png',
//                                 width: 15.27*fem,
//                                 height: 10.97*fem,
//                               ),
//                             ),
//                             Container(
//                               // iosiconsmallbatteryoBK (I279:20512;9:57;9:17)
//                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.67*fem),
//                               width: 24.33*fem,
//                               height: 11.33*fem,
//                               child: Image.asset(
//                                 'assets/cenima-app-user/images/ios-icon-small-battery-gBF.png',
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