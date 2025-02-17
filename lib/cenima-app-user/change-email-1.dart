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
        // changeemail1eXX (1:194)
        padding: EdgeInsets.fromLTRB(26*fem, 21*fem, 26*fem, 31*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          image: DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/cenima-app-user/images/path-8-yY1.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // youremailhavebeenchangedxRj (1:198)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 54*fem, 15*fem),
              child: Text(
                'Your email have been changed',
                style: SafeGoogleFont (
                  'Lucida Bright',
                  22*ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.2575*ffem/fem,
                  color: const Color(0xff4b4a4a),
                ),
              ),
            ),
            Container(
              // checkoutyouremailforacerificat (1:197)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 99*fem),
              child: Text(
                'Check out your email for a cerification code',
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
              // secondarybuttonyNm (77:2212)
              margin: EdgeInsets.fromLTRB(112*fem, 0*fem, 111*fem, 0*fem),
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
            ),
          ],
        ),
      ),
          );
  }
}