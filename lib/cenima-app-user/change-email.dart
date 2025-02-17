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
        // changeemailYB7 (1:818)
        padding: EdgeInsets.fromLTRB(33*fem, 18*fem, 35*fem, 31*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          image: DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/cenima-app-user/images/path-8-UmK.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // areyousureyouwanttochangeyoure (1:822)
              margin: EdgeInsets.fromLTRB(3.78*fem, 0*fem, 0*fem, 5*fem),
              constraints: const BoxConstraints (
                // maxWidth: 222*fem,
              ),
              child: Text(
                'Are you sure you want to\n change your email?',
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
              // thisactioncannotbeundoneEEH (1:821)
              margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 87*fem),
              child: Text(
                'This action cannot be undone',
                style: SafeGoogleFont (
                  'Cambria',
                  15*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.2575*ffem/fem,
                  color: const Color(0xffff2153),
                ),
              ),
            ),
            SizedBox(
              // autogroupbrw9YeH (W2NsGcv72kL9APfYZuBrW9)
              width: double.infinity,
              height: 37*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // secondarybuttonQgV (77:2198)
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
                    // secondarybuttonHnD (77:2210)
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