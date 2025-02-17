import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  const Scene({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 386;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: SizedBox(
        // dropfoodlocationsYNZ (151:17021)
        width: double.infinity,
        height: 219*fem,
        child: Stack(
          children: [
            Positioned(
              // rectangle3kjX (151:16998)
              left: 0*fem,
              top: 51*fem,
              child: Align(
                child: SizedBox(
                  width: 386*fem,
                  height: 168*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      border: Border.all(color: const Color(0xff707070)),
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // frame10X81 (151:16999)
              left: 0*fem,
              top: 51*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(13*fem, 6.21*fem, 13*fem, 6*fem),
                  width: 385*fem,
                  height: 40.21*fem,
                  child: Text(
                    'First Cinema',
                    style: SafeGoogleFont (
                      'Lucida Bright',
                      22.0362129211*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xff464646),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // frame94vZ (151:17001)
              left: 0*fem,
              top: 90.9931640625*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(13.22*fem, 9.01*fem, 13.22*fem, 3.21*fem),
                  width: 385*fem,
                  height: 40.22*fem,
                  child: Text(
                    'Second Cinema',
                    style: SafeGoogleFont (
                      'Lucida Bright',
                      22.0362129211*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xff464646),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // frame8rjw (151:17003)
              left: 0*fem,
              top: 130.9931640625*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(13.22*fem, 9.01*fem, 13.22*fem, 0*fem),
                width: 385*fem,
                height: 37.01*fem,
                child: Text(
                  'Third Cinema',
                  style: SafeGoogleFont (
                    'Lucida Bright',
                    22.0362129211*ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.2575*ffem/fem,
                    color: const Color(0xffe1e1e1),
                  ),
                ),
              ),
            ),
            Positioned(
              // frame7yi5 (151:17005)
              left: 0*fem,
              top: 171*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(13.22*fem, 9.01*fem, 13.22*fem, 0*fem),
                width: 385*fem,
                height: 37.01*fem,
                child: Text(
                  'Forth Cinema',
                  style: SafeGoogleFont (
                    'Lucida Bright',
                    22.0362129211*ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.2575*ffem/fem,
                    color: const Color(0xffe1e1e1),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle4r9b (151:17108)
              left: 0*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 385.63*fem,
                  height: 51.79*fem,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      decoration: BoxDecoration (
                        border: Border.all(color: const Color(0xff707070)),
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // arrowdownsigntonavigatewKT (151:17109)
              left: 336*fem,
              top: 12*fem,
              child: Align(
                child: SizedBox(
                  width: 27.54*fem,
                  height: 27.55*fem,
                  child: Image.asset(
                    'assets/cenima-app-user/images/arrow-down-sign-to-navigate-KwT.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // selectalocation6rZ (151:17110)
              left: 13.2216796875*fem,
              top: 13.2216796875*fem,
              child: Align(
                child: SizedBox(
                  width: 186*fem,
                  height: 28*fem,
                  child: Text(
                    'SELECT A LOCATION',
                    style: SafeGoogleFont (
                      'Lucida Bright',
                      22.0362129211*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xff464646),
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