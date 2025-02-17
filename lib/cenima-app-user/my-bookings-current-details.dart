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
//         // mybookingscurrentdetailsWK7 (101:13340)
//         width: double.infinity,
//         height: 852*fem,
//         decoration: BoxDecoration (
//           color: Color(0xfff1f1f1),
//         ),
//         child: Stack(
//           children: [
//             Positioned(
//               // rectangle436o7 (101:13341)
//               left: 0*fem,
//               top: 104*fem,
//               child: Align(
//                 child: SizedBox(
//                   width: 391*fem,
//                   height: 748*fem,
//                   child: Container(
//                     decoration: BoxDecoration (
//                       color: Color(0xfff1f1f1),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               // component64H6u (187:22738)
//               left: 0*fem,
//               top: 360*fem,
//               child: Container(
//                 width: 400*fem,
//                 height: 1600*fem,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Container(
//                       // orderdetails1BK (I187:22738;193:20726)
//                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 19*fem),
//                       padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 24.5*fem),
//                       width: 397*fem,
//                       height: 589*fem,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         children: [
//                           Container(
//                             // orderdetailsACd (I187:22738;193:20754)
//                             margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 2*fem, 16*fem),
//                             child: TextButton(
//                               onPressed: () {},
//                               style: TextButton.styleFrom (
//                                 padding: EdgeInsets.zero,
//                               ),
//                               child: Container(
//                                 padding: EdgeInsets.fromLTRB(135*fem, 22*fem, 24.46*fem, 22*fem),
//                                 width: double.infinity,
//                                 decoration: BoxDecoration (
//                                   border: Border.all(color: Color(0xff707070)),
//                                   color: Color(0xffffffff),
//                                   boxShadow: [
//                                     BoxShadow(
//                                       color: Color(0x3f414141),
//                                       offset: Offset(0*fem, 4*fem),
//                                       blurRadius: 2*fem,
//                                     ),
//                                   ],
//                                 ),
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       // orderdetailsKNM (I187:22738;193:20756)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 83*fem, 0*fem),
//                                       child: Text(
//                                         'Order details',
//                                         textAlign: TextAlign.center,
//                                         style: SafeGoogleFont (
//                                           'Lucida Bright',
//                                           22*ffem,
//                                           fontWeight: FontWeight.w600,
//                                           height: 1.2575*ffem/fem,
//                                           color: Color(0xff4b4a4a),
//                                         ),
//                                       ),
//                                     ),
//                                     Container(
//                                       // arrowdownsigntonavigate4jF (I187:22738;193:20757;56:1913;1:127)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.46*fem),
//                                       width: 27.55*fem,
//                                       height: 27.54*fem,
//                                       child: Image.asset(
//                                         'assets/cenima-app-user/images/arrow-down-sign-to-navigate-VD7.png',
//                                         fit: BoxFit.cover,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             // group53c8V (I187:22738;193:20732)
//                             margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 2*fem, 21.5*fem),
//                             width: double.infinity,
//                             height: 121.5*fem,
//                             child: Container(
//                               // autogroupwbndFBT (W2UqPvgc481w8eybprwbNd)
//                               padding: EdgeInsets.fromLTRB(15.5*fem, 0*fem, 27*fem, 32.5*fem),
//                               width: double.infinity,
//                               height: 120.5*fem,
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Container(
//                                     // ticketsU4D (I187:22738;193:20734)
//                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
//                                     child: Text(
//                                       'Tickets',
//                                       style: SafeGoogleFont (
//                                         'Lucida Bright',
//                                         18*ffem,
//                                         fontWeight: FontWeight.w600,
//                                         height: 1.2575*ffem/fem,
//                                         color: Color(0xff7e132b),
//                                       ),
//                                     ),
//                                   ),
//                                   Container(
//                                     // autogroupxem3p1b (W2Upg7YwbmBFHQSpPiXEm3)
//                                     margin: EdgeInsets.fromLTRB(19.5*fem, 0*fem, 0*fem, 13.5*fem),
//                                     width: double.infinity,
//                                     child: Row(
//                                       crossAxisAlignment: CrossAxisAlignment.center,
//                                       children: [
//                                         Container(
//                                           // standardticketa1Fch (I187:22738;193:20735)
//                                           margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 154*fem, 0*fem),
//                                           child: RichText(
//                                             text: TextSpan(
//                                               style: SafeGoogleFont (
//                                                 'Segoe UI',
//                                                 14*ffem,
//                                                 fontWeight: FontWeight.w300,
//                                                 height: 1.2575*ffem/fem,
//                                                 fontStyle: FontStyle.italic,
//                                                 color: Color(0xff000000),
//                                               ),
//                                               children: [
//                                                 TextSpan(
//                                                   text: '2 Standard tic',
//                                                   style: SafeGoogleFont (
//                                                     'Segoe UI',
//                                                     14*ffem,
//                                                     fontWeight: FontWeight.w300,
//                                                     height: 1.2575*ffem/fem,
//                                                     fontStyle: FontStyle.italic,
//                                                     color: Color(0xff000000),
//                                                   ),
//                                                 ),
//                                                 TextSpan(
//                                                   text: 'ket (A1)',
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                         Text(
//                                           // jodfdo (I187:22738;193:20736)
//                                           '16.00 JOD',
//                                           style: SafeGoogleFont (
//                                             'Segoe UI',
//                                             14*ffem,
//                                             fontWeight: FontWeight.w300,
//                                             height: 1.2575*ffem/fem,
//                                             fontStyle: FontStyle.italic,
//                                             color: Color(0xff000000),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   Container(
//                                     // autogroupvpumfnD (W2Uq2gnzh78rqNvuR7VpUM)
//                                     margin: EdgeInsets.fromLTRB(19.5*fem, 0*fem, 0*fem, 0*fem),
//                                     width: double.infinity,
//                                     child: Row(
//                                       crossAxisAlignment: CrossAxisAlignment.center,
//                                       children: [
//                                         Container(
//                                           // primeticketa25qw (I187:22738;193:20738)
//                                           margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 172*fem, 0.5*fem),
//                                           child: RichText(
//                                             text: TextSpan(
//                                               style: SafeGoogleFont (
//                                                 'Segoe UI',
//                                                 14*ffem,
//                                                 fontWeight: FontWeight.w300,
//                                                 height: 1.2575*ffem/fem,
//                                                 fontStyle: FontStyle.italic,
//                                                 color: Color(0xff000000),
//                                               ),
//                                               children: [
//                                                 TextSpan(
//                                                   text: '2 Prime ticket',
//                                                   style: SafeGoogleFont (
//                                                     'Segoe UI',
//                                                     14*ffem,
//                                                     fontWeight: FontWeight.w300,
//                                                     height: 1.2575*ffem/fem,
//                                                     fontStyle: FontStyle.italic,
//                                                     color: Color(0xff000000),
//                                                   ),
//                                                 ),
//                                                 TextSpan(
//                                                   text: ' (A2)',
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                         Container(
//                                           // jodLhK (I187:22738;193:20737)
//                                           margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 0*fem, 0*fem),
//                                           child: Text(
//                                             '32.00 JOD',
//                                             style: SafeGoogleFont (
//                                               'Segoe UI',
//                                               14*ffem,
//                                               fontWeight: FontWeight.w300,
//                                               height: 1.2575*ffem/fem,
//                                               fontStyle: FontStyle.italic,
//                                               color: Color(0xff000000),
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           Container(
//                             // group54sam (I187:22738;193:20739)
//                             margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 18*fem),
//                             width: 393*fem,
//                             height: 205*fem,
//                             child: Container(
//                               // autogroups3nmYKX (W2UtEgHRMnvCjGjws7s3NM)
//                               padding: EdgeInsets.fromLTRB(15.5*fem, 0*fem, 27*fem, 23*fem),
//                               width: double.infinity,
//                               height: 204*fem,
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Container(
//                                     // foodanddrinksYD3 (I187:22738;193:20741)
//                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 223.5*fem, 15*fem),
//                                     child: Text(
//                                       'Food And Drinks',
//                                       style: SafeGoogleFont (
//                                         'Lucida Bright',
//                                         18*ffem,
//                                         fontWeight: FontWeight.w600,
//                                         height: 1.2575*ffem/fem,
//                                         color: Color(0xff7e132b),
//                                       ),
//                                     ),
//                                   ),
//                                   Container(
//                                     // autogroupqkkpfS5 (W2UrmUEQ4MYrkvigTVQkKP)
//                                     margin: EdgeInsets.fromLTRB(19.5*fem, 0*fem, 0*fem, 13.5*fem),
//                                     width: double.infinity,
//                                     child: Row(
//                                       crossAxisAlignment: CrossAxisAlignment.center,
//                                       children: [
//                                         Container(
//                                           // largepopcornsi9T (I187:22738;193:20742)
//                                           margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 187*fem, 0*fem),
//                                           child: Text(
//                                             '1 Fried Chicken',
//                                             style: SafeGoogleFont (
//                                               'Segoe UI',
//                                               14*ffem,
//                                               fontWeight: FontWeight.w300,
//                                               height: 1.2575*ffem/fem,
//                                               fontStyle: FontStyle.italic,
//                                               color: Color(0xff000000),
//                                             ),
//                                           ),
//                                         ),
//                                         Text(
//                                           // jodhXB (I187:22738;193:20743)
//                                           '03.00 JOD',
//                                           style: SafeGoogleFont (
//                                             'Segoe UI',
//                                             14*ffem,
//                                             fontWeight: FontWeight.w300,
//                                             height: 1.2575*ffem/fem,
//                                             fontStyle: FontStyle.italic,
//                                             color: Color(0xff000000),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   Container(
//                                     // autogroupi8aq757 (W2Us7nysJKfRXfNHiFi8aq)
//                                     margin: EdgeInsets.fromLTRB(19.5*fem, 0*fem, 0*fem, 18*fem),
//                                     width: double.infinity,
//                                     child: Row(
//                                       crossAxisAlignment: CrossAxisAlignment.center,
//                                       children: [
//                                         Container(
//                                           // largecocacolasoftdrinksYw7 (I187:22738;193:20747)
//                                           margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 182*fem, 0.5*fem),
//                                           child: Text(
//                                             '4 Large Popcorn',
//                                             style: SafeGoogleFont (
//                                               'Segoe UI',
//                                               14*ffem,
//                                               fontWeight: FontWeight.w300,
//                                               height: 1.2575*ffem/fem,
//                                               fontStyle: FontStyle.italic,
//                                               color: Color(0xff000000),
//                                             ),
//                                           ),
//                                         ),
//                                         Container(
//                                           // jodkGV (I187:22738;193:20744)
//                                           margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 0*fem, 0*fem),
//                                           child: Text(
//                                             '08.00 JOD',
//                                             style: SafeGoogleFont (
//                                               'Segoe UI',
//                                               14*ffem,
//                                               fontWeight: FontWeight.w300,
//                                               height: 1.2575*ffem/fem,
//                                               fontStyle: FontStyle.italic,
//                                               color: Color(0xff000000),
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   Container(
//                                     // autogroups8dtJxD (W2UsTCbCRF1Umrcop2s8DT)
//                                     margin: EdgeInsets.fromLTRB(19.5*fem, 0*fem, 0*fem, 17*fem),
//                                     width: double.infinity,
//                                     child: Row(
//                                       crossAxisAlignment: CrossAxisAlignment.center,
//                                       children: [
//                                         Container(
//                                           // largecocacolasoftdrinksL8D (I187:22738;193:20749)
//                                           margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 137*fem, 0*fem),
//                                           constraints: BoxConstraints (
//                                             maxWidth: 137*fem,
//                                           ),
//                                           child: Text(
//                                             '1 Extra Gum Peppermint Chewing Gum\n',
//                                             style: SafeGoogleFont (
//                                               'Segoe UI',
//                                               14*ffem,
//                                               fontWeight: FontWeight.w300,
//                                               height: 1.2575*ffem/fem,
//                                               fontStyle: FontStyle.italic,
//                                               color: Color(0xff000000),
//                                             ),
//                                           ),
//                                         ),
//                                         Container(
//                                           // jodqDP (I187:22738;193:20745)
//                                           margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
//                                           child: Text(
//                                             '00.50 JOD',
//                                             style: SafeGoogleFont (
//                                               'Segoe UI',
//                                               14*ffem,
//                                               fontWeight: FontWeight.w300,
//                                               height: 1.2575*ffem/fem,
//                                               fontStyle: FontStyle.italic,
//                                               color: Color(0xff000000),
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   Container(
//                                     // autogroupvk33ctM (W2UsoGr5oqGzmMRwJAVK33)
//                                     margin: EdgeInsets.fromLTRB(19.5*fem, 0*fem, 0*fem, 0*fem),
//                                     width: double.infinity,
//                                     child: Row(
//                                       crossAxisAlignment: CrossAxisAlignment.center,
//                                       children: [
//                                         Container(
//                                           // largecocacolasoftdrinks4kM (I187:22738;193:20748)
//                                           margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 169*fem, 4*fem),
//                                           child: Text(
//                                             '4 Large Soft Drinks',
//                                             style: SafeGoogleFont (
//                                               'Segoe UI',
//                                               14*ffem,
//                                               fontWeight: FontWeight.w300,
//                                               height: 1.2575*ffem/fem,
//                                               fontStyle: FontStyle.italic,
//                                               color: Color(0xff000000),
//                                             ),
//                                           ),
//                                         ),
//                                         Container(
//                                           // jodCk5 (I187:22738;193:20746)
//                                           margin: EdgeInsets.fromLTRB(0*fem, 4*fem, 0*fem, 0*fem),
//                                           child: Text(
//                                             '06.00 JOD',
//                                             style: SafeGoogleFont (
//                                               'Segoe UI',
//                                               14*ffem,
//                                               fontWeight: FontWeight.w300,
//                                               height: 1.2575*ffem/fem,
//                                               fontStyle: FontStyle.italic,
//                                               color: Color(0xff000000),
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           Container(
//                             // group34CtV (I187:22738;193:20728)
//                             margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 2*fem, 8.5*fem),
//                             padding: EdgeInsets.fromLTRB(12*fem, 0*fem, 12*fem, 0*fem),
//                             width: double.infinity,
//                             height: 44.5*fem,
//                             child: Container(
//                               // autogroupy43wa8M (W2Up13qhWYe61n7JRXY43w)
//                               width: 354*fem,
//                               height: 23*fem,
//                               child: Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Container(
//                                     // bookingfeesR8y (I187:22738;193:20730)
//                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 197*fem, 0*fem),
//                                     child: Text(
//                                       'Booking fees',
//                                       style: SafeGoogleFont (
//                                         'Lucida Bright',
//                                         18*ffem,
//                                         fontWeight: FontWeight.w600,
//                                         height: 1.2575*ffem/fem,
//                                         color: Color(0xff7e132b),
//                                       ),
//                                     ),
//                                   ),
//                                   Container(
//                                     // jodEMK (I187:22738;193:20731)
//                                     margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
//                                     child: Text(
//                                       '02.00 JOD',
//                                       style: SafeGoogleFont (
//                                         'Segoe UI',
//                                         14*ffem,
//                                         fontWeight: FontWeight.w300,
//                                         height: 1.2575*ffem/fem,
//                                         fontStyle: FontStyle.italic,
//                                         color: Color(0xff000000),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           Container(
//                             // includingtaxeszzh (I187:22738;193:20751)
//                             margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13.5*fem, 0*fem),
//                             child: RichText(
//                               text: TextSpan(
//                                 style: SafeGoogleFont (
//                                   'Segoe UI',
//                                   12*ffem,
//                                   fontWeight: FontWeight.w300,
//                                   height: 1.2575*ffem/fem,
//                                   fontStyle: FontStyle.italic,
//                                   color: Color(0xff000000),
//                                 ),
//                                 children: [
//                                   TextSpan(
//                                     text: 'Including Taxe',
//                                     style: SafeGoogleFont (
//                                       'Segoe UI',
//                                       12*ffem,
//                                       fontWeight: FontWeight.w300,
//                                       height: 1.2575*ffem/fem,
//                                       fontStyle: FontStyle.italic,
//                                       color: Color(0xff000000),
//                                     ),
//                                   ),
//                                   TextSpan(
//                                     text: 's %',
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           Container(
//                             // autogroup5fcyTYq (W2UoN9jWoG6gAtMGTV5FCy)
//                             margin: EdgeInsets.fromLTRB(201*fem, 0*fem, 24.5*fem, 24.5*fem),
//                             width: double.infinity,
//                             child: Row(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Container(
//                                   // totalgwP (I187:22738;193:20753)
//                                   margin: EdgeInsets.fromLTRB(0*fem, 18.5*fem, 56.5*fem, 0*fem),
//                                   child: Text(
//                                     'Total:-',
//                                     style: SafeGoogleFont (
//                                       'Lucida Bright',
//                                       18*ffem,
//                                       fontWeight: FontWeight.w600,
//                                       height: 1.2575*ffem/fem,
//                                       color: Color(0xff7e132b),
//                                     ),
//                                   ),
//                                 ),
//                                 Text(
//                                   // joduJM (I187:22738;193:20752)
//                                   '67.50 JOD',
//                                   style: SafeGoogleFont (
//                                     'Segoe UI',
//                                     16*ffem,
//                                     fontWeight: FontWeight.w300,
//                                     height: 1.2575*ffem/fem,
//                                     fontStyle: FontStyle.italic,
//                                     color: Color(0xff000000),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       // autogroupb6jpJLV (W2TbZ5DxhaWKs2SDBUb6jP)
//                       margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 0*fem),
//                       width: 397*fem,
//                       height: 992*fem,
//                       child: Stack(
//                         children: [
//                           Positioned(
//                             // seatsdetails8KX (I187:22738;193:20241)
//                             left: 0*fem,
//                             top: 0*fem,
//                             child: Container(
//                               padding: EdgeInsets.fromLTRB(4*fem, 0*fem, 0*fem, 0*fem),
//                               width: 397*fem,
//                               height: 589*fem,
//                               child: Container(
//                                 // seatsdetailswGy (I187:22738;193:20242)
//                                 width: 394*fem,
//                                 height: 510*fem,
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       // seatsdetailsBx1 (I187:22738;193:20245)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 26*fem),
//                                       child: TextButton(
//                                         onPressed: () {},
//                                         style: TextButton.styleFrom (
//                                           padding: EdgeInsets.zero,
//                                         ),
//                                         child: Container(
//                                           padding: EdgeInsets.fromLTRB(136*fem, 22*fem, 24.46*fem, 22*fem),
//                                           width: double.infinity,
//                                           height: 72*fem,
//                                           decoration: BoxDecoration (
//                                             border: Border.all(color: Color(0xff707070)),
//                                             color: Color(0xffffffff),
//                                             boxShadow: [
//                                               BoxShadow(
//                                                 color: Color(0x3f414141),
//                                                 offset: Offset(0*fem, 4*fem),
//                                                 blurRadius: 2*fem,
//                                               ),
//                                             ],
//                                           ),
//                                           child: Row(
//                                             crossAxisAlignment: CrossAxisAlignment.center,
//                                             children: [
//                                               Container(
//                                                 // sxUu (I187:22738;193:20247)
//                                                 margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 84*fem, 0*fem),
//                                                 child: Text(
//                                                   'Seats Details',
//                                                   textAlign: TextAlign.center,
//                                                   style: SafeGoogleFont (
//                                                     'Lucida Bright',
//                                                     22*ffem,
//                                                     fontWeight: FontWeight.w600,
//                                                     height: 1.2575*ffem/fem,
//                                                     color: Color(0xff4b4a4a),
//                                                   ),
//                                                 ),
//                                               ),
//                                               Container(
//                                                 // arrowdownsigntonavigate9JV (I187:22738;193:20359;56:1913;1:127)
//                                                 margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.46*fem),
//                                                 width: 27.55*fem,
//                                                 height: 27.54*fem,
//                                                 child: Image.asset(
//                                                   'assets/cenima-app-user/images/arrow-down-sign-to-navigate-xrq.png',
//                                                   fit: BoxFit.cover,
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     Container(
//                                       // cinemapicVWm (I187:22738;193:20248)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 19.5*fem),
//                                       width: double.infinity,
//                                       child: Column(
//                                         crossAxisAlignment: CrossAxisAlignment.center,
//                                         children: [
//                                           Container(
//                                             // screenYV3 (I187:22738;193:20251)
//                                             margin: EdgeInsets.fromLTRB(9*fem, 0*fem, 4*fem, 3*fem),
//                                             width: double.infinity,
//                                             height: 27.5*fem,
//                                             child: Stack(
//                                               children: [
//                                                 Positioned(
//                                                   // screenPVf (I187:22738;193:20252)
//                                                   left: 171*fem,
//                                                   top: 6.5*fem,
//                                                   child: Align(
//                                                     child: SizedBox(
//                                                       width: 36*fem,
//                                                       height: 16*fem,
//                                                       child: Text(
//                                                         'Screen',
//                                                         textAlign: TextAlign.center,
//                                                         style: SafeGoogleFont (
//                                                           'Lucida Bright',
//                                                           12*ffem,
//                                                           fontWeight: FontWeight.w600,
//                                                           height: 1.2575*ffem/fem,
//                                                           color: Color(0xff777777),
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 Positioned(
//                                                   // vector5sp9 (I187:22738;193:20253)
//                                                   left: 0*fem,
//                                                   top: 0*fem,
//                                                   child: Align(
//                                                     child: SizedBox(
//                                                       width: 381*fem,
//                                                       height: 27.5*fem,
//                                                       child: Image.asset(
//                                                         'assets/cenima-app-user/images/vector-5.png',
//                                                         width: 381*fem,
//                                                         height: 27.5*fem,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                           Container(
//                                             // autogroupsyqmGrH (W2Td77UGTdZGFKHQ8fSYQM)
//                                             width: double.infinity,
//                                             height: 339*fem,
//                                             child: Row(
//                                               crossAxisAlignment: CrossAxisAlignment.center,
//                                               children: [
//                                                 Container(
//                                                   // letterssbB (I187:22738;193:20249)
//                                                   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1.93*fem, 0*fem),
//                                                   width: 24*fem,
//                                                   height: 339*fem,
//                                                   child: Image.asset(
//                                                     'assets/cenima-app-user/images/letters.png',
//                                                   ),
//                                                 ),
//                                                 Container(
//                                                   // inactiveseatsunm (I187:22738;193:20254)
//                                                   margin: EdgeInsets.fromLTRB(0*fem, 34.93*fem, 1*fem, 34*fem),
//                                                   height: double.infinity,
//                                                   child: Row(
//                                                     crossAxisAlignment: CrossAxisAlignment.center,
//                                                     children: [
//                                                       Container(
//                                                         // autogroupxepmG13 (W2UNQTA5XQzeb9S1mExEpm)
//                                                         padding: EdgeInsets.fromLTRB(0*fem, 30*fem, 7.93*fem, 33*fem),
//                                                         height: double.infinity,
//                                                         child: Row(
//                                                           crossAxisAlignment: CrossAxisAlignment.start,
//                                                           children: [
//                                                             Container(
//                                                               // armchair28d (I187:22738;193:20323;18:287)
//                                                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0*fem),
//                                                               width: 19*fem,
//                                                               height: 19*fem,
//                                                               child: Image.asset(
//                                                                 'assets/cenima-app-user/images/armchair-V1X.png',
//                                                                 fit: BoxFit.cover,
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // autogroups3bkQgu (W2ThVQLDpbpNfkDyaqs3BK)
//                                                               width: 19.07*fem,
//                                                               height: double.infinity,
//                                                               child: Column(
//                                                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                                                 children: [
//                                                                   Container(
//                                                                     // autogroupkrez3E5 (W2Tjk1FGn8Um16RZ81krEZ)
//                                                                     padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
//                                                                     width: double.infinity,
//                                                                     height: 155*fem,
//                                                                     child: Column(
//                                                                       crossAxisAlignment: CrossAxisAlignment.center,
//                                                                       children: [
//                                                                         Container(
//                                                                           // armchairymw (I187:22738;193:20322;18:287)
//                                                                           margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.07*fem, 70*fem),
//                                                                           width: 19*fem,
//                                                                           height: 19*fem,
//                                                                           child: Image.asset(
//                                                                             'assets/cenima-app-user/images/armchair-A6Z.png',
//                                                                             fit: BoxFit.cover,
//                                                                           ),
//                                                                         ),
//                                                                         Container(
//                                                                           // armchairPKs (I187:22738;193:20295;18:287)
//                                                                           margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.07*fem, 14*fem),
//                                                                           width: 19*fem,
//                                                                           height: 19*fem,
//                                                                           child: Image.asset(
//                                                                             'assets/cenima-app-user/images/armchair-GFF.png',
//                                                                             fit: BoxFit.cover,
//                                                                           ),
//                                                                         ),
//                                                                         Container(
//                                                                           // armchairpRB (I187:22738;193:20294;18:287)
//                                                                           margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.07*fem, 0*fem),
//                                                                           width: 19*fem,
//                                                                           height: 19*fem,
//                                                                           child: Image.asset(
//                                                                             'assets/cenima-app-user/images/armchair-7HX.png',
//                                                                             fit: BoxFit.cover,
//                                                                           ),
//                                                                         ),
//                                                                       ],
//                                                                     ),
//                                                                   ),
//                                                                   Container(
//                                                                     // autogroupprcdzys (W2Tj6SVXoB1tQu6umcprCd)
//                                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
//                                                                     width: double.infinity,
//                                                                     child: Center(
//                                                                       // armchairGRb (I187:22738;193:20293;18:287)
//                                                                       child: SizedBox(
//                                                                         width: 19*fem,
//                                                                         height: 19*fem,
//                                                                         child: Image.asset(
//                                                                           'assets/cenima-app-user/images/armchair-tkD.png',
//                                                                           fit: BoxFit.cover,
//                                                                         ),
//                                                                       ),
//                                                                     ),
//                                                                   ),
//                                                                   Container(
//                                                                     // armchair27h7 (I187:22738;193:20256;18:193)
//                                                                     margin: EdgeInsets.fromLTRB(0.07*fem, 0*fem, 0*fem, 0*fem),
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-2-JNZ.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ],
//                                                         ),
//                                                       ),
//                                                       Container(
//                                                         // autogroupszq7trH (W2TkrDuGZvp5TQEbtXSZq7)
//                                                         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.93*fem, 0*fem),
//                                                         width: 19.07*fem,
//                                                         height: double.infinity,
//                                                         child: Column(
//                                                           crossAxisAlignment: CrossAxisAlignment.center,
//                                                           children: [
//                                                             Container(
//                                                               // autogroupzazrJf7 (W2ToQpJLpaMuwvceqDzazR)
//                                                               padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
//                                                               width: double.infinity,
//                                                               height: 185*fem,
//                                                               child: Column(
//                                                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                                                 children: [
//                                                                   Container(
//                                                                     // armchairXXs (I187:22738;193:20321;18:287)
//                                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.07*fem, 11*fem),
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-4VB.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                   Container(
//                                                                     // armchairhqf (I187:22738;193:20320;18:287)
//                                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.07*fem, 43*fem),
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-o2V.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                   Container(
//                                                                     // armchairk3F (I187:22738;193:20299;18:287)
//                                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.07*fem, 8*fem),
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-RMX.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                   Container(
//                                                                     // armchairyRo (I187:22738;193:20298;18:287)
//                                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.07*fem, 14*fem),
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-iv1.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                   Container(
//                                                                     // armchairZeu (I187:22738;193:20297;18:287)
//                                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.07*fem, 0*fem),
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-PHX.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // autogroupq7xrQ9j (W2TnsR2zqaRZGHF9o6Q7xR)
//                                                               width: double.infinity,
//                                                               child: Center(
//                                                                 // armchairiAR (I187:22738;193:20296;18:287)
//                                                                 child: SizedBox(
//                                                                   width: 19*fem,
//                                                                   height: 19*fem,
//                                                                   child: Image.asset(
//                                                                     'assets/cenima-app-user/images/armchair-49T.png',
//                                                                     fit: BoxFit.cover,
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // autogroupzleqm8h (W2Tp9Ya9Pyy7KiYXRMZLEq)
//                                                               padding: EdgeInsets.fromLTRB(0.07*fem, 14*fem, 0*fem, 0*fem),
//                                                               width: double.infinity,
//                                                               child: Column(
//                                                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                                                 children: [
//                                                                   Container(
//                                                                     // armchair2jUq (I187:22738;193:20258;18:193)
//                                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-2-dgH.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                   Container(
//                                                                     // armchair2mAd (I187:22738;193:20255;18:193)
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-2-vPP.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ],
//                                                         ),
//                                                       ),
//                                                       Container(
//                                                         // autogroupw7ktcBF (W2TqUvWt2HWHXFi83qW7KT)
//                                                         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.93*fem, 0*fem),
//                                                         width: 19.07*fem,
//                                                         height: double.infinity,
//                                                         child: Column(
//                                                           crossAxisAlignment: CrossAxisAlignment.center,
//                                                           children: [
//                                                             Container(
//                                                               // autogroupvjbja1b (W2TsirnNi9FD7JM6CevjBj)
//                                                               padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 43*fem),
//                                                               width: double.infinity,
//                                                               height: 92*fem,
//                                                               child: Column(
//                                                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                                                 children: [
//                                                                   Container(
//                                                                     // armchaircU5 (I187:22738;193:20319;18:287)
//                                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.07*fem, 11*fem),
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-gUd.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                   Container(
//                                                                     // armchairr7X (I187:22738;193:20318;18:287)
//                                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.07*fem, 0*fem),
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-SEZ.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // autogroupqjxbe3P (W2TrjtRJcGSHGumvkUqjXB)
//                                                               width: double.infinity,
//                                                               child: Center(
//                                                                 // armchairZAM (I187:22738;193:20327;18:287)
//                                                                 child: SizedBox(
//                                                                   width: 19*fem,
//                                                                   height: 19*fem,
//                                                                   child: Image.asset(
//                                                                     'assets/cenima-app-user/images/armchair-Qey.png',
//                                                                     fit: BoxFit.cover,
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // autogroupjdrxcPX (W2TtD1e8dFBweqrNEZjdRX)
//                                                               padding: EdgeInsets.fromLTRB(0*fem, 7.93*fem, 0*fem, 14*fem),
//                                                               width: double.infinity,
//                                                               height: 73.93*fem,
//                                                               child: Column(
//                                                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                                                 children: [
//                                                                   Container(
//                                                                     // armchairSdT (I187:22738;193:20326;18:287)
//                                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.07*fem, 14*fem),
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-W8M.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                   Container(
//                                                                     // armchairDGq (I187:22738;193:20325;18:287)
//                                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.07*fem, 0*fem),
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-ZxH.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // autogroupv5jt3mf (W2Ts9YQZCbA9nAEaw1V5jT)
//                                                               width: double.infinity,
//                                                               child: Center(
//                                                                 // armchairZk1 (I187:22738;193:20324;18:287)
//                                                                 child: SizedBox(
//                                                                   width: 19*fem,
//                                                                   height: 19*fem,
//                                                                   child: Image.asset(
//                                                                     'assets/cenima-app-user/images/armchair-jQ1.png',
//                                                                     fit: BoxFit.cover,
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // autogroupnz9bRnD (W2TtbqKSNykzDxrmBenz9b)
//                                                               padding: EdgeInsets.fromLTRB(0.07*fem, 14*fem, 0*fem, 0*fem),
//                                                               width: double.infinity,
//                                                               child: Column(
//                                                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                                                 children: [
//                                                                   Container(
//                                                                     // armchair22GD (I187:22738;193:20260;18:193)
//                                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-2-c6H.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                   Container(
//                                                                     // armchair2rFF (I187:22738;193:20283;18:193)
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-2-WNH.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ],
//                                                         ),
//                                                       ),
//                                                       Container(
//                                                         // autogroupxkykVZ7 (W2TuwdR9RaNaPZkVRrXkyK)
//                                                         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.93*fem, 0*fem),
//                                                         width: 19.07*fem,
//                                                         height: double.infinity,
//                                                         child: Column(
//                                                           crossAxisAlignment: CrossAxisAlignment.center,
//                                                           children: [
//                                                             Container(
//                                                               // autogroupxlehSsf (W2TwcAUdKRQm44L8PUxLEh)
//                                                               padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
//                                                               width: double.infinity,
//                                                               height: 185*fem,
//                                                               child: Column(
//                                                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                                                 children: [
//                                                                   Container(
//                                                                     // armchair48M (I187:22738;193:20317;18:287)
//                                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.07*fem, 11*fem),
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-X7K.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                   Container(
//                                                                     // armchairVDf (I187:22738;193:20316;18:287)
//                                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.07*fem, 43*fem),
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-5hF.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                   Container(
//                                                                     // armchairXRF (I187:22738;193:20331;18:287)
//                                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.07*fem, 8*fem),
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-BBj.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                   Container(
//                                                                     // armchairJKX (I187:22738;193:20330;18:287)
//                                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.07*fem, 14*fem),
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-qpH.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                   Container(
//                                                                     // armchairjQq (I187:22738;193:20329;18:287)
//                                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.07*fem, 0*fem),
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-sYh.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // autogroupjrs1kKw (W2Tw61gCbJheGc92CWjrS1)
//                                                               width: double.infinity,
//                                                               child: Center(
//                                                                 // armchairCSq (I187:22738;193:20328;18:287)
//                                                                 child: SizedBox(
//                                                                   width: 19*fem,
//                                                                   height: 19*fem,
//                                                                   child: Image.asset(
//                                                                     'assets/cenima-app-user/images/armchair-oHo.png',
//                                                                     fit: BoxFit.cover,
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // autogroupqhbsepd (W2TxLj63KunbF2NM8XQHBs)
//                                                               padding: EdgeInsets.fromLTRB(0.07*fem, 14*fem, 0*fem, 0*fem),
//                                                               width: double.infinity,
//                                                               child: Column(
//                                                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                                                 children: [
//                                                                   Container(
//                                                                     // armchair2uEm (I187:22738;193:20263;18:193)
//                                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-2-gu3.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                   Container(
//                                                                     // armchair2kFP (I187:22738;193:20284;18:193)
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-2-Xam.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ],
//                                                         ),
//                                                       ),
//                                                       Container(
//                                                         // autogroup2gffmAV (W2TydXGk9zFc3mEL992gfF)
//                                                         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.62*fem, 0*fem),
//                                                         width: 19.38*fem,
//                                                         height: double.infinity,
//                                                         child: Column(
//                                                           crossAxisAlignment: CrossAxisAlignment.center,
//                                                           children: [
//                                                             Container(
//                                                               // armchairxVs (I187:22738;193:20315;18:287)
//                                                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.38*fem, 11*fem),
//                                                               width: 19*fem,
//                                                               height: 19*fem,
//                                                               child: Image.asset(
//                                                                 'assets/cenima-app-user/images/armchair-2Bo.png',
//                                                                 fit: BoxFit.cover,
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // armchairb33 (I187:22738;193:20314;18:287)
//                                                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.38*fem, 44.07*fem),
//                                                               width: 19*fem,
//                                                               height: 19*fem,
//                                                               child: Image.asset(
//                                                                 'assets/cenima-app-user/images/armchair-3TK.png',
//                                                                 fit: BoxFit.cover,
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // wheelchairAVT (I187:22738;193:20356)
//                                                               margin: EdgeInsets.fromLTRB(0.07*fem, 0*fem, 0*fem, 5.93*fem),
//                                                               width: 19.31*fem,
//                                                               height: 20*fem,
//                                                               child: Image.asset(
//                                                                 'assets/cenima-app-user/images/wheelchair.png',
//                                                                 fit: BoxFit.cover,
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // armchairjws (I187:22738;193:20334;18:287)
//                                                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.38*fem, 14*fem),
//                                                               width: 19*fem,
//                                                               height: 19*fem,
//                                                               child: Image.asset(
//                                                                 'assets/cenima-app-user/images/armchair-bFK.png',
//                                                                 fit: BoxFit.cover,
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // armchairX73 (I187:22738;193:20333;18:287)
//                                                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.38*fem, 14*fem),
//                                                               width: 19*fem,
//                                                               height: 19*fem,
//                                                               child: Image.asset(
//                                                                 'assets/cenima-app-user/images/armchair-1Q9.png',
//                                                                 fit: BoxFit.cover,
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // autogroupwpwoutH (W2TzhKq6iUk8J6dR8sWpwo)
//                                                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.31*fem, 14*fem),
//                                                               width: double.infinity,
//                                                               child: Center(
//                                                                 // armchairBL1 (I187:22738;193:20332;18:287)
//                                                                 child: SizedBox(
//                                                                   width: 19*fem,
//                                                                   height: 19*fem,
//                                                                   child: Image.asset(
//                                                                     'assets/cenima-app-user/images/armchair-2ys.png',
//                                                                     fit: BoxFit.cover,
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // armchair2ZbT (I187:22738;193:20265;18:193)
//                                                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.24*fem, 14*fem),
//                                                               width: 19*fem,
//                                                               height: 19*fem,
//                                                               child: Image.asset(
//                                                                 'assets/cenima-app-user/images/armchair-2-SP7.png',
//                                                                 fit: BoxFit.cover,
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // armchair2Zzm (I187:22738;193:20285;18:193)
//                                                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.24*fem, 0*fem),
//                                                               width: 19*fem,
//                                                               height: 19*fem,
//                                                               child: Image.asset(
//                                                                 'assets/cenima-app-user/images/armchair-2-Yz1.png',
//                                                                 fit: BoxFit.cover,
//                                                               ),
//                                                             ),
//                                                           ],
//                                                         ),
//                                                       ),
//                                                       Container(
//                                                         // autogroupdqp3hjb (W2U1f3jFZUKpEJ2BjtDqP3)
//                                                         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.62*fem, 0*fem),
//                                                         width: 19.38*fem,
//                                                         height: double.infinity,
//                                                         child: Column(
//                                                           crossAxisAlignment: CrossAxisAlignment.center,
//                                                           children: [
//                                                             Container(
//                                                               // armchairg5j (I187:22738;193:20313;18:287)
//                                                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.38*fem, 11*fem),
//                                                               width: 19*fem,
//                                                               height: 19*fem,
//                                                               child: Image.asset(
//                                                                 'assets/cenima-app-user/images/armchair-r1b.png',
//                                                                 fit: BoxFit.cover,
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // armchair5Nm (I187:22738;193:20312;18:287)
//                                                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.38*fem, 44.07*fem),
//                                                               width: 19*fem,
//                                                               height: 19*fem,
//                                                               child: Image.asset(
//                                                                 'assets/cenima-app-user/images/armchair-Pbs.png',
//                                                                 fit: BoxFit.cover,
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // wheelchairScd (I187:22738;193:20357)
//                                                               margin: EdgeInsets.fromLTRB(0.07*fem, 0*fem, 0*fem, 5.93*fem),
//                                                               width: 19.31*fem,
//                                                               height: 20*fem,
//                                                               child: Image.asset(
//                                                                 'assets/cenima-app-user/images/wheelchair-NPP.png',
//                                                                 fit: BoxFit.cover,
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // armchairG5s (I187:22738;193:20337;18:287)
//                                                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.38*fem, 14*fem),
//                                                               width: 19*fem,
//                                                               height: 19*fem,
//                                                               child: Image.asset(
//                                                                 'assets/cenima-app-user/images/armchair-MGy.png',
//                                                                 fit: BoxFit.cover,
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // armchairSeZ (I187:22738;193:20336;18:287)
//                                                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.38*fem, 14*fem),
//                                                               width: 19*fem,
//                                                               height: 19*fem,
//                                                               child: Image.asset(
//                                                                 'assets/cenima-app-user/images/armchair-MGy-JT7.png',
//                                                                 fit: BoxFit.cover,
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // autogroupdd5wrTP (W2U2ebugeZSXDaD8esDd5w)
//                                                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.31*fem, 14*fem),
//                                                               width: double.infinity,
//                                                               child: Center(
//                                                                 // armchair6sX (I187:22738;193:20335;18:287)
//                                                                 child: SizedBox(
//                                                                   width: 19*fem,
//                                                                   height: 19*fem,
//                                                                   child: Image.asset(
//                                                                     'assets/cenima-app-user/images/armchair-GJq.png',
//                                                                     fit: BoxFit.cover,
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // armchair2YzR (I187:22738;193:20267;18:193)
//                                                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.24*fem, 14*fem),
//                                                               width: 19*fem,
//                                                               height: 19*fem,
//                                                               child: Image.asset(
//                                                                 'assets/cenima-app-user/images/armchair-2-maV.png',
//                                                                 fit: BoxFit.cover,
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // armchair2XLZ (I187:22738;193:20286;18:193)
//                                                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.24*fem, 0*fem),
//                                                               width: 19*fem,
//                                                               height: 19*fem,
//                                                               child: Image.asset(
//                                                                 'assets/cenima-app-user/images/armchair-2-rUD.png',
//                                                                 fit: BoxFit.cover,
//                                                               ),
//                                                             ),
//                                                           ],
//                                                         ),
//                                                       ),
//                                                       Container(
//                                                         // autogroupaedt9cq (W2U3bppfnoL7bHvwicaEdT)
//                                                         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.62*fem, 0*fem),
//                                                         width: 19.38*fem,
//                                                         height: double.infinity,
//                                                         child: Column(
//                                                           crossAxisAlignment: CrossAxisAlignment.center,
//                                                           children: [
//                                                             Container(
//                                                               // armchairMD7 (I187:22738;193:20311;18:287)
//                                                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.38*fem, 11*fem),
//                                                               width: 19*fem,
//                                                               height: 19*fem,
//                                                               child: Image.asset(
//                                                                 'assets/cenima-app-user/images/armchair-749.png',
//                                                                 fit: BoxFit.cover,
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // armchair87P (I187:22738;193:20310;18:287)
//                                                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.38*fem, 44.07*fem),
//                                                               width: 19*fem,
//                                                               height: 19*fem,
//                                                               child: Image.asset(
//                                                                 'assets/cenima-app-user/images/armchair-Mv5.png',
//                                                                 fit: BoxFit.cover,
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // wheelchairYB7 (I187:22738;193:20358)
//                                                               margin: EdgeInsets.fromLTRB(0.07*fem, 0*fem, 0*fem, 5.93*fem),
//                                                               width: 19.31*fem,
//                                                               height: 20*fem,
//                                                               child: Image.asset(
//                                                                 'assets/cenima-app-user/images/wheelchair-qth.png',
//                                                                 fit: BoxFit.cover,
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // armchairxVj (I187:22738;193:20340;18:287)
//                                                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.38*fem, 14*fem),
//                                                               width: 19*fem,
//                                                               height: 19*fem,
//                                                               child: Image.asset(
//                                                                 'assets/cenima-app-user/images/armchair-3zm.png',
//                                                                 fit: BoxFit.cover,
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // armchairvay (I187:22738;193:20339;18:287)
//                                                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.38*fem, 14*fem),
//                                                               width: 19*fem,
//                                                               height: 19*fem,
//                                                               child: Image.asset(
//                                                                 'assets/cenima-app-user/images/armchair-ajf.png',
//                                                                 fit: BoxFit.cover,
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // autogroupxsttwW5 (W2U4WxxnqZqe8h26hkxsTT)
//                                                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.31*fem, 14*fem),
//                                                               width: double.infinity,
//                                                               child: Center(
//                                                                 // armchairooB (I187:22738;193:20338;18:287)
//                                                                 child: SizedBox(
//                                                                   width: 19*fem,
//                                                                   height: 19*fem,
//                                                                   child: Image.asset(
//                                                                     'assets/cenima-app-user/images/armchair-U1T.png',
//                                                                     fit: BoxFit.cover,
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // armchair2EtV (I187:22738;193:20269;18:193)
//                                                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.24*fem, 14*fem),
//                                                               width: 19*fem,
//                                                               height: 19*fem,
//                                                               child: Image.asset(
//                                                                 'assets/cenima-app-user/images/armchair-2-DYZ.png',
//                                                                 fit: BoxFit.cover,
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // armchair22ZT (I187:22738;193:20287;18:193)
//                                                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.24*fem, 0*fem),
//                                                               width: 19*fem,
//                                                               height: 19*fem,
//                                                               child: Image.asset(
//                                                                 'assets/cenima-app-user/images/armchair-2-9p1.png',
//                                                                 fit: BoxFit.cover,
//                                                               ),
//                                                             ),
//                                                           ],
//                                                         ),
//                                                       ),
//                                                       Container(
//                                                         // autogroupx4jyTPs (W2U5WbyRD7a2iP9sYHX4Jy)
//                                                         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.93*fem, 0*fem),
//                                                         width: 19.07*fem,
//                                                         height: double.infinity,
//                                                         child: Column(
//                                                           crossAxisAlignment: CrossAxisAlignment.center,
//                                                           children: [
//                                                             Container(
//                                                               // autogroupyhtjrwo (W2U7iTU3oVvtU7ABcVyhTj)
//                                                               padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 43*fem),
//                                                               width: double.infinity,
//                                                               height: 92*fem,
//                                                               child: Column(
//                                                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                                                 children: [
//                                                                   Container(
//                                                                     // armchairrKX (I187:22738;193:20309;18:287)
//                                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.07*fem, 11*fem),
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                   Container(
//                                                                     // armchairskR (I187:22738;193:20308;18:287)
//                                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.07*fem, 0*fem),
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-JG5.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // autogroupff5o7Ps (W2U6V5MKcEgrzJ45TCFf5o)
//                                                               width: double.infinity,
//                                                               child: Center(
//                                                                 // armchairpp5 (I187:22738;193:20344;18:287)
//                                                                 child: SizedBox(
//                                                                   width: 19*fem,
//                                                                   height: 19*fem,
//                                                                   child: Image.asset(
//                                                                     'assets/cenima-app-user/images/armchair-KcZ.png',
//                                                                     fit: BoxFit.cover,
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // autogrouphpgmEso (W2U8AMtZ4DGBzW99iihpgm)
//                                                               padding: EdgeInsets.fromLTRB(0*fem, 7.93*fem, 0*fem, 14*fem),
//                                                               width: double.infinity,
//                                                               height: 73.93*fem,
//                                                               child: Column(
//                                                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                                                 children: [
//                                                                   Container(
//                                                                     // armchairUGM (I187:22738;193:20343;18:287)
//                                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.07*fem, 14*fem),
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-z7w.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                   Container(
//                                                                     // armchairWiq (I187:22738;193:20342;18:287)
//                                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.07*fem, 0*fem),
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-CZ3.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // autogroup2qy1uW5 (W2U7AZDY7kJSDz7j372qY1)
//                                                               width: double.infinity,
//                                                               child: Center(
//                                                                 // armchair24u (I187:22738;193:20341;18:287)
//                                                                 child: SizedBox(
//                                                                   width: 19*fem,
//                                                                   height: 19*fem,
//                                                                   child: Image.asset(
//                                                                     'assets/cenima-app-user/images/armchair-sWm.png',
//                                                                     fit: BoxFit.cover,
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // autogroupwbl9UBo (W2U8Y1w8qXDgFquykBwbL9)
//                                                               padding: EdgeInsets.fromLTRB(0.07*fem, 14*fem, 0*fem, 0*fem),
//                                                               width: double.infinity,
//                                                               child: Column(
//                                                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                                                 children: [
//                                                                   Container(
//                                                                     // armchair2XA5 (I187:22738;193:20271;18:193)
//                                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-2-r8d.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                   Container(
//                                                                     // armchair2iEZ (I187:22738;193:20288;18:193)
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-2-cwP.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ],
//                                                         ),
//                                                       ),
//                                                       Container(
//                                                         // autogroupemjvyRP (W2U9sts3AaSx1rkXuwEmJV)
//                                                         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.93*fem, 0*fem),
//                                                         width: 19.07*fem,
//                                                         height: double.infinity,
//                                                         child: Column(
//                                                           crossAxisAlignment: CrossAxisAlignment.center,
//                                                           children: [
//                                                             Container(
//                                                               // autogrouptoimC3F (W2UBkqjWLo9r5sBHRdtoiM)
//                                                               padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 43*fem),
//                                                               width: double.infinity,
//                                                               height: 92*fem,
//                                                               child: Column(
//                                                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                                                 children: [
//                                                                   Container(
//                                                                     // armchairA8V (I187:22738;193:20307;18:287)
//                                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.07*fem, 11*fem),
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-ApV.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                   Container(
//                                                                     // armchairzdK (I187:22738;193:20306;18:287)
//                                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.07*fem, 0*fem),
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-TbK.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // autogroupv1vf2K7 (W2UAn7s26JBy2iSbk6V1Vf)
//                                                               width: double.infinity,
//                                                               child: Center(
//                                                                 // armchair7bT (I187:22738;193:20348;18:287)
//                                                                 child: SizedBox(
//                                                                   width: 19*fem,
//                                                                   height: 19*fem,
//                                                                   child: Image.asset(
//                                                                     'assets/cenima-app-user/images/armchair-NtD.png',
//                                                                     fit: BoxFit.cover,
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // autogroup4xnm7js (W2UCCfKpK3sU1rDRcK4Xnm)
//                                                               padding: EdgeInsets.fromLTRB(0*fem, 7.93*fem, 0*fem, 14*fem),
//                                                               width: double.infinity,
//                                                               height: 73.93*fem,
//                                                               child: Column(
//                                                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                                                 children: [
//                                                                   Container(
//                                                                     // armchair9gZ (I187:22738;193:20347;18:287)
//                                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.07*fem, 14*fem),
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-oky.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                   Container(
//                                                                     // armchairBNM (I187:22738;193:20346;18:287)
//                                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.07*fem, 0*fem),
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-vzq.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // autogroupr8ybNhj (W2UBDc8YviSrb3hSEbR8yb)
//                                                               width: double.infinity,
//                                                               child: Center(
//                                                                 // armchairUkm (I187:22738;193:20345;18:287)
//                                                                 child: SizedBox(
//                                                                   width: 19*fem,
//                                                                   height: 19*fem,
//                                                                   child: Image.asset(
//                                                                     'assets/cenima-app-user/images/armchair-XAD.png',
//                                                                     fit: BoxFit.cover,
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // autogroup2gzbjwb (W2UCc4pV3zkHjrqc2D2gZB)
//                                                               padding: EdgeInsets.fromLTRB(0.07*fem, 14*fem, 0*fem, 0*fem),
//                                                               width: double.infinity,
//                                                               child: Column(
//                                                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                                                 children: [
//                                                                   Container(
//                                                                     // armchair2C4V (I187:22738;193:20274;18:193)
//                                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-2.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                   Container(
//                                                                     // armchair2AfX (I187:22738;193:20289;18:193)
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-2-mp9.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ],
//                                                         ),
//                                                       ),
//                                                       Container(
//                                                         // autogroupvatxdZ7 (W2UE5C3K4yVx7nv3WHvaTX)
//                                                         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.93*fem, 0*fem),
//                                                         width: 19.07*fem,
//                                                         height: double.infinity,
//                                                         child: Column(
//                                                           crossAxisAlignment: CrossAxisAlignment.center,
//                                                           children: [
//                                                             Container(
//                                                               // autogroup4f1fqQH (W2UFuyJisGD6m4mK1r4F1F)
//                                                               padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 43*fem),
//                                                               width: double.infinity,
//                                                               height: 92*fem,
//                                                               child: Column(
//                                                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                                                 children: [
//                                                                   Container(
//                                                                     // armchairDQq (I187:22738;193:20305;18:287)
//                                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.07*fem, 11*fem),
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-7Zf.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                   Container(
//                                                                     // armchairSHb (I187:22738;193:20304;18:287)
//                                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.07*fem, 0*fem),
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-f2M.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // autogroupmea1UVB (W2UExFQa2GdQpsNYQqMEa1)
//                                                               width: double.infinity,
//                                                               child: Center(
//                                                                 // armchairLnH (I187:22738;193:20352;18:287)
//                                                                 child: SizedBox(
//                                                                   width: 19*fem,
//                                                                   height: 19*fem,
//                                                                   child: Image.asset(
//                                                                     'assets/cenima-app-user/images/armchair-cjo.png',
//                                                                     fit: BoxFit.cover,
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // autogroupamtb1fT (W2UGP8C9NrmeBevfyEAMTb)
//                                                               padding: EdgeInsets.fromLTRB(0*fem, 7.93*fem, 0*fem, 14*fem),
//                                                               width: double.infinity,
//                                                               height: 73.93*fem,
//                                                               child: Column(
//                                                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                                                 children: [
//                                                                   Container(
//                                                                     // armchairRjB (I187:22738;193:20351;18:287)
//                                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.07*fem, 14*fem),
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-m6V.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                   Container(
//                                                                     // armchairTvm (I187:22738;193:20350;18:287)
//                                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.07*fem, 0*fem),
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-QoP.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // autogrouphnzj26h (W2UFNuNA26jUT5B7fthNZj)
//                                                               width: double.infinity,
//                                                               child: Center(
//                                                                 // armchair89j (I187:22738;193:20349;18:287)
//                                                                 child: SizedBox(
//                                                                   width: 19*fem,
//                                                                   height: 19*fem,
//                                                                   child: Image.asset(
//                                                                     'assets/cenima-app-user/images/armchair-nPF.png',
//                                                                     fit: BoxFit.cover,
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // autogroupwvtkBdo (W2UGon9jNgshorjFEHWVTK)
//                                                               padding: EdgeInsets.fromLTRB(0.07*fem, 14*fem, 0*fem, 0*fem),
//                                                               width: double.infinity,
//                                                               child: Column(
//                                                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                                                 children: [
//                                                                   Container(
//                                                                     // armchair22eR (I187:22738;193:20277;18:193)
//                                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-2-Jso.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                   Container(
//                                                                     // armchair2KfT (I187:22738;193:20290;18:193)
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-2-MyF.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ],
//                                                         ),
//                                                       ),
//                                                       Container(
//                                                         // autogrouprr6qBBs (W2UJBA38p1BGFJag1prr6q)
//                                                         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.93*fem, 0*fem),
//                                                         width: 19.07*fem,
//                                                         height: double.infinity,
//                                                         child: Column(
//                                                           crossAxisAlignment: CrossAxisAlignment.center,
//                                                           children: [
//                                                             Container(
//                                                               // autogroup71suC6y (W2UKrrjLgGq1DaPsu571Su)
//                                                               padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
//                                                               width: double.infinity,
//                                                               height: 152*fem,
//                                                               child: Column(
//                                                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                                                 children: [
//                                                                   Container(
//                                                                     // armchairN9s (I187:22738;193:20303;18:287)
//                                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.07*fem, 11*fem),
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-tJ9.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                   Container(
//                                                                     // armchairboK (I187:22738;193:20302;18:287)
//                                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.07*fem, 70*fem),
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-iSh.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                   Container(
//                                                                     // armchairpvy (I187:22738;193:20355;18:287)
//                                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.07*fem, 0*fem),
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-vX7.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // autogroup19tzm7T (W2UJyYsVsbrVjG6uDu19tZ)
//                                                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13.93*fem),
//                                                               width: double.infinity,
//                                                               child: Center(
//                                                                 // armchairBws (I187:22738;193:20354;18:287)
//                                                                 child: SizedBox(
//                                                                   width: 19*fem,
//                                                                   height: 19*fem,
//                                                                   child: Image.asset(
//                                                                     'assets/cenima-app-user/images/armchair-9iV.png',
//                                                                     fit: BoxFit.cover,
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // autogroupyjey2xV (W2UKNxNAcYjKTGj5dnyJey)
//                                                               width: double.infinity,
//                                                               child: Center(
//                                                                 // armchairkNh (I187:22738;193:20353;18:287)
//                                                                 child: SizedBox(
//                                                                   width: 19*fem,
//                                                                   height: 19*fem,
//                                                                   child: Image.asset(
//                                                                     'assets/cenima-app-user/images/armchair-aUd.png',
//                                                                     fit: BoxFit.cover,
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // autogrouprj4d8u3 (W2ULNLtD8icfFj2NhgrJ4d)
//                                                               padding: EdgeInsets.fromLTRB(0.07*fem, 14*fem, 0*fem, 0*fem),
//                                                               width: double.infinity,
//                                                               child: Column(
//                                                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                                                 children: [
//                                                                   Container(
//                                                                     // armchair2aW9 (I187:22738;193:20280;18:193)
//                                                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-2-xCV.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                   Container(
//                                                                     // armchair2oth (I187:22738;193:20291;18:193)
//                                                                     width: 19*fem,
//                                                                     height: 19*fem,
//                                                                     child: Image.asset(
//                                                                       'assets/cenima-app-user/images/armchair-2-i29.png',
//                                                                       fit: BoxFit.cover,
//                                                                     ),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ],
//                                                         ),
//                                                       ),
//                                                       Container(
//                                                         // autogroupaksf5rD (W2UMZj4GWy6JVdSehwAksf)
//                                                         height: double.infinity,
//                                                         child: Column(
//                                                           crossAxisAlignment: CrossAxisAlignment.center,
//                                                           children: [
//                                                             Container(
//                                                               // armchair4Lm (I187:22738;193:20301;18:287)
//                                                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.07*fem, 11*fem),
//                                                               width: 19*fem,
//                                                               height: 19*fem,
//                                                               child: Image.asset(
//                                                                 'assets/cenima-app-user/images/armchair-odw.png',
//                                                                 fit: BoxFit.cover,
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // armchairrGd (I187:22738;193:20300;18:287)
//                                                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.07*fem, 202.07*fem),
//                                                               width: 19*fem,
//                                                               height: 19*fem,
//                                                               child: Image.asset(
//                                                                 'assets/cenima-app-user/images/armchair-BVw.png',
//                                                                 fit: BoxFit.cover,
//                                                               ),
//                                                             ),
//                                                             Container(
//                                                               // armchair2h2M (I187:22738;193:20292;18:193)
//                                                               margin: EdgeInsets.fromLTRB(0.07*fem, 0*fem, 0*fem, 0*fem),
//                                                               width: 19*fem,
//                                                               height: 19*fem,
//                                                               child: Image.asset(
//                                                                 'assets/cenima-app-user/images/armchair-2-yU9.png',
//                                                                 fit: BoxFit.cover,
//                                                               ),
//                                                             ),
//                                                           ],
//                                                         ),
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 ),
//                                                 Container(
//                                                   // lettersGjf (I187:22738;193:20250)
//                                                   width: 24*fem,
//                                                   height: 339*fem,
//                                                   child: Image.asset(
//                                                     'assets/cenima-app-user/images/letters-YsP.png',
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Container(
//                                       // autogrouprmdfjt9 (W2Tc6iytXxHjKueBzErmDF)
//                                       margin: EdgeInsets.fromLTRB(56.5*fem, 0*fem, 73*fem, 0*fem),
//                                       width: double.infinity,
//                                       child: Row(
//                                         crossAxisAlignment: CrossAxisAlignment.center,
//                                         children: [
//                                           Container(
//                                             // selectedseatsNRK (I187:22738;193:20243)
//                                             margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 68.5*fem, 0*fem),
//                                             child: Text(
//                                               'Seats NO. :-',
//                                               textAlign: TextAlign.center,
//                                               style: SafeGoogleFont (
//                                                 'Lucida Bright',
//                                                 18*ffem,
//                                                 fontWeight: FontWeight.w600,
//                                                 height: 1.2575*ffem/fem,
//                                                 color: Color(0xff777777),
//                                               ),
//                                             ),
//                                           ),
//                                           Text(
//                                             // a1h24xM (I187:22738;193:20244)
//                                             'A1, A2, H1, H2',
//                                             textAlign: TextAlign.center,
//                                             style: SafeGoogleFont (
//                                               'Lucida Bright',
//                                               18*ffem,
//                                               fontWeight: FontWeight.w600,
//                                               height: 1.2575*ffem/fem,
//                                               color: Color(0xffff2153),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Positioned(
//                             // seatsdetailsTND (I187:22738;193:19971)
//                             left: 2*fem,
//                             top: 527*fem,
//                             child: Container(
//                               width: 393*fem,
//                               height: 465*fem,
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Container(
//                                     // autogroupqh174N1 (W2UnKWotDCDiELBkPNQh17)
//                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
//                                     padding: EdgeInsets.fromLTRB(156*fem, 22*fem, 24.46*fem, 22*fem),
//                                     width: double.infinity,
//                                     height: 72*fem,
//                                     decoration: BoxDecoration (
//                                       border: Border.all(color: Color(0xff707070)),
//                                       color: Color(0xffffffff),
//                                       boxShadow: [
//                                         BoxShadow(
//                                           color: Color(0x3f414141),
//                                           offset: Offset(0*fem, 4*fem),
//                                           blurRadius: 2*fem,
//                                         ),
//                                       ],
//                                     ),
//                                     child: Row(
//                                       crossAxisAlignment: CrossAxisAlignment.center,
//                                       children: [
//                                         Container(
//                                           // s4Pw (I187:22738;193:19973)
//                                           margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 104*fem, 0*fem),
//                                           child: Text(
//                                             'QR Code',
//                                             textAlign: TextAlign.center,
//                                             style: SafeGoogleFont (
//                                               'Lucida Bright',
//                                               22*ffem,
//                                               fontWeight: FontWeight.w600,
//                                               height: 1.2575*ffem/fem,
//                                               color: Color(0xff4b4a4a),
//                                             ),
//                                           ),
//                                         ),
//                                         Container(
//                                           // arrowdownsigntonavigaterKo (I187:22738;193:19975;56:1913;1:127)
//                                           margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.46*fem),
//                                           width: 27.55*fem,
//                                           height: 27.54*fem,
//                                           child: Image.asset(
//                                             'assets/cenima-app-user/images/arrow-down-sign-to-navigate-DX3.png',
//                                             fit: BoxFit.cover,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   Container(
//                                     // drafthowtogetaqrcodenov1620220 (I187:22738;193:19974)
//                                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 0*fem),
//                                     width: 381*fem,
//                                     height: 378*fem,
//                                     child: Image.asset(
//                                       'assets/cenima-app-user/images/draft-how-to-get-a-qr-code-nov-16-2022-06-26-37-4642-pm-1.png',
//                                       fit: BoxFit.cover,
//                                     ),
//                                   ),
//                                 ],
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
//               // themenucVK (101:13389)
//               left: 129.5*fem,
//               top: 104*fem,
//               child: Align(
//                 child: SizedBox(
//                   width: 135*fem,
//                   height: 42*fem,
//                   child: Text(
//                     'The Menu',
//                     textAlign: TextAlign.center,
//                     style: SafeGoogleFont (
//                       'Cambria',
//                       33*ffem,
//                       fontWeight: FontWeight.w400,
//                       height: 1.2575*ffem/fem,
//                       color: Color(0xff9a2044),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               // firstcinemagreenlawnaveislipte (101:13390)
//               left: 70*fem,
//               top: 151*fem,
//               child: Align(
//                 child: SizedBox(
//                   width: 255*fem,
//                   height: 46*fem,
//                   child: Text(
//                     'First Cinema- Greenlawn Ave, Islip Terrace, New York(NY), 11752\n ',
//                     textAlign: TextAlign.center,
//                     style: SafeGoogleFont (
//                       'Cambria',
//                       18*ffem,
//                       fontWeight: FontWeight.w400,
//                       height: 1.2575*ffem/fem,
//                       color: Color(0xff797979),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               // firstcinemagreenlawnaveislipte (101:13391)
//               left: 70.5*fem,
//               top: 233*fem,
//               child: Align(
//                 child: SizedBox(
//                   width: 254*fem,
//                   height: 63*fem,
//                   child: Text(
//                     'Dec 08, 2022 - 09:10 AM - Screen 3\n ',
//                     textAlign: TextAlign.center,
//                     style: SafeGoogleFont (
//                       'Cambria',
//                       25*ffem,
//                       fontWeight: FontWeight.w400,
//                       height: 1.2575*ffem/fem,
//                       color: Color(0xff313131),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               // headeroNm (101:13350)
//               left: 0*fem,
//               top: 26*fem,
//               child: Container(
//                 padding: EdgeInsets.fromLTRB(5*fem, 32.5*fem, 3.76*fem, 9.5*fem),
//                 width: 393*fem,
//                 height: 70*fem,
//                 decoration: BoxDecoration (
//                   border: Border.all(color: Color(0xffc2c2c2)),
//                   color: Color(0xffffffff),
//                 ),
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     Container(
//                       // arrowdownsigntonavigatejvd (I101:13350;75:1573;1:127)
//                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 66*fem, 0*fem),
//                       width: 30*fem,
//                       height: 28*fem,
//                       child: Image.asset(
//                         'assets/cenima-app-user/images/arrow-down-sign-to-navigate-59P.png',
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     Container(
//                       // accountinfokaq (I101:13350;1:1762)
//                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 73*fem, 1.5*fem),
//                       child: Text(
//                         'My Bookings- Current',
//                         textAlign: TextAlign.center,
//                         style: SafeGoogleFont (
//                           'Segoe UI',
//                           20*ffem,
//                           fontWeight: FontWeight.w700,
//                           height: 1.2575*ffem/fem,
//                           color: Color(0xff000000),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       // closehPb (I101:13350;76:1577;1:159)
//                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.76*fem),
//                       width: 24.24*fem,
//                       height: 24.24*fem,
//                       child: Image.asset(
//                         'assets/cenima-app-user/images/close-44u.png',
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Positioned(
//               // iosstatusbarwithnotchsfKvm (101:13351)
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
//                       // notchpuT (I101:13351;9:41)
//                       left: 87*fem,
//                       top: 0*fem,
//                       child: Align(
//                         child: SizedBox(
//                           width: 219*fem,
//                           height: 30*fem,
//                           child: Image.asset(
//                             'assets/cenima-app-user/images/notch-Ycu.png',
//                             width: 219*fem,
//                             height: 30*fem,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       // timeZEm (I101:13351;9:73)
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
//                       // iosiconstatusbarUFF (I101:13351;9:57)
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
//                               // autogroupcnqbWbF (W2VAEPJJ2qDVBbGrBTcNqb)
//                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1796*fem, 10*fem),
//                               width: 48.96*fem,
//                               height: 16*fem,
//                             ),
//                             Container(
//                               // iosiconsmallmobilesignal98R (I101:13351;9:57;9:6)
//                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.35*fem, 2.33*fem),
//                               width: 17*fem,
//                               height: 10.67*fem,
//                               child: Image.asset(
//                                 'assets/cenima-app-user/images/ios-icon-small-mobile-signal-dqo.png',
//                                 width: 17*fem,
//                                 height: 10.67*fem,
//                               ),
//                             ),
//                             Container(
//                               // iosiconsmallwifixNh (I101:13351;9:57;9:12)
//                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.38*fem, 2.03*fem),
//                               width: 15.27*fem,
//                               height: 10.97*fem,
//                               child: Image.asset(
//                                 'assets/cenima-app-user/images/ios-icon-small-wifi-Uvh.png',
//                                 width: 15.27*fem,
//                                 height: 10.97*fem,
//                               ),
//                             ),
//                             Container(
//                               // iosiconsmallbatteryYLu (I101:13351;9:57;9:17)
//                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.67*fem),
//                               width: 24.33*fem,
//                               height: 11.33*fem,
//                               child: Image.asset(
//                                 'assets/cenima-app-user/images/ios-icon-small-battery-Q4V.png',
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