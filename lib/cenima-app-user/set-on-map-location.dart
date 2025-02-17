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
        // setonmaplocationVjB (115:14064)
        width: double.infinity,
        height: 852*fem,
        decoration: const BoxDecoration (
          color: Color(0xfff1f1f1),
          image: DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/cenima-app-user/images/bg-S4V.png',
            ),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              // mainbuttonvi1 (115:14113)
              left: 15*fem,
              top: 781*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: SizedBox(
                  width: 165*fem,
                  height: 57*fem,
                  child: Container(
                    // frame4uZw (I115:14113;18:475)
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: const Color(0xff707070)),
                      color: const Color(0xff9a2044),
                      borderRadius: BorderRadius.circular(54*fem),
                    ),
                    child: Center(
                      child: Text(
                        'CONFIRM',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Lucida Bright',
                          19.8325920105*ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2575*ffem/fem,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // arrowdownsigntonavigateNbw (I134:15179;56:1913;1:127)
              left: 14*fem,
              top: 60*fem,
              child: Align(
                child: SizedBox(
                  width: 27.55*fem,
                  height: 27.55*fem,
                  child: Image.asset(
                    'assets/cenima-app-user/images/arrow-down-sign-to-navigate-6qT.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // locationc1x4M (115:14067)
              left: 197*fem,
              top: 402.1123046875*fem,
              child: Align(
                child: SizedBox(
                  width: 25*fem,
                  height: 37.22*fem,
                  child: Image.asset(
                    'assets/cenima-app-user/images/location-c-1.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // seachbargeZ (115:14069)
              left: 15*fem,
              top: 96*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(17*fem, 6*fem, 15*fem, 4*fem),
                width: 353*fem,
                height: 43*fem,
                decoration: BoxDecoration (
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(25*fem),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xffcccccc),
                      offset: Offset(4*fem, 4*fem),
                      blurRadius: 6.5*fem,
                    ),
                    BoxShadow(
                      color: const Color(0x3faeaeae),
                      offset: Offset(-4*fem, -4*fem),
                      blurRadius: 6*fem,
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // backufj (115:14075)
                      margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 19*fem, 0*fem),
                      padding: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 0*fem),
                      width: 24*fem,
                      decoration: const BoxDecoration (
                        image: DecorationImage (
                          image: AssetImage (
                            'assets/cenima-app-user/images/back-1-bg.png',
                          ),
                        ),
                      ),
                      child: Align(
                        // rectangle5339f (115:14077)
                        alignment: Alignment.centerRight,
                        child: SizedBox(
                          width: double.infinity,
                          height: 31*fem,
                          child: Container(
                            decoration: const BoxDecoration (
                              color: Color(0xff5b5b5b),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // searchhereTUH (115:14071)
                      margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 157*fem, 0*fem),
                      child: Text(
                        'Search here',
                        style: SafeGoogleFont (
                          'Lucida Bright',
                          19*ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.1052631579*ffem/fem,
                          letterSpacing: -0.3199999928*fem,
                          color: const Color(0xff5b5b5b),
                        ),
                      ),
                    ),
                    Container(
                      // micnQ5 (115:14072)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                      width: 28*fem,
                      height: 31*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // microphoneblackshape11Xj (115:14073)
                            left: 0*fem,
                            top: 2*fem,
                            child: Align(
                              child: SizedBox(
                                width: 28*fem,
                                height: 27*fem,
                                child: Image.asset(
                                  'assets/cenima-app-user/images/microphone-black-shape-1.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // rectangle52D81 (115:14074)
                            left: 3*fem,
                            top: 0*fem,
                            child: Align(
                              child: SizedBox(
                                width: 21*fem,
                                height: 31*fem,
                                child: Container(
                                  decoration: const BoxDecoration (
                                    color: Color(0xff5b5b5b),
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
            ),
            Positioned(
              // pinpointZLH (115:14078)
              left: 329*fem,
              top: 783*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(12*fem, 13*fem, 12*fem, 8*fem),
                width: 48*fem,
                height: 47*fem,
                decoration: const BoxDecoration (
                  image: DecorationImage (
                    fit: BoxFit.cover,
                    image: AssetImage (
                      'assets/cenima-app-user/images/ellipse-12.png',
                    ),
                  ),
                ),
                child: Center(
                  // pinpoint1Hfb (115:14080)
                  child: SizedBox(
                    width: 24*fem,
                    height: 26*fem,
                    child: Image.asset(
                      'assets/cenima-app-user/images/pinpoint-1.png',
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // compGnR (115:14081)
              left: 325*fem,
              top: 232*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(7*fem, 5*fem, 6*fem, 4*fem),
                width: 48*fem,
                height: 47*fem,
                decoration: const BoxDecoration (
                  image: DecorationImage (
                    fit: BoxFit.cover,
                    image: AssetImage (
                      'assets/cenima-app-user/images/ellipse-11.png',
                    ),
                  ),
                ),
                child: Center(
                  // compass1cUu (115:14083)
                  child: SizedBox(
                    width: 35*fem,
                    height: 38*fem,
                    child: Image.asset(
                      'assets/cenima-app-user/images/compass-1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // whatthehellisthisGZT (115:14084)
              left: 326*fem,
              top: 162*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(3*fem, 2*fem, 3*fem, 3*fem),
                width: 48*fem,
                height: 47*fem,
                decoration: const BoxDecoration (
                  image: DecorationImage (
                    fit: BoxFit.cover,
                    image: AssetImage (
                      'assets/cenima-app-user/images/ellipse-10.png',
                    ),
                  ),
                ),
                child: Center(
                  // idontknowwhatthehellthisis1NF7 (115:14086)
                  child: SizedBox(
                    width: 42*fem,
                    height: 42*fem,
                    child: Image.asset(
                      'assets/cenima-app-user/images/i-dont-know-what-the-hell-this-is-1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // iosstatusbarwithnotchsfCzq (115:14089)
              left: 0*fem,
              top: 0*fem,
              child: Container(
                width: 393*fem,
                height: 44*fem,
                decoration: const BoxDecoration (
                  color: Color(0xffffffff),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      // notchchB (I115:14089;9:41)
                      left: 87*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 219*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/cenima-app-user/images/notch-8GM.png',
                            width: 219*fem,
                            height: 30*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // timeXSm (I115:14089;9:73)
                      left: 32*fem,
                      top: 13*fem,
                      child: Align(
                        child: SizedBox(
                          width: 26*fem,
                          height: 21*fem,
                          child: Text(
                            '9:41',
                            style: SafeGoogleFont (
                              'SF Pro Text',
                              15*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.4*ffem/fem,
                              letterSpacing: -0.3199999928*fem,
                              color: const Color(0xff020202),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // iosiconstatusbarCxD (I115:14089;9:57)
                      left: 0*fem,
                      top: 5*fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(20.04*fem, 0*fem, 0*fem, 0*fem),
                        width: 1929*fem,
                        height: 26*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              // autogrouppj4dAXf (W2TWhNyzydqdEmVo1HPJ4D)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1796*fem, 10*fem),
                              width: 48.96*fem,
                              height: 16*fem,
                            ),
                            Container(
                              // iosiconsmallmobilesignal12V (I115:14089;9:57;9:6)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.35*fem, 2.33*fem),
                              width: 17*fem,
                              height: 10.67*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-mobile-signal-AUD.png',
                                width: 17*fem,
                                height: 10.67*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallwifiC6y (I115:14089;9:57;9:12)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.38*fem, 2.03*fem),
                              width: 15.27*fem,
                              height: 10.97*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-wifi-GuK.png',
                                width: 15.27*fem,
                                height: 10.97*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallbattery8uj (I115:14089;9:57;9:17)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.67*fem),
                              width: 24.33*fem,
                              height: 11.33*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-battery-GsP.png',
                                width: 24.33*fem,
                                height: 11.33*fem,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}