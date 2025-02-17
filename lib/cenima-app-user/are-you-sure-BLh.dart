import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  const Scene({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // areyousurew7s (274:19888)
        padding: EdgeInsets.fromLTRB(33*fem, 18*fem, 9*fem, 31*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          image: DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/cenima-app-user/images/path-8-xuj.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupery3wvV (W2KXegXzwNx3XXHzfCery3)
              margin: EdgeInsets.fromLTRB(42.89*fem, 0*fem, 0*fem, 5*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // areyousureyouwanttocancelyourb (274:19891)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 28.11*fem, 0*fem),
                    constraints: const BoxConstraints (
                      // maxWidth: 243*fem,
                    ),
                    child: Text(
                      'Are you sure you want to\n copy Yesterday’s schedule?',
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
                    // closeTvm (274:19894)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17*fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(7*fem, 6*fem, 5.76*fem, 5.76*fem),
                        child: Center(
                          // closeNwF (I274:19894;1:159)
                          child: SizedBox(
                            width: 24.24*fem,
                            height: 24.24*fem,
                            child: Image.asset(
                              'assets/cenima-app-user/images/close-G9s.png',
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
              // thisactioncannotbeundoneR8q (274:19890)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 87*fem),
              child: Text(
                'all current schedules will be lost',
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
              // autogroupbqt5CJ1 (W2KY4ArrxnSYqwrzzeBQt5)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 26*fem, 0*fem),
              width: double.infinity,
              height: 37*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // secondarybuttonZXs (274:19892)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 103*fem, 0*fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 104*fem,
                        height: double.infinity,
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
                            'CANCEL',
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
                  TextButton(
                    // secondarybuttonfMw (274:19893)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: 118*fem,
                      height: double.infinity,
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
                          'CONFIRM',
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
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}