import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';
import 'rent-movie.dart' as global;
import '../services/Movie service.dart';
import '../services/Screens.dart';
import '../shared/Theme.dart';
import 'checkout-rent-.dart';

class globalData {
  static double total = 0.00;
  static int rentPeriod = 0;
}

class ChoosePeriod extends StatefulWidget {
  const ChoosePeriod({super.key});

  @override
  State<ChoosePeriod> createState() => _ChoosePeriod();
}

class _ChoosePeriod extends State<ChoosePeriod> {
  bool openCheck = false;
  Screens screen =
      Screens('screen 1', [], [], 57, 19, 152, 19, {28, 47}, {1, 10, 19});
  double fees = 1.50;
  @override
  Widget build(BuildContext context) {
    int limitStandard =
        (screen.noOfSeatsStandard - screen.bookedStandard.length < 12)
            ? screen.noOfSeatsStandard - screen.bookedStandard.length
            : 12;

    MovieService ser = MovieService();
    Size deviceSize = MediaQuery.of(context).size;
    double width = deviceSize.width;
    double height = deviceSize.height;
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        toolbarHeight: height * 0.1,
        iconTheme: const IconThemeData(
          color: Color(0xffdd204a),
        ),
        leading: GestureDetector(
          child: Padding(
            padding: EdgeInsets.only(top: height * 0.017),
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
            ),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(top: height * 0.017),
              child: IconButton(
                icon: const Icon(
                  Icons.close,
                  size: 26,
                  color: Color(0xFF000000),
                ),
                onPressed: () {},
              )),
        ],
        title: Text(
          global.globalData.movieTitleRent,
          style: SafeGoogleFont(
            'Lucida Bright',
            height * 0.03,
            fontWeight: FontWeight.w600,
            color: const Color(0xff797979),
          ),
        ),
        shape: const ContinuousRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xff707070))),
        backgroundColor: const Color(0xffffffff),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              // choose rent period
              Container(
                padding:
                    EdgeInsets.fromLTRB(0 * fem, 8 * fem, 0 * fem, 21 * fem),
                width: 393 * fem,
                height: height * 0.07,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff707070)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: const Offset(0, 2),
                      blurRadius: 2 * fem,
                    ),
                  ],
                ),
                child: Text(
                  'Choose Rent Period',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont(
                    'Lucida Bright',
                    height * 0.02,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff4b4a4a),
                  ),
                ),
              ),
              // noOftickets
              SizedBox(
                height: height * 0.06,
              ),
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                width * 0.09, 0, 0, 0 * fem),
                            child: Text(
                              'Renting Period',
                              style: SafeGoogleFont(
                                'Lucida Bright',
                                width * 0.045,
                                fontWeight: FontWeight.w600,
                                height: 1.2575 * ffem / fem,
                                color: const Color(0xff7e132b),
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              "(In Weeks)",
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Lucida Bright',
                                height * 0.02,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xff7e132b),
                              ),
                            ),
                          ),
                        ],
                      ),
                      // const Spacer(),
                      //period number changer
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, width * 0.03, 0),
                        // width: 120 * fem,
                        child: SizedBox(
                          width: width * 0.34,
                          height: 45 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15 * fem),
                              border:
                                  Border.all(color: const Color(0xff7e132b)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  highlightColor:
                                      const Color(0xFFFFFFFF).withOpacity(0),
                                  splashColor:
                                      const Color(0xFFFFFFFF).withOpacity(0),
                                  icon: Icon(
                                    Icons.remove,
                                    size: width * 0.045,
                                    color: const Color(0xff000000),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if (globalData.rentPeriod > 0) {
                                        globalData.rentPeriod--;
                                      }
                                      globalData.total =
                                          fees * globalData.rentPeriod;
                                    });
                                  },
                                ),
                                // const Spacer(),
                                SizedBox(
                                  width: 30 * fem,
                                  height: 22 * fem,
                                  child: Text(
                                    globalData.rentPeriod.toString(),
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'Adamina',
                                      width * 0.045,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: -0.3199999928 * fem,
                                      color: const Color(0xff000000),
                                    ),
                                  ),
                                ),
                                // const Spacer(),
                                IconButton(
                                  highlightColor:
                                      const Color(0xFFFFFFFF).withOpacity(0),
                                  splashColor:
                                      const Color(0xFFFFFFFF).withOpacity(0),
                                  icon: Icon(
                                    Icons.add,
                                    size: width * 0.045,
                                    color: const Color(0xff000000),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if (globalData.rentPeriod <
                                          limitStandard) {
                                        globalData.rentPeriod++;
                                      } else if (context.mounted) {
                                        Flushbar(
                                          duration: const Duration(seconds: 4),
                                          flushbarPosition:
                                              FlushbarPosition.TOP,
                                          backgroundColor:
                                              const Color(0xFFFF5c83),
                                          message:
                                              "You can't rent this movie for more than 12 weeks!",
                                        ).show(context);
                                      }
                                      globalData.total =
                                          fees * globalData.rentPeriod;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  //fees
                  Container(
                    margin: EdgeInsets.fromLTRB(width * 0.09, 10, 0, 0 * fem),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Rent Fees:- 01.50",
                        style: SafeGoogleFont(
                          'Lucida Bright',
                          18 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2575 * ffem / fem,
                          color: const Color(0xff7e132b),
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                ],
              ),

              const Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    // bottom navigator
                    Container(
                      height: 82 * fem,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff707070)),
                        color: const Color(0xffffffff),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              margin: const EdgeInsets.all(3),
                              child: Text(
                                "TOTAL: ${globalData.total} JOD",
                                style: SafeGoogleFont(
                                  'Lucida Bright',
                                  width * 0.055,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2575 * ffem / fem,
                                  color: const Color(0xff9e9e9e),
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              if (globalData.total > 0) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CheckOutRent()),
                                );
                              } else {
                                Flushbar(
                                  duration: const Duration(seconds: 4),
                                  flushbarPosition: FlushbarPosition.TOP,
                                  backgroundColor: const Color(0xFFFF5c83),
                                  message: "PLEASE CHOOSE RENTING PERIOD",
                                ).show(context);
                              }
                            },
                            child: Container(
                              width: 140 * fem,
                              height: 52 * fem,
                              padding: EdgeInsets.fromLTRB(0, 0, 10, 0 * fem),
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xff707070)),
                                  color: Color(0xff9a2044),
                                  borderRadius: BorderRadius.circular(54 * fem),
                                ),
                                child: Center(
                                  child: Text(
                                    'CONTINUE',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'Lucida Bright',
                                      height * 0.02,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xffffffff),
                                    ),
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
            ],
          ),
        ],
      ),
    );
  }

  printCheck(double width, double height) {
    return Padding(
      padding: EdgeInsets.only(bottom: height * 0.01),
      child: Container(
        width: width * 0.6,
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xff7e132b),
            width: 1,
          ),
          color: Color(0xffefefef),
        ),
        padding: const EdgeInsets.only(
          top: 19,
          bottom: 24,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Tickets", style: checkStyle()),
            //tickets
            SizedBox(height: 9.89),
            Row(
              children: [
                Text(
                  "2 Standard ticket ",
                  style: checkStyle1(),
                ),
                Spacer(),
                Text("16.00 JOD", style: checkStyle1()),
              ],
            ),
            SizedBox(height: 9.89),
            Row(
              children: [
                Text("2 Prime ticket", style: checkStyle1()),
                Spacer(),
                Text("32.00 JOD", style: checkStyle1()),
              ],
            ),
            Divider(
              thickness: 2,
            ),
            //food
            Text("Food And Drinks", style: checkStyle()),
            SizedBox(height: 9.89),
            Row(
              children: [
                Container(
                  width: width * 0.35,
                  child: Text("1 Fried Chicken", style: checkStyle1()),
                ),
                Spacer(),
                Text("03.00 JOD", style: checkStyle1()),
              ],
            ),
            SizedBox(height: 9.89),
            Row(
              children: [
                Container(
                  width: width * 0.35,
                  child: Text("4 Large Popcorn", style: checkStyle1()),
                ),
                Spacer(),
                Text("08.00 JOD", style: checkStyle1()),
              ],
            ),
            SizedBox(height: 9.89),
            Row(
              children: [
                Container(
                  width: width * 0.35,
                  child: Text("1 Extra Gum Peppermint Chewing Gum",
                      style: checkStyle1()),
                ),
                Spacer(),
                Text("00.50 JOD", style: checkStyle1()),
              ],
            ),
            SizedBox(height: 9.89),
            Row(
              children: [
                Container(
                  width: width * 0.35,
                  child: Text("4 Large Soft Drinks", style: checkStyle1()),
                ),
                Spacer(),
                Text("06.00 JOD", style: checkStyle1()),
              ],
            ),
            Divider(
              thickness: 2,
            ),
            Row(
              children: [
                Text("TOTAL",
                    textAlign: TextAlign.center, style: checkStyle1()),
                Spacer(),
                Text("65.50 JOD", style: checkStyle1()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
