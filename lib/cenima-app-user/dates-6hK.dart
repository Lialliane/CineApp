import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  const Scene({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 319;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: SizedBox(
        // datesftR (274:20209)
        width: double.infinity,
        height: 106*fem,
        child: SizedBox(
          // datesxMj (274:20211)
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Positioned(
                // rectangle27E4M (274:20212)
                left: 0*fem,
                top: 0*fem,
                child: Align(
                  child: SizedBox(
                    width: 319*fem,
                    height: 105*fem,
                    child: Container(
                      decoration: BoxDecoration (
                        border: Border.all(color: const Color(0xff777777)),
                        color: const Color(0xffeaeaea),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // thu08decjQR (274:20213)
                left: 15*fem,
                top: 15*fem,
                child: Align(
                  child: SizedBox(
                    width: 56*fem,
                    height: 42*fem,
                    child: Text(
                      'Thu, 08 Dec',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Lucida Bright',
                        16.5271606445*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2575*ffem/fem,
                        color: const Color(0xff777777),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // thu08dec2H3 (274:20214)
                left: 251*fem,
                top: 12*fem,
                child: Align(
                  child: SizedBox(
                    width: 56*fem,
                    height: 42*fem,
                    child: Text(
                      'Sun, 11 Dec',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Lucida Bright',
                        16.5271606445*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2575*ffem/fem,
                        color: const Color(0xffcccccc),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // thu08decKQZ (274:20215)
                left: 177*fem,
                top: 12*fem,
                child: Align(
                  child: SizedBox(
                    width: 47*fem,
                    height: 42*fem,
                    child: Text(
                      'Sat,\n 10 Dec',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Lucida Bright',
                        16.5271606445*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2575*ffem/fem,
                        color: const Color(0xffcccccc),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // thu08decer9 (274:20216)
                left: 100*fem,
                top: 15*fem,
                child: Align(
                  child: SizedBox(
                    width: 47*fem,
                    height: 42*fem,
                    child: Text(
                      'Fri,\n09 Dec',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Lucida Bright',
                        16.5271606445*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2575*ffem/fem,
                        color: const Color(0xff777777),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // line23k21 (274:20217)
                left: 83*fem,
                top: 0*fem,
                child: Align(
                  child: SizedBox(
                    width: 1*fem,
                    height: 105*fem,
                    child: Container(
                      decoration: const BoxDecoration (
                        color: Color(0xff9d9d9d),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // line24vqb (274:20218)
                left: 162*fem,
                top: 0*fem,
                child: Align(
                  child: SizedBox(
                    width: 1*fem,
                    height: 105*fem,
                    child: Container(
                      decoration: const BoxDecoration (
                        color: Color(0xff9d9d9d),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // line26HZf (274:20219)
                left: 238*fem,
                top: 0*fem,
                child: Align(
                  child: SizedBox(
                    width: 1*fem,
                    height: 105*fem,
                    child: Container(
                      decoration: const BoxDecoration (
                        color: Color(0xff9d9d9d),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
          );
  }
}