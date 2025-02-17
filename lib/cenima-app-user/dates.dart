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
        // datesUb7 (139:15860)
        width: double.infinity,
        height: 106*fem,
        child: SizedBox(
          // datesMuo (139:15847)
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Positioned(
                // rectangle2731w (139:15848)
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
                // thu08decjYy (139:15849)
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
                // thu08decrGD (139:15850)
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
                // thu08deckW1 (139:15851)
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
                // thu08decsj3 (139:15852)
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
                // line23Abf (139:15853)
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
                // line24iFo (139:15854)
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
                // line26iv1 (139:15855)
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