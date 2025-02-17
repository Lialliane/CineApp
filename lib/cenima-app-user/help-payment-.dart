import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'help-refund.dart';
import 'incomplete-payment.dart';

class HelpPayment extends StatefulWidget {
  const HelpPayment({super.key});

  @override
  State<HelpPayment> createState() => _PaymentHelpPage();
}

class _PaymentHelpPage extends State<HelpPayment> {
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
              'Account',
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
                child: Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const IncompletePayment()),
                        );
                      },
                      child: Container(
                        color: Colors.white,
                        margin: const EdgeInsets.symmetric(vertical: 3),
                        padding: const EdgeInsets.all(20),
                        width: MediaQuery.of(context).size.width * 1,
                        height: MediaQuery.of(context).size.height * 0.1,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Why is my payment not going through',
                          style: GoogleFonts.lato(
                            fontSize: 22 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2575 * ffem / fem,
                            color: const Color(0xff7e132b),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const HelpRefund()),
                        );
                      },
                      child: Container(
                        color: Colors.white,
                        margin: const EdgeInsets.symmetric(vertical: 3),
                        padding: const EdgeInsets.all(20),
                        width: MediaQuery.of(context).size.width * 1,
                        height: MediaQuery.of(context).size.height * 0.1,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Didn\'t recieve refund',
                          style: GoogleFonts.lato(
                            fontSize: 22 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2575 * ffem / fem,
                            color: const Color(0xff7e132b),
                          ),
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
    );
  }
}

// class HelpPayment extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     double baseWidth = 393;
//     double fem = MediaQuery.of(context).size.width / baseWidth;
//     double ffem = fem * 0.97;
//     return Container(
//       width: double.infinity,
//       child: Container(
//         // helppayment8Wy (1:184)
//         width: double.infinity,
//         height: 852*fem,
//         decoration: BoxDecoration (
//           color: Color(0xfff1f1f1),
//         ),
//         child: Stack(
//           children: [
//             Positioned(
//               // rectangle43oYZ (87:8728)
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
//               // profilecardLgu (1:192)
//               left: 0*fem,
//               top: 99*fem,
//               child: TextButton(
//                 onPressed: () {},
//                 style: TextButton.styleFrom (
//                   padding: EdgeInsets.zero,
//                 ),
//                 child: Container(
//                   padding: EdgeInsets.fromLTRB(21*fem, 21*fem, 21*fem, 9*fem),
//                   width: 393*fem,
//                   height: 86*fem,
//                   decoration: BoxDecoration (
//                     color: Color(0xffffffff),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Color(0x29000000),
//                         offset: Offset(0*fem, 3*fem),
//                         blurRadius: 1.5*fem,
//                       ),
//                     ],
//                   ),
//                   child: Align(
//                     // whyismypaymentnotgoingthroughH (1:188)
//                     alignment: Alignment.centerLeft,
//                     child: SizedBox(
//                       child: Container(
//                         constraints: BoxConstraints (
//                           maxWidth: 220*fem,
//                         ),
//                         child: RichText(
//                           text: TextSpan(
//                             style: SafeGoogleFont (
//                               'Lucida Bright',
//                               22*ffem,
//                               fontWeight: FontWeight.w600,
//                               height: 1.2575*ffem/fem,
//                               color: Color(0xff7e132b),
//                             ),
//                             children: [
//                               TextSpan(
//                                 text: 'Why is my ',
//                                 style: SafeGoogleFont (
//                                   'Lucida Bright',
//                                   22*ffem,
//                                   fontWeight: FontWeight.w600,
//                                   height: 1.2575*ffem/fem,
//                                   color: Color(0xff7e132b),
//                                 ),
//                               ),
//                               TextSpan(
//                                 text: 'payment not going through?',
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               // profilecardQLd (1:193)
//               left: 0*fem,
//               top: 188*fem,
//               child: TextButton(
//                 onPressed: () {},
//                 style: TextButton.styleFrom (
//                   padding: EdgeInsets.zero,
//                 ),
//                 child: Container(
//                   padding: EdgeInsets.fromLTRB(21*fem, 21*fem, 21*fem, 4*fem),
//                   width: 393*fem,
//                   height: 81*fem,
//                   decoration: BoxDecoration (
//                     color: Color(0xffffffff),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Color(0x29000000),
//                         offset: Offset(0*fem, 3*fem),
//                         blurRadius: 1.5*fem,
//                       ),
//                     ],
//                   ),
//                   child: Align(
//                     // ihaveyettoreceivemyrefundCfo (1:190)
//                     alignment: Alignment.bottomLeft,
//                     child: SizedBox(
//                       child: Container(
//                         constraints: BoxConstraints (
//                           maxWidth: 221*fem,
//                         ),
//                         child: RichText(
//                           text: TextSpan(
//                             style: SafeGoogleFont (
//                               'Lucida Bright',
//                               22*ffem,
//                               fontWeight: FontWeight.w600,
//                               height: 1.2575*ffem/fem,
//                               color: Color(0xff7e132b),
//                             ),
//                             children: [
//                               TextSpan(
//                                 text: 'I have yet',
//                                 style: SafeGoogleFont (
//                                   'Lucida Bright',
//                                   22*ffem,
//                                   fontWeight: FontWeight.w600,
//                                   height: 1.2575*ffem/fem,
//                                   color: Color(0xff7e132b),
//                                 ),
//                               ),
//                               TextSpan(
//                                 text: ' to receive my refund',
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               // headerjzV (77:1990)
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
//                       // arrowdownsigntonavigate381 (I77:1990;75:1573;1:127)
//                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
//                       width: 30*fem,
//                       height: 28*fem,
//                       child: Image.asset(
//                         'assets/cenima-app-user/images/arrow-down-sign-to-navigate-Yv9.png',
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     SizedBox(
//                       width: 73.5*fem,
//                     ),
//                     Container(
//                       // accountinfoHRf (I77:1990;1:1762)
//                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7.5*fem),
//                       child: Text(
//                         'Payment And Refund',
//                         textAlign: TextAlign.center,
//                         style: SafeGoogleFont (
//                           'Segoe UI',
//                           19*ffem,
//                           fontWeight: FontWeight.w700,
//                           height: 1.2575*ffem/fem,
//                           color: Color(0xff000000),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 73.5*fem,
//                     ),
//                     TextButton(
//                       // closep4D (I77:1990;76:1577)
//                       onPressed: () {},
//                       style: TextButton.styleFrom (
//                         padding: EdgeInsets.zero,
//                       ),
//                       child: Container(
//                         padding: EdgeInsets.fromLTRB(7*fem, 6*fem, 5.76*fem, 5.76*fem),
//                         width: 37*fem,
//                         height: double.infinity,
//                         child: Center(
//                           // closeDc9 (I77:1990;76:1577;1:159)
//                           child: SizedBox(
//                             width: 24.24*fem,
//                             height: 24.24*fem,
//                             child: Image.asset(
//                               'assets/cenima-app-user/images/close-X9P.png',
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
//               // iosstatusbarwithnotchsfb6u (77:1991)
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
//                       // notchMVP (I77:1991;9:41)
//                       left: 87*fem,
//                       top: 0*fem,
//                       child: Align(
//                         child: SizedBox(
//                           width: 219*fem,
//                           height: 30*fem,
//                           child: Image.asset(
//                             'assets/cenima-app-user/images/notch.png',
//                             width: 219*fem,
//                             height: 30*fem,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       // timedbK (I77:1991;9:73)
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
//                       // iosiconstatusbark3f (I77:1991;9:57)
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
//                               // autogroupixoo181 (W2JuAZfKNzioWfVzVSixoo)
//                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1796*fem, 10*fem),
//                               width: 48.96*fem,
//                               height: 16*fem,
//                             ),
//                             Container(
//                               // iosiconsmallmobilesignaldfB (I77:1991;9:57;9:6)
//                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.35*fem, 2.33*fem),
//                               width: 17*fem,
//                               height: 10.67*fem,
//                               child: Image.asset(
//                                 'assets/cenima-app-user/images/ios-icon-small-mobile-signal-Enq.png',
//                                 width: 17*fem,
//                                 height: 10.67*fem,
//                               ),
//                             ),
//                             Container(
//                               // iosiconsmallwifiz8M (I77:1991;9:57;9:12)
//                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.38*fem, 2.03*fem),
//                               width: 15.27*fem,
//                               height: 10.97*fem,
//                               child: Image.asset(
//                                 'assets/cenima-app-user/images/ios-icon-small-wifi-xF7.png',
//                                 width: 15.27*fem,
//                                 height: 10.97*fem,
//                               ),
//                             ),
//                             Container(
//                               // iosiconsmallbatteryJYM (I77:1991;9:57;9:17)
//                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.67*fem),
//                               width: 24.33*fem,
//                               height: 11.33*fem,
//                               child: Image.asset(
//                                 'assets/cenima-app-user/images/ios-icon-small-battery.png',
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