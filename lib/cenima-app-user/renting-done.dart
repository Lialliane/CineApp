// import 'package:flutter/material.dart';
// import 'package:flutter/gestures.dart';
// import 'dart:ui';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:myapp/utils.dart';

// class Scene extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     double baseWidth = 390;
//     double fem = MediaQuery.of(context).size.width / baseWidth;
//     double ffem = fem * 0.97;
//     return Container(
//       width: double.infinity,
//       child: Container(
//         // rentingdoneMiV (113:16504)
//         padding: EdgeInsets.fromLTRB(66.5*fem, 27*fem, 2*fem, 25*fem),
//         width: double.infinity,
//         decoration: BoxDecoration (
//           border: Border.all(color: Color(0xff2a2a2a)),
//           color: Color(0xffffffff),
//           borderRadius: BorderRadius.circular(30*fem),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(
//               // autogrouppmzvCsX (W2aLXvay7huokEdisHpmzV)
//               margin: EdgeInsets.fromLTRB(66*fem, 0*fem, 0*fem, 24*fem),
//               width: double.infinity,
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   Container(
//                     // areyousureyouwanttocancelyourb (113:16509)
//                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 95.5*fem, 0*fem),
//                     child: Text(
//                       'Movie Rented',
//                       textAlign: TextAlign.center,
//                       style: SafeGoogleFont (
//                         'Lucida Bright',
//                         21*ffem,
//                         fontWeight: FontWeight.w600,
//                         height: 1.2575*ffem/fem,
//                         color: Color(0xff4b4a4a),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     // closeArH (113:16507)
//                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
//                     child: TextButton(
//                       onPressed: () {},
//                       style: TextButton.styleFrom (
//                         padding: EdgeInsets.zero,
//                       ),
//                       child: Container(
//                         padding: EdgeInsets.fromLTRB(7*fem, 6*fem, 5.76*fem, 5.76*fem),
//                         child: Center(
//                           // closeseD (I113:16507;1:159)
//                           child: SizedBox(
//                             width: 24.24*fem,
//                             height: 24.24*fem,
//                             child: Image.asset(
//                               'assets/cenima-app-user/images/close-VHP.png',
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               // thisactioncannotbeundoneWSH (113:16508)
//               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 67.5*fem, 66*fem),
//               constraints: BoxConstraints (
//                 maxWidth: 254*fem,
//               ),
//               child: Text(
//                 'Check your ticket list in your profile page for your ticket',
//                 textAlign: TextAlign.center,
//                 style: SafeGoogleFont (
//                   'Cambria',
//                   15*ffem,
//                   fontWeight: FontWeight.w400,
//                   height: 1.2575*ffem/fem,
//                   color: Color(0xffff2153),
//                 ),
//               ),
//             ),
//             Container(
//               // secondarybuttonCTX (113:16510)
//               margin: EdgeInsets.fromLTRB(74.5*fem, 0*fem, 141*fem, 0*fem),
//               child: TextButton(
//                 onPressed: () {},
//                 style: TextButton.styleFrom (
//                   padding: EdgeInsets.zero,
//                 ),
//                 child: Container(
//                   width: double.infinity,
//                   height: 37*fem,
//                   decoration: BoxDecoration (
//                     color: Color(0xffff2153),
//                     borderRadius: BorderRadius.circular(17.6289710999*fem),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Color(0x29000000),
//                         offset: Offset(0*fem, 3.3054320812*fem),
//                         blurRadius: 0.2754526734*fem,
//                       ),
//                     ],
//                   ),
//                   child: Center(
//                     child: Text(
//                       'OK',
//                       style: SafeGoogleFont (
//                         'Lucida Bright',
//                         17.6289710999*ffem,
//                         fontWeight: FontWeight.w600,
//                         height: 1.2575*ffem/fem,
//                         color: Color(0xffffffff),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//           );
//   }
// }