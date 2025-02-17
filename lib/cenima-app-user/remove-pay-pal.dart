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
//         // removepaypalka9 (108:12370)
//         padding: EdgeInsets.fromLTRB(33*fem, 18*fem, 10*fem, 31*fem),
//         width: double.infinity,
//         decoration: BoxDecoration (
//           image: DecorationImage (
//             fit: BoxFit.cover,
//             image: AssetImage (
//               'assets/cenima-app-user/images/path-8-WfF.png',
//             ),
//           ),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(
//               // autogroupggoxg6R (W2a9epYsxkQR85F8yYGgoX)
//               margin: EdgeInsets.fromLTRB(53.39*fem, 0*fem, 0*fem, 5*fem),
//               width: double.infinity,
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     // areyousureyouwanttocancelyourb (108:12374)
//                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.61*fem, 0*fem),
//                     constraints: BoxConstraints (
//                       maxWidth: 222*fem,
//                     ),
//                     child: Text(
//                       'Are you sure you want to\nUnlink this Account?',
//                       textAlign: TextAlign.center,
//                       style: 
//                          GoogleFonts.caveat(
//                         fontSize: 21*ffem,
//                         fontWeight: FontWeight.w600,
//                         height: 1.2575*ffem/fem,
//                         color: Color(0xff4b4a4a),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     // close8m3 (108:12377)
//                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17*fem),
//                     child: TextButton(
//                       onPressed: () {},
//                       style: TextButton.styleFrom (
//                         padding: EdgeInsets.zero,
//                       ),
//                       child: Container(
//                         padding: EdgeInsets.fromLTRB(7*fem, 6*fem, 5.76*fem, 5.76*fem),
//                         child: Center(
//                           // closeVk1 (I108:12377;1:159)
//                           child: SizedBox(
//                             width: 24.24*fem,
//                             height: 24.24*fem,
//                             child: Image.asset(
//                               'assets/cenima-app-user/images/close-jZw.png',
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
//               // thisactioncannotbeundone5CR (108:12373)
//               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 87*fem),
//               child: Text(
//                 'This action cannot be undone',
//                 style: GoogleFonts.lato(
//                   fontSize: 15*ffem,
//                   fontWeight: FontWeight.w400,
//                   height: 1.2575*ffem/fem,
//                   color: Color(0xffff2153),
//                 ),
//               ),
//             ),
//             Container(
//               // autogroupk43p3oT (W2aA2ovEstpdm4oGhBk43P)
//               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 25*fem, 0*fem),
//               width: double.infinity,
//               height: 37*fem,
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Container(
//                     // secondarybuttonTsB (108:12375)
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
//                             style: 
//                                GoogleFonts.caveat(
//                               fontSize: 17.6289710999*ffem,
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
//                     // secondarybuttonB4R (108:12376)
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
//                           style: 
//                              GoogleFonts.caveat(
//                             fontSize: 17.6289710999*ffem,
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