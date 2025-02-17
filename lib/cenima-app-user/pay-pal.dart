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
        // paypalpe9 (108:12322)
        width: double.infinity,
        height: 852*fem,
        decoration: const BoxDecoration (
          color: Color(0xfff1f1f1),
        ),
        child: Stack(
          children: [
            Positioned(
              // rectangle43Rdw (108:12323)
              left: 0*fem,
              top: 96*fem,
              child: Align(
                child: SizedBox(
                  width: 391*fem,
                  height: 750*fem,
                  child: Container(
                    decoration: const BoxDecoration (
                      color: Color(0xfff1f1f1),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // cards8wf (108:12324)
              left: 28*fem,
              top: 144*fem,
              child: Align(
                child: SizedBox(
                  width: 54*fem,
                  height: 28*fem,
                  child: Text(
                    'Cards',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Lucida Bright',
                      22*ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xff3b3b3b),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // paypalswB (108:12325)
              left: 35.5*fem,
              top: 426*fem,
              child: Align(
                child: SizedBox(
                  width: 64*fem,
                  height: 28*fem,
                  child: Text(
                    'Paypal',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Lucida Bright',
                      22*ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xff3b3b3b),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // addnewbuttonZhX (108:12326)
              left: 270*fem,
              top: 144*fem,
              child: Container(
                width: 111*fem,
                height: 41*fem,
                decoration: BoxDecoration (
                  border: Border.all(color: const Color(0x00ff1e60)),
                  color: const Color(0x00ffffff),
                  borderRadius: BorderRadius.circular(43*fem),
                ),
                child: Center(
                  child: Text(
                    'ADD NEW',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Lucida Bright',
                      16*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xffff1e60),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // visacardPKB (108:12328)
              left: 19*fem,
              top: 201*fem,
              child: Opacity(
                opacity: 0,
                child: Container(
                  padding: EdgeInsets.fromLTRB(9*fem, 8*fem, 211.5*fem, 11*fem),
                  width: 360*fem,
                  height: 77*fem,
                  decoration: BoxDecoration (
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(15*fem),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x3f636363),
                        offset: Offset(0*fem, 4*fem),
                        blurRadius: 7.5*fem,
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogroup6abopoo (W2Q8gWbPYrGswGQ3F16abo)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24.5*fem, 0*fem),
                        width: 54*fem,
                        height: double.infinity,
                        child: Stack(
                          children: [
                            Positioned(
                              // creditcard21GQu (108:12332)
                              left: 0*fem,
                              top: 0*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 54*fem,
                                  height: 54*fem,
                                  child: Image.asset(
                                    'assets/cenima-app-user/images/credit-card-2-1-F9F.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // visa1PP3 (108:12333)
                              left: 11*fem,
                              top: 27*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 31*fem,
                                  height: 31*fem,
                                  child: Image.asset(
                                    'assets/cenima-app-user/images/visa-1-QwX.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogrouppqumCLV (W2Q9Hk5gaxWduuFYkAPQUM)
                        margin: EdgeInsets.fromLTRB(0*fem, 6*fem, 0*fem, 4*fem),
                        width: 61*fem,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // visaNuB (108:12330)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                              width: double.infinity,
                              child: Text(
                                'Visa',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Lucida Bright',
                                  22*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2575*ffem/fem,
                                  color: const Color(0xff3b3b3b),
                                ),
                              ),
                            ),
                            SizedBox(
                              // aVT (108:12331)
                              width: double.infinity,
                              child: Text(
                                '**** 1222',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Lucida Bright',
                                  15*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2575*ffem/fem,
                                  color: const Color(0xff565656),
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
            ),
            Positioned(
              // visacardBEM (108:12334)
              left: 19*fem,
              top: 118*fem,
              child: SizedBox(
                width: 360*fem,
                height: 442*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogrouplspsxPX (W2QAA8oPGaidsg9SGMLsPs)
                      padding: EdgeInsets.fromLTRB(45*fem, 0*fem, 53*fem, 55*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // creditcard21of3 (108:12337)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                            width: 262*fem,
                            height: 262*fem,
                            child: Image.asset(
                              'assets/cenima-app-user/images/credit-card-2-1-36M.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // negmailcomyC9 (108:12336)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 0*fem),
                            child: Text(
                              '*****ne@gmail.com',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Lucida Bright',
                                22*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2575*ffem/fem,
                                color: const Color(0xff565656),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // rectangle46ybT (108:12335)
                      width: double.infinity,
                      height: 77*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(15*fem),
                        color: const Color(0x00ffffff),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x3f636363),
                            offset: Offset(0*fem, 4*fem),
                            blurRadius: 7.5*fem,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // secondarybuttonCUD (108:12338)
              left: 15*fem,
              top: 796*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(6.5*fem, 8*fem, 6.5*fem, 6*fem),
                  width: 165*fem,
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
                  child: Text(
                    'REMOVE ACCOUNT',
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
            Positioned(
              // secondarybuttonK4y (108:12339)
              left: 204*fem,
              top: 796*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 165*fem,
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
                      'OPEN PAYPAL',
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
            Positioned(
              // headerHJd (108:12340)
              left: 0*fem,
              top: 26*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(5*fem, 32.5*fem, 3.76*fem, 9.5*fem),
                width: 393*fem,
                height: 70*fem,
                decoration: BoxDecoration (
                  border: Border.all(color: const Color(0xffc2c2c2)),
                  color: const Color(0xffffffff),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // arrowdownsigntonavigateR3T (I108:12340;75:1573;1:127)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 131.5*fem, 0*fem),
                      width: 30*fem,
                      height: 28*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/arrow-down-sign-to-navigate-ipm.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // accountinfoNcu (I108:12340;1:1762)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 138.5*fem, 1.5*fem),
                      child: Text(
                        'Paypal',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Segoe UI',
                          20*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2575*ffem/fem,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      // closeZSV (I108:12340;76:1577;1:159)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.76*fem),
                      width: 24.24*fem,
                      height: 24.24*fem,
                      child: Image.asset(
                        'assets/cenima-app-user/images/close-73K.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // iosstatusbarwithnotchsfvwF (108:12341)
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
                      // notch8nR (I108:12341;9:41)
                      left: 87*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 219*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/cenima-app-user/images/notch-y5o.png',
                            width: 219*fem,
                            height: 30*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // timevCV (I108:12341;9:73)
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
                      // iosiconstatusbarjp9 (I108:12341;9:57)
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
                              // autogroupyqqzp6q (W2QBWbYearFgnabmtuYqQZ)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1796*fem, 10*fem),
                              width: 48.96*fem,
                              height: 16*fem,
                            ),
                            Container(
                              // iosiconsmallmobilesignalStu (I108:12341;9:57;9:6)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.35*fem, 2.33*fem),
                              width: 17*fem,
                              height: 10.67*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-mobile-signal-gkM.png',
                                width: 17*fem,
                                height: 10.67*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallwifi381 (I108:12341;9:57;9:12)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.38*fem, 2.03*fem),
                              width: 15.27*fem,
                              height: 10.97*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-wifi-pm3.png',
                                width: 15.27*fem,
                                height: 10.97*fem,
                              ),
                            ),
                            Container(
                              // iosiconsmallbatteryReM (I108:12341;9:57;9:17)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.67*fem),
                              width: 24.33*fem,
                              height: 11.33*fem,
                              child: Image.asset(
                                'assets/cenima-app-user/images/ios-icon-small-battery-vZs.png',
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