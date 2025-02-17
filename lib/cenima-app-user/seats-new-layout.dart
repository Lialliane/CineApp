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
//         // seatsnewlayoute21 (279:20549)
//         width: double.infinity,
//         height: 852*fem,
//         decoration: BoxDecoration (
//           color: Color(0xfff1f1f1),
//         ),
//         child: Stack(
//           children: [
//             Positioned(
//               // rectanglescreensqMP (279:20550)
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
//               // rectangle71RKb (279:20559)
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
//               // accountinfoTQh (279:20560)
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
//               // slideselect3elemnets1izq (279:20561)
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
//                   // group20GQ5 (279:20563)
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
//               // component66xw7 (325:21505)
//               left: 20*fem,
//               top: 193*fem,
//               child: Container(
//                 width: 353*fem,
//                 height: 109*fem,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Container(
//                       // profilecardBJ5 (I325:21505;325:21338)
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
//                             // changepasswordfcZ (I325:21505;325:21340)
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
//                             // xPws (I325:21505;325:21361)
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
//                       // addnewscreenPqP (I325:21505;325:21341)
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
//               // badminnewlayoutgi1 (279:20567)
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
//                       // component116biV (I279:20567;279:20903)
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
//                             // movietickethQ9 (I279:20567;279:20903;1:171)
//                             margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 6*fem, 4*fem),
//                             width: double.infinity,
//                             height: 34*fem,
//                             decoration: BoxDecoration (
//                               image: DecorationImage (
//                                 fit: BoxFit.cover,
//                                 image: AssetImage (
//                                   'assets/cenima-app-user/images/movie-ticket-bg-693.png',
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             // booktickettjX (I279:20567;279:20903;1:172)
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
//                       // component121t7F (I279:20567;279:20905)
//                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 66.5*fem, 6*fem),
//                       width: 35*fem,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Container(
//                             // popcornFc1 (I279:20567;279:20905;1:171)
//                             margin: EdgeInsets.fromLTRB(0.5*fem, 0*fem, 0.5*fem, 4*fem),
//                             width: double.infinity,
//                             height: 34*fem,
//                             decoration: BoxDecoration (
//                               color: Color(0xffff2153),
//                               image: DecorationImage (
//                                 fit: BoxFit.cover,
//                                 image: AssetImage (
//                                   'assets/cenima-app-user/images/popcorn-bg-2vR.png',
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             // foodmenurbo (I279:20567;279:20905;1:172)
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
//                       // component119G9j (I279:20567;279:20904)
//                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 64.5*fem, 6*fem),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Container(
//                             // popcornfBs (I279:20567;279:20904;1:171)
//                             margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
//                             width: 34*fem,
//                             height: 34*fem,
//                             child: Image.asset(
//                               'assets/cenima-app-user/images/popcorn-EB7.png',
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                           Container(
//                             // foodmenuVAu (I279:20567;279:20904;1:172)
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
//                       // component120gmB (I279:20567;279:20906)
//                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6*fem),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Container(
//                             // user152d (I279:20567;279:20906;1:171)
//                             margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
//                             width: 34*fem,
//                             height: 34*fem,
//                             child: Image.asset(
//                               'assets/cenima-app-user/images/user-1-Yvh.png',
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                           Container(
//                             // profilehZo (I279:20567;279:20906;1:172)
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
//               // iosstatusbarwithnotchsfWn9 (279:20568)
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
//                       // notch3vV (I279:20568;9:41)
//                       left: 87*fem,
//                       top: 0*fem,
//                       child: Align(
//                         child: SizedBox(
//                           width: 219*fem,
//                           height: 30*fem,
//                           child: Image.asset(
//                             'assets/cenima-app-user/images/notch-vd3.png',
//                             width: 219*fem,
//                             height: 30*fem,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       // timeCS1 (I279:20568;9:73)
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
//                       // iosiconstatusbarEGD (I279:20568;9:57)
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
//                               // autogroupyddxLCm (W2eacGjKchMpmGG8ZqYDdX)
//                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1796*fem, 10*fem),
//                               width: 48.96*fem,
//                               height: 16*fem,
//                             ),
//                             Container(
//                               // iosiconsmallmobilesignalNQM (I279:20568;9:57;9:6)
//                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.35*fem, 2.33*fem),
//                               width: 17*fem,
//                               height: 10.67*fem,
//                               child: Image.asset(
//                                 'assets/cenima-app-user/images/ios-icon-small-mobile-signal-yj3.png',
//                                 width: 17*fem,
//                                 height: 10.67*fem,
//                               ),
//                             ),
//                             Container(
//                               // iosiconsmallwifi8Xw (I279:20568;9:57;9:12)
//                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.38*fem, 2.03*fem),
//                               width: 15.27*fem,
//                               height: 10.97*fem,
//                               child: Image.asset(
//                                 'assets/cenima-app-user/images/ios-icon-small-wifi-aj7.png',
//                                 width: 15.27*fem,
//                                 height: 10.97*fem,
//                               ),
//                             ),
//                             Container(
//                               // iosiconsmallbatteryWoP (I279:20568;9:57;9:17)
//                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.67*fem),
//                               width: 24.33*fem,
//                               height: 11.33*fem,
//                               child: Image.asset(
//                                 'assets/cenima-app-user/images/ios-icon-small-battery-Mxy.png',
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