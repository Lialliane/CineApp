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
//         // removecardReV (103:8220)
//         padding: EdgeInsets.fromLTRB(33*fem, 18*fem, 10*fem, 31*fem),
//         width: double.infinity,
//         decoration: BoxDecoration (
//           image: DecorationImage (
//             fit: BoxFit.cover,
//             image: AssetImage (
//               'assets/cenima-app-user/images/path-8-YsX.png',
//             ),
//           ),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(
//               // autogrouprydt8hK (W2a8G2YAhdeFbcKfVkRYdT)
//               margin: EdgeInsets.fromLTRB(53.39*fem, 0*fem, 0*fem, 5*fem),
//               width: double.infinity,
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     // areyousureyouwanttocancelyourb (103:8224)
//                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.61*fem, 0*fem),
//                     constraints: BoxConstraints (
//                       maxWidth: 222*fem,
//                     ),
//                     child: Text(
//                       'Are you sure you want to\ndelete this card?',
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
//                     // closebMw (104:16058)
//                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17*fem),
//                     child: TextButton(
//                       onPressed: () {},
//                       style: TextButton.styleFrom (
//                         padding: EdgeInsets.zero,
//                       ),
//                       child: Container(
//                         padding: EdgeInsets.fromLTRB(7*fem, 6*fem, 5.76*fem, 5.76*fem),
//                         child: Center(
//                           // closexLu (I104:16058;1:159)
//                           child: SizedBox(
//                             width: 24.24*fem,
//                             height: 24.24*fem,
//                             child: Image.asset(
//                               'assets/cenima-app-user/images/close-WGM.png',
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
//               // thisactioncannotbeundonewid (103:8223)
//               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 87*fem),
//               child: Text(
//                 'This action cannot be undone',
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
//               // autogroupgu6dvaZ (W2a8fGNSsfHi8o4C4ZGu6d)
//               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 25*fem, 0*fem),
//               width: double.infinity,
//               height: 37*fem,
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Container(
//                     // secondarybuttonkJh (103:8225)
//                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 103*fem, 0*fem),
//                     child: TextButton(
//                       onPressed: () {},
//                       style: TextButton.styleFrom (
//                         padding: EdgeInsets.zero,
//                       ),
//                       child: Container(
//                         width: 104*fem,
//                         height: double.infinity,
//                         decoration: BoxDecoration (
//                           color: Color(0xffff2153),
//                           borderRadius: BorderRadius.circular(17.6289710999*fem),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Color(0x29000000),
//                               offset: Offset(0*fem, 3.3054320812*fem),
//                               blurRadius: 0.2754526734*fem,
//                             ),
//                           ],
//                         ),
//                         child: Center(
//                           child: Text(
//                             'CANCEL',
//                             style: SafeGoogleFont (
//                               'Lucida Bright',
//                               17.6289710999*ffem,
//                               fontWeight: FontWeight.w600,
//                               height: 1.2575*ffem/fem,
//                               color: Color(0xffffffff),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   TextButton(
//                     // secondarybuttond9X (103:8226)
//                     onPressed: () {},
//                     style: TextButton.styleFrom (
//                       padding: EdgeInsets.zero,
//                     ),
//                     child: Container(
//                       width: 118*fem,
//                       height: double.infinity,
//                       decoration: BoxDecoration (
//                         color: Color(0xffff2153),
//                         borderRadius: BorderRadius.circular(17.6289710999*fem),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Color(0x29000000),
//                             offset: Offset(0*fem, 3.3054320812*fem),
//                             blurRadius: 0.2754526734*fem,
//                           ),
//                         ],
//                       ),
//                       child: Center(
//                         child: Text(
//                           'CONFIRM',
//                           style: SafeGoogleFont (
//                             'Lucida Bright',
//                             17.6289710999*ffem,
//                             fontWeight: FontWeight.w600,
//                             height: 1.2575*ffem/fem,
//                             color: Color(0xffffffff),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//           );
//   }
// }