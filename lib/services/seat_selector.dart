import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/bloc/dateCubit.dart';
import 'package:myapp/cenima-app-user/screens page.dart';
import 'package:myapp/shared/Theme.dart';
import '../utils.dart';
import 'Screens.dart';


class SeatSelectionWidget extends StatefulWidget {
  @override
  State<SeatSelectionWidget> createState() => _SeatSelectionWidgetState();
}

class _SeatSelectionWidgetState extends State<SeatSelectionWidget> {
//  SeatSelectionWidget(this.noOfSeatsChosenP, this.noOfSeatsChosenS);
  late Size deviceSize;

  List<String> rowNames = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I','J','K'];

  Set selectedSeatsPre= {};

  Set selectedSeatsSta= {};

  int noOfSeatsChosenP=2;

  int noOfSeatsChosenS=2;

  Screens screen= Screens('screen 1', [], [], 57, 19, 151, 19, {28, 47}, {1, 10, 19});

  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    double height= deviceSize.height;
    double width=deviceSize.width;
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: deviceSize.width * 0.02,
                vertical: deviceSize.width * 0.02),
            color: Colors.white,
            height: deviceSize.height * 0.635,
            width: deviceSize.width * 1.66,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    //first three row names
                    Container(
                      width: deviceSize.width * 0.03,
                      height: deviceSize.height * 0.17,
                      padding: EdgeInsets.only(top: deviceSize.height *0.032),
                      child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 3,
                          itemBuilder: ((context, index) {
                            return Container(
                              height: 35,
                              width: 28,
                              child: Center(
                                child: Text(
                                  //row names
                                  rowNames[index],
                                  style: SafeGoogleFont (
                                    'Lucida Bright',
                                    height*0.017,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff797979),
                                  ),
                                ),
                              ),
                            );
                          })),
                    ),
                    //the first three seats rows grid builder
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _getHeading(
                          //ticket object + royale seats
                            "premium"),
                        Divider(
                          height: deviceSize.height * 0.009,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: deviceSize.width * 0.02,
                              vertical: deviceSize.width * 0.02),
                          height: deviceSize.height * 0.154,
                          width: deviceSize.width * 1.58,
                          child: GridView.extent(
                            physics:NeverScrollableScrollPhysics(),
                              mainAxisSpacing: 5,
                              maxCrossAxisExtent: 32,
                              children: List.generate(57, (index) {
                                return (!screen.gapsPremuim.contains(index))
                                    ? GestureDetector(
                                        onTap: () {
                                          print(selectedSeatsPre.contains(index).toString());
                                          print(index);
                                          //royale booked list
                                          if(!screen.bookedPremuim.contains(index)){
                                            // selected seats, is it equal to the number of seats chosen
                                            if (selectedSeatsPre.length == noOfSeatsChosenP) {
                                              if(selectedSeatsPre.contains(index)) {
                                                setState(() {
                                                  selectedSeatsPre.remove(index);
                                                });                                              }
                                              else if (context.mounted) {
                                                Flushbar(
                                                  duration:
                                                  const Duration(seconds: 4),
                                                  flushbarPosition:
                                                  FlushbarPosition.TOP,
                                                  backgroundColor:
                                                  const Color(0xFFFF5c83),
                                                  message: "The number of seats have exceeded the number you selected!",
                                                ).show(context);
                                              }
                                            }
                                            else {
                                              if(selectedSeatsPre.contains(index)) {
                                                  setState(() {
                                                    selectedSeatsPre.remove(index);
                                                  });
                                              }
                                              else {
                                                setState(() {
                                                  selectedSeatsPre.add(index);
                                                });
                                                }
                                            }
                                          }
                                        },
                                        child: Container(
                                          padding: EdgeInsets.all(2),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            // props 2 is royale booking
                                            /*color: (selectedSeatsPre.contains(index))
                                                ? mainColor
                                                : (screen.bookedPremuim.contains(index))
                                                  ? Colors.grey
                                                  : Colors.white,*/
                                           /* border: Border.all(
                                                color: (screen.bookedPremuim.contains(index))
                                                ? Colors.grey
                                                : Colors.redAccent,
                                                width: 2),*/
                                          ),
                                          height: 28,
                                          width: 28,
                                          margin: EdgeInsets.all(2),
                                          child: Stack(
                                            children: [
                                              Center(
                                                child: (selectedSeatsPre.contains(index))
                                                    ? Image.asset(
                                          'assets/cenima-app-user/images/armchair-2-Xos.png',
                                          fit: BoxFit.cover,
                                        )
                                                    : (screen.bookedPremuim.contains(index))
                                                    ? Image.asset(
                                                  'assets/cenima-app-user/images/armchair-2-jYh.png',
                                                  fit: BoxFit.cover,
                                                )
                                                    : Image.asset(
                                                  'assets/cenima-app-user/images/armchair-2-wQ9.png',
                                                  fit: BoxFit.cover,
                                                ),

                                              ),
                                              Center(
                                                  child: Text(((index % screen.noOfSeatsinStandardRow) + 1).toString()
                                                    , style: SafeGoogleFont (
                                                      'Lucida Bright',
                                                      height*0.017,
                                                      fontWeight: FontWeight.w600,
                                                      color: Colors.black54,
                                                    ),)),
                                            ],
                                          ),

                                        ),
                                      )
                                    : Container(
                                        height: 28,
                                        width: 28,
                                        margin: EdgeInsets.all(2),
                                      );
                              })),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: deviceSize.width * 0.03,
                      height: deviceSize.height * 0.37,
                      padding: EdgeInsets.only(top: deviceSize.height *0.032),
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                          itemCount: 8,
                          itemBuilder: ((context, index) {
                            return Container(
                              height: 32,
                              width: 28,
                              child: Center(
                                child: Text(
                                  rowNames[index+3],
                                  style: SafeGoogleFont (
                                    'Lucida Bright',
                                    height*0.017,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff797979),
                                  ),
                                ),
                              ),
                            );
                          })),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _getHeading("Standard"),
                        Divider(
                          height: deviceSize.height * 0.009,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: deviceSize.width * 0.02,
                              vertical: deviceSize.width * 0.02),
                          height: deviceSize.height * 0.35,
                          width: deviceSize.width * 1.55,
                          child: GridView.extent(
                            physics: NeverScrollableScrollPhysics(),
                              mainAxisSpacing: 1,
                              maxCrossAxisExtent: 32,
                              children: List.generate(screen.noOfSeatsStandard, (index) {
                                return (!screen.gapsStandard.contains(((index % screen.noOfSeatsinStandardRow) + 1)))
                                    ? GestureDetector(
                                      onTap: () {
                                        if(!screen.bookedStandard.contains(index)){
                                          if (selectedSeatsSta.length == noOfSeatsChosenS) {
                                            if(selectedSeatsSta.contains(index)) {
                                              setState(() {
                                                selectedSeatsSta.remove(index);
                                              });
                                            }
                                            else{print("flashbar you exeeded the no of seats");}
                                          }
                                          else {
                                            if(selectedSeatsSta.contains(index)) {
                                              setState(() {
                                                selectedSeatsSta.remove(index);
                                              });                                            }
                                            else {setState(() {
                                              selectedSeatsSta.add(index);
                                            });}
                                          }
                                        }
                                      },
                                      child: Container(
                                          padding: const EdgeInsets.all(2),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            /*color: (selectedSeatsSta.contains(index))
                                                ? mainColor
                                                : (screen.bookedStandard.contains(index))
                                                  ? Colors.grey
                                                  : Colors.white,*/
/*
                                            border:Border.all(
                                              color: (screen.bookedStandard.contains(index))
                                                  ? Colors.grey
                                                  : Colors.green,
                                              width: 2),
*/
                                          ),
                                          height: 28,
                                          width: 28,
                                          margin: const EdgeInsets.all(2),
                                          child: Stack(
                                            children: [
                                              Center(
                                                child: (selectedSeatsSta.contains(index))
                                                    ? Image.asset(
                                                        'assets/cenima-app-user/images/armchair-qQh.png',
                                                    fit: BoxFit.cover,
                                                    )
                                                    : (screen.bookedStandard.contains(index))
                                                    ? Image.asset(
                                                    'assets/cenima-app-user/images/armchair-HhF.png',
                                                    fit: BoxFit.cover,)
                                                    : Image.asset(
                                                  'assets/cenima-app-user/images/armchair-4jF.png',
                                                  fit: BoxFit.fill,
                                                ),

                                              ),
                                              Center(
                                                  child: Text(((index % screen.noOfSeatsinStandardRow) + 1).toString()
                                                    , style: SafeGoogleFont (
                                                      'Lucida Bright',
                                                      height*0.017,
                                                      fontWeight: FontWeight.w600,
                                                      color: Colors.black54,
                                                    ),)),
                                            ],
                                          ),
                                        ),
                                    )
                                    : Container(
                                        height: 28,
                                        width: 28,
                                        margin: const EdgeInsets.all(2),
                                      );
                              })),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: deviceSize.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    _getExitHeading('1', deviceSize),
                    _getScreenContainer(deviceSize),
                    _getExitHeading('2', deviceSize),
                  ],
                ),
              ],
            ),
          ),
        );
      }

  _getHeading(String heading) {
    return Text(heading.toUpperCase(),
        style: const TextStyle(
            color: Colors.grey, fontWeight: FontWeight.w800, fontSize: 12));
  }

  _getExitHeading(String gate, Size deviceSize) {

    return Container(
      padding: EdgeInsets.all(deviceSize.width * 0.005),
      height: deviceSize.height * 0.025,
      width: deviceSize.width * 0.12,
      decoration: const BoxDecoration(
        color: Colors.black54,
      ),
      child: Center(
          child: Text(
        "EXIT-$gate",
        style: const TextStyle(color: Colors.white),
      )),
    );
  }

  _getScreenContainer(Size deviceSize) {
    return Container(
      height: deviceSize.height * 0.02,
      width: deviceSize.width * 1.1,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(deviceSize.width * 0.2),
            topLeft: Radius.circular(deviceSize.width * 0.2),
          ),
          gradient: const LinearGradient(
            colors: [Colors.white, Colors.blueGrey],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0, 1],
          )),
    );
  }
}