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
//         // seatsupdatedszm (325:21362)
//         width: double.infinity,
//         height: 852*fem,
//         decoration: BoxDecoration (
//           color: Color(0xfff1f1f1),
//         ),
//         child: Stack(
//           children: [
//             Positioned(
//               // rectanglescreensGX7 (325:21363)
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
//               // rectangle71TLh (325:21372)
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
//               // accountinfov7o (325:21373)
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
//               // slideselect3elemnets1Bhw (325:21374)
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
//                   // group205qF (325:21376)
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
//               // component66kK7 (325:21524)
//               left: 20*fem,
//               top: 193*fem,
//               child: Container(
//                 width: 353*fem,
//                 height: 158*fem,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Container(
//                       // profilecardqUy (I325:21524;325:21345)
//                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
//                       child: TextButton(
//                         onPressed: () {},
//                         style: TextButton.styleFrom (
//                           padding: EdgeInsets.zero,
//                         ),
//                         child: Container(
//                           padding: EdgeInsets.fromLTRB(13*fem, 10*fem, 10*fem, 16*fem),
//                           width: double.infinity,
//                           decoration: BoxDecoration (
//                             color: Color(0xffffffff),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Color(0x29000000),
//                                 offset: Offset(0*fem, 3*fem),
//                                 blurRadius: 1.5*fem,
//                               ),
//                             ],
//                           ),
//                           child: Row(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Container(
//                                 // changepassword3jT (I325:21524;325:21347)
//                                 margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 237*fem, 0*fem),
//                                 child: Text(
//                                   'SCREEN 1',
//                                   style: SafeGoogleFont (
//                                     'Lucida Bright',
//                                     22*ffem,
//                                     fontWeight: FontWeight.w600,
//                                     height: 1.2575*ffem/fem,
//                                     color: Color(0xff7e132b),
//                                   ),
//                                 ),
//                               ),
//                               TextButton(
//                                 // xacu (I325:21524;325:21353)
//                                 onPressed: () {},
//                                 style: TextButton.styleFrom (
//                                   padding: EdgeInsets.zero,
//                                 ),
//                                 child: Text(
//                                   'X',
//                                   style: SafeGoogleFont (
//                                     'Lucida Sans',
//                                     22*ffem,
//                                     fontWeight: FontWeight.w400,
//                                     height: 1.2575*ffem/fem,
//                                     color: Color(0xff000000),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       // profilecardnDB (I325:21524;325:21349)
//                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
//                       child: TextButton(
//                         onPressed: () {},
//                         style: TextButton.styleFrom (
//                           padding: EdgeInsets.zero,
//                         ),
//                         child: Container(
//                           padding: EdgeInsets.fromLTRB(13*fem, 10*fem, 10*fem, 8*fem),
//                           width: double.infinity,
//                           decoration: BoxDecoration (
//                             color: Color(0xffffffff),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Color(0x29000000),
//                                 offset: Offset(0*fem, 3*fem),
//                                 blurRadius: 1.5*fem,
//                               ),
//                             ],
//                           ),
//                           child: Row(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Container(
//                                 // changepasswordmUR (I325:21524;325:21351)
//                                 margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 237*fem, 8*fem),
//                                 child: Text(
//                                   'SCREEN 2',
//                                   style: SafeGoogleFont (
//                                     'Lucida Bright',
//                                     22*ffem,
//                                     fontWeight: FontWeight.w600,
//                                     height: 1.2575*ffem/fem,
//                                     color: Color(0xff7e132b),
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 // xZ9P (I325:21524;325:21352)
//                                 margin: EdgeInsets.fromLTRB(0*fem, 8*fem, 0*fem, 0*fem),
//                                 child: TextButton(
//                                   onPressed: () {},
//                                   style: TextButton.styleFrom (
//                                     padding: EdgeInsets.zero,
//                                   ),
//                                   child: Text(
//                                     'X',
//                                     style: SafeGoogleFont (
//                                       'Lucida Sans',
//                                       22*ffem,
//                                       fontWeight: FontWeight.w400,
//                                       height: 1.2575*ffem/fem,
//                                       color: Color(0xff000000),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       // addnewscreenSsP (I325:21524;325:21348)
//                       margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 0*fem, 0*fem),
//                       child: Text(
//                         'ADD NEW SCREEN',
//                         textAlign: TextAlign.center,
//                         style: SafeGoogleFont (
//                           'Lucida Bright',
//                           19.8325920105*ffem,
//                           fontWeight: FontWeight.w600,
//                           height: 1.2575*ffem/fem,
//                           color: Color(0xff777777),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Positioned(
//               // badminupdatedEHT (325:21380)
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
//                       // component116gYm (I325:21380;143:22499)
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
//                             // movieticketee1 (I325:21380;143:22499;1:171)
//                             margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 6*fem, 4*fem),
//                             width: double.infinity,
//                             height: 34*fem,
//                             decoration: BoxDecoration (
//                               image: DecorationImage (
//                                 fit: BoxFit.cover,
//                                 image: AssetImage (
//                                   'assets/cenima-app-user/images/movie-ticket-bg-qP3.png',
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             // bookticket4Sq (I325:21380;143:22499;1:172)
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
//                       // component121zUu (I325:21380;143:22501)
//                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 66.5*fem, 6*fem),
//                       width: 35*fem,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Container(
//                             // popcornQYd (I325:21380;143:22501;1:171)
//                             margin: EdgeInsets.fromLTRB(0.5*fem, 0*fem, 0.5*fem, 4*fem),
//                             width: double.infinity,
//                             height: 34*fem,
//                             decoration: BoxDecoration (
//                               color: Color(0xffff2153),
//                               image: DecorationImage (
//                                 fit: BoxFit.cover,
//                                 image: AssetImage (
//                                   'assets/cenima-app-user/images/popcorn-bg-9Fs.png',
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             // foodmenuzWq (I325:21380;143:22501;1:172)
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
//                       // component119KxR (I325:21380;143:22500)
//                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 64.5*fem, 6*fem),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Container(
//                             // popcornwyo (I325:21380;143:22500;1:171)
//                             margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
//                             width: 34*fem,
//                             height: 34*fem,
//                             child: Image.asset(
//                               'assets/cenima-app-user/images/popcorn-tkD.png',
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                           Container(
//                             // foodmenuy9o (I325:21380;143:22500;1:172)
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
//                       // component120K7B (I325:21380;143:22502)
//                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6*fem),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Container(
//                             // user1xR3 (I325:21380;143:22502;1:171)
//                             margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
//                             width: 34*fem,
//                             height: 34*fem,
//                             child: Image.asset(
//                               'assets/cenima-app-user/images/user-1-TRX.png',
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                           Container(
//                             // profileZ9w (I325:21380;143:22502;1:172)
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
//               // iosstatusbarwithnotchsfJWq (325:21381)
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
//                       // notchh3B (I325:21381;9:41)
//                       left: 87*fem,
//                       top: 0*fem,
//                       child: Align(
//                         child: SizedBox(
//                           width: 219*fem,
//                           height: 30*fem,
//                           child: Image.asset(
//                             'assets/cenima-app-user/images/notch-2wP.png',
//                             width: 219*fem,
//                             height: 30*fem,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       // timeq2u (I325:21381;9:73)
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
//                       // iosiconstatusbar8RK (I325:21381;9:57)
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
//                               // autogroupabuzcUu (W2eQGZxaSjnnpkF3iDabUZ)
//                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1796*fem, 10*fem),
//                               width: 48.96*fem,
//                               height: 16*fem,
//                             ),
//                             Container(
//                               // iosiconsmallmobilesignalre9 (I325:21381;9:57;9:6)
//                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.35*fem, 2.33*fem),
//                               width: 17*fem,
//                               height: 10.67*fem,
//                               child: Image.asset(
//                                 'assets/cenima-app-user/images/ios-icon-small-mobile-signal-SVB.png',
//                                 width: 17*fem,
//                                 height: 10.67*fem,
//                               ),
//                             ),
//                             Container(
//                               // iosiconsmallwifidoK (I325:21381;9:57;9:12)
//                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.38*fem, 2.03*fem),
//                               width: 15.27*fem,
//                               height: 10.97*fem,
//                               child: Image.asset(
//                                 'assets/cenima-app-user/images/ios-icon-small-wifi-2WZ.png',
//                                 width: 15.27*fem,
//                                 height: 10.97*fem,
//                               ),
//                             ),
//                             Container(
//                               // iosiconsmallbatterymY9 (I325:21381;9:57;9:17)
//                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.67*fem),
//                               width: 24.33*fem,
//                               height: 11.33*fem,
//                               child: Image.asset(
//                                 'assets/cenima-app-user/images/ios-icon-small-battery-Cm3.png',
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