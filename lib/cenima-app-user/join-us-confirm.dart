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
        // joinusconfirm8JZ (115:14116)
        padding: EdgeInsets.fromLTRB(60 * fem, 27 * fem, 17 * fem, 25 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff2a2a2a)),
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(30 * fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupq9o3rtm (W2KZmsVje4rg48N32wq9o3)
              margin: EdgeInsets.fromLTRB(30 * fem, 0 * fem, 0 * fem, 24 * fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    // areyousureyouwanttocancelyourb (115:14121)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 38 * fem, 0 * fem),
                    child: Text(
                      'Successfully submitted',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Lucida Bright',
                        21 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2575 * ffem / fem,
                        color: const Color(0xff4b4a4a),
                      ),
                    ),
                  ),
                  Container(
                    // closeMMf (115:14119)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 15 * fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                            7 * fem, 6 * fem, 5.76 * fem, 5.76 * fem),
                        child: Center(
                          // closevZB (I115:14119;1:159)
                          child: SizedBox(
                            width: 24.24 * fem,
                            height: 24.24 * fem,
                            child: Image.asset(
                              'assets/cenima-app-user/images/close-LhT.png',
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
              // thisactioncannotbeundoneZ6M (115:14120)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 46 * fem, 47 * fem),
              constraints: const BoxConstraints(
                  // maxWidth: 267*fem,
                  ),
              child: Text(
                'Please wait for an email from us to confirm  your addition to the app!\nyou’d hear from us within 24 hours',
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'Cambria',
                  15 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.2575 * ffem / fem,
                  color: const Color(0xffff2153),
                ),
              ),
            ),
            Container(
              // secondarybutton2PF (115:14122)
              margin:
                  EdgeInsets.fromLTRB(81 * fem, 0 * fem, 126 * fem, 0 * fem),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: double.infinity,
                  height: 37 * fem,
                  decoration: BoxDecoration(
                    color: const Color(0xffff2153),
                    borderRadius: BorderRadius.circular(17.6289710999 * fem),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x29000000),
                        offset: Offset(0 * fem, 3.3054320812 * fem),
                        blurRadius: 0.2754526734 * fem,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'OK',
                      style: SafeGoogleFont(
                        'Lucida Bright',
                        17.6289710999 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2575 * ffem / fem,
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
