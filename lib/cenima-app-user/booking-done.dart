import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  const Scene({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // bookingdoneeXw (101:13150)
        padding: EdgeInsets.fromLTRB(66.5*fem, 27*fem, 2*fem, 25*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          border: Border.all(color: const Color(0xff2a2a2a)),
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(30*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogrouppcqszVK (W2KZ3JtKdaUqsAKpHuPCqs)
              margin: EdgeInsets.fromLTRB(61*fem, 0*fem, 0*fem, 24*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    // areyousureyouwanttocancelyourb (101:13154)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 90.5*fem, 0*fem),
                    child: Text(
                      'Booking Done!',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Lucida Bright',
                        21*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2575*ffem/fem,
                        color: const Color(0xff4b4a4a),
                      ),
                    ),
                  ),
                  Container(
                    // closeGUm (101:13160)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(7*fem, 6*fem, 5.76*fem, 5.76*fem),
                        child: Center(
                          // closedyX (I101:13160;1:159)
                          child: SizedBox(
                            width: 24.24*fem,
                            height: 24.24*fem,
                            child: Image.asset(
                              'assets/cenima-app-user/images/close.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // thisactioncannotbeundonec4m (101:13153)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 67.5*fem, 66*fem),
              constraints: const BoxConstraints (
                // maxWidth: 254*fem,
              ),
              child: Text(
                'Check your ticket list in your profile page for your ticket',
                textAlign: TextAlign.center,
                style: SafeGoogleFont (
                  'Cambria',
                  15*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.2575*ffem/fem,
                  color: const Color(0xffff2153),
                ),
              ),
            ),
            Container(
              // secondarybuttonJvZ (101:13155)
              margin: EdgeInsets.fromLTRB(74.5*fem, 0*fem, 141*fem, 0*fem),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: double.infinity,
                  height: 37*fem,
                  decoration: BoxDecoration (
                    color: const Color(0xffff2153),
                    borderRadius: BorderRadius.circular(17.6289710999*fem),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x29000000),
                        offset: Offset(0*fem, 3.3054320812*fem),
                        blurRadius: 0.2754526734*fem,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'OK',
                      style: SafeGoogleFont (
                        'Lucida Bright',
                        17.6289710999*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2575*ffem/fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}