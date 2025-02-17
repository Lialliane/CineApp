import 'package:another_flushbar/flushbar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/cenima-app-user/SeatSelection.dart';
import 'package:myapp/cenima-app-user/popcorn.dart';
import 'package:myapp/services/booking.dart';
import 'package:myapp/utils.dart';

import '../reusable-widgets/reusable-widget.dart';
import '../services/Movie service.dart';
import '../services/Screens.dart';
import '../services/ticket.dart';
import '../shared/Theme.dart';
import 'checkout-.dart';

class AddFoodToOrder extends StatefulWidget{
  final BookingDetails bookingDetails;
  final Ticket ticket;
  final Set selectedSeatsPre;
  final Set selectedSeatsSta;
  AddFoodToOrder(this.bookingDetails, this.ticket, this.selectedSeatsSta, this.selectedSeatsPre);
  @override
  State<AddFoodToOrder> createState() => _AddFoodToOrderState(bookingDetails,ticket, selectedSeatsSta, selectedSeatsPre);
}

class _AddFoodToOrderState extends State<AddFoodToOrder> {
  selectedSize? size= selectedSize.small;
  List<String> sizes=['small','large','meduim'];
  String? selectedS='';
  bool scrollComparer=false;
  Ticket ticket;
  Set selectedSeatsPre;
  Set selectedSeatsSta;

  BookingDetails bookingDetails;
  bool openCheck=true;
  final Stream<QuerySnapshot>? menuStream =
  FirebaseFirestore.instance.collection('food').snapshots();

  final CollectionReference<Map<String, dynamic>> _db =
  FirebaseFirestore.instance.collection('food');

  bool isDrinks = false;
  bool isCandy = false;
  Screens screen= Screens('screen 1', [], [], 57, 19, 152, 19, {28, 47}, {1, 10, 19});


  _AddFoodToOrderState(this.bookingDetails, this.ticket, this.selectedSeatsSta, this.selectedSeatsPre);

  @override
  Widget build(BuildContext context) {
    String total=getTotal(bookingDetails);

    MovieService ser= MovieService();
    Size deviceSize = MediaQuery.of(context).size;
    double width= deviceSize.width;
    double height= deviceSize.height;
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;


    return WillPopScope(
      onWillPop: () async {
        await showCancelPopup(context, width, height)? Navigator.pop(context):false;
        return Future.value(false);
      } ,
      child: Scaffold(
        appBar: AppBar(
          bottom:PreferredSize(
              preferredSize: Size.zero,
              child: Padding(
                padding:  EdgeInsets.only(left: width*0.07, bottom: 3),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: width*0.1),
                        child: Text(
                          'You can pick it up at the pickup area outside,\njust show your ticket!',
                          style: SafeGoogleFont (
                            'Lucida Bright',
                            height*0.015,

                            fontWeight: FontWeight.w400,
                            color: Color(0xff797979),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              )),
          backgroundColor: Color(0xffffffff),
          shape: ContinuousRectangleBorder(
              side: BorderSide(
                  width: 1,
                  color: Color(0xff707070)
              )
          ),
          actions: [Padding(
            padding: EdgeInsets.only(top: height*0.017),
            child: TextButton(
              onPressed: () async {
                await showCancelPopup(context, width, height)?Navigator.pop(context):null;
              },
              style: TextButton.styleFrom (
                padding: EdgeInsets.zero,
              ),
              child: Center(
                // closeHam (I56:1508;1:159)
                child: SizedBox(
                  width: 22*fem,
                  height: 22*fem,
                  child: Image.asset(
                    'assets/cenima-app-user/images/close-2r9.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),],
          toolbarHeight: height*0.1,
          iconTheme: IconThemeData(
            color: Color(0xffdd204a),
          ),
          leading: GestureDetector(
            child: Padding(
              padding:  EdgeInsets.only(top: height*0.017),
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,),
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        SeatSelection(bookingDetails.selectedStandard, bookingDetails.selectedPrime, bookingDetails, ticket,selectedSeatsSta,selectedSeatsPre)),
              );
            },
          ),
          title: Container(
            // themenuJHb (1:1682)
            margin: EdgeInsets.fromLTRB(width*0.1, 0*fem, 0*fem, 3*fem),
            padding: EdgeInsets.only(top: 7),
            child: Text(
              'Add food to order',
              style: SafeGoogleFont (
                'Lucida Bright',
                height*0.02,
                fontWeight: FontWeight.w600,
                color: Color(0xff797979),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  color: const Color(0xFFFFFFFF),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonBar(
                        buttonHeight: height*0.05,
                        alignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          TextButton(
                            onPressed: () {
                              setState(() {
                                globalData.listTitle = "snacks";
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(15),
                              child: Text(
                                "Snacks",
                                style: GoogleFonts.lato(
                                  fontSize: width * 0.045,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff464646),
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                globalData.listTitle = "candy";
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(15),
                              child: Text(
                                "Candy",
                                style: GoogleFonts.lato(
                                  fontSize: width * 0.045,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff464646),
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                globalData.listTitle = "drinks";
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(15),
                              child: Text(
                                "Drinks",
                                style: GoogleFonts.lato(
                                  fontSize: width * 0.045,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff464646),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // ignore: unnecessary_null_comparison
                ListBuilder(height, width),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    children: [
                      // bottom navigator
                      Container(
                        height: 82*fem,
                        decoration: BoxDecoration (
                          border: Border.all(color: Color(0xff707070)),
                          color: Color(0xffffffff),
                        ),
                        child: Row(
                          children: [
                            Spacer(),
                            TextButton(
                              onPressed: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            CheckOut(bookingDetails,ticket, selectedSeatsSta, selectedSeatsSta)),
                                  );

                              },
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                width: 140*fem,
                                height: 52*fem,
                                padding:  EdgeInsets.fromLTRB(0, 0, 10, 0*fem),
                                child: Container(
                                  // frame4XMX (I79:14546;104:8327;78:6712;18:475)
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: BoxDecoration (
                                    border: Border.all(color: Color(0xff707070)),
                                    color: Color(0xff9a2044),
                                    borderRadius: BorderRadius.circular(54*fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'CONTINUE',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Lucida Bright',
                                        height*0.02,
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
            Positioned(
              bottom: 0,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: TextButton(
                    onPressed: (){
                      setState(() {
                        openCheck=!openCheck;
                        scrollComparer=!scrollComparer;
                      });
                    },
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child:openCheck? Container(
                      padding: EdgeInsets.fromLTRB(42.5*fem, 0*fem, 0*fem, 0*fem),
                      width: 179*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(11*fem),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(top: height*0.015),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'TOTAL',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Lucida Bright',
                                    height*0.02,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff9e9e9e),
                                  ),
                                ),
                                Text(
                                  // jodaFw (I79:14546;104:8327;78:6709)
                                  '$total JOD',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Lucida Bright',
                                    height*0.02,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff777777),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            // arrowdownsigntonavigatea9T (I79:14546;104:8327;78:6711)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                            width: 25*fem,
                            height: 25*fem,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(11*fem),
                              child: Image.asset(
                                'assets/cenima-app-user/images/arrow-down-sign-to-navigate-i9B.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ):
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          printCheck(width,height),
                          Container(
                            padding: EdgeInsets.fromLTRB(42.5*fem, 0*fem, 0*fem, 0*fem),
                            width: 179*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(11*fem),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:  EdgeInsets.only(top: height*0.015),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Lucida Bright',
                                          height*0.02,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff9e9e9e),
                                        ),
                                      ),
                                      Text(
                                        // jodaFw (I79:14546;104:8327;78:6709)
                                        '',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Lucida Bright',
                                          height*0.02,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff777777),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  // arrowdownsigntonavigatea9T (I79:14546;104:8327;78:6711)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                  width: 25*fem,
                                  height: 25*fem,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(11*fem),
                                    child: Image.asset(
                                      'assets/cenima-app-user/images/arrow-down-sign-to-navigate-i9B.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )])
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  getTotal(BookingDetails bookingDetils){
    String total='';
    setState(() {
      total=bookingDetails.getTotal().toString();
    });
    return total;
  }

  printCheck(double width, double height){
    return SingleChildScrollView(
      child: StatefulBuilder(
          builder: (context, setState) {
            return Padding(
              padding: EdgeInsets.only(bottom: height*0.01),
              child: Container(
                constraints: BoxConstraints(
                    maxHeight: height*0.77
                ),
                width: width*0.6,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff7e132b), width: 1, ),
                  color: Color(0xffefefef),
                ),
                padding: const EdgeInsets.only(top: 19, bottom: 24, ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Text(
                          "Tickets",
                          style: checkStyle()
                      ),
                      //tickets
                      SizedBox(height: 9.89),
                      Row(
                        children:  [
                          Text(
                            "${bookingDetails.selectedStandard} Standard ticket ",
                            style: checkStyle1(),
                          ),
                          Spacer(),
                          Text(
                              "${bookingDetails.getPrice(bookingDetails.selectedStandard, 8).toString()} JOD",
                              style: checkStyle1()
                          ),
                        ],
                      ),
                      SizedBox(height: 9.89),
                      Row(
                        children: [
                          Text(
                              "${bookingDetails.selectedPrime} Prime ticket ",
                              style: checkStyle1()
                          ),
                          Spacer(),
                          Text(
                              "${bookingDetails.getPrice(bookingDetails.selectedPrime, 16).toString()} JOD",
                              style: checkStyle1()
                          ),
                        ],
                      ),
                      Divider(thickness: 1.5,),
                      //food
                      (bookingDetails.selectedFood!.isEmpty)?Container():Text(
                          "Food And Drinks",
                          style: checkStyle()
                      ),
                      Container(
                        height: height*0.077*(bookingDetails.selectedFood!.length),
                        child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: bookingDetails.selectedFood!.length,
                            itemBuilder:(context, index) {
                              return Column(
                                  children:[
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                              width: width*0.4,
                                              child: Text('${bookingDetails.selectedFoodNo![index]} ${(bookingDetails.selectedFoodSize![index]=='s'?'Small':bookingDetails.selectedFoodSize![index]=='m'?'Medium':bookingDetails.selectedFoodSize![index]=='l'?'Large':'')} ${(bookingDetails.selectedFoodFlavor![index].length==1)?bookingDetails.selectedFoodFlavor![index][0]+' ':''}${bookingDetails.selectedFood![index]}',

                                                  style: checkStyle1()
                                              ),
                                            ),
                                            (bookingDetails.selectedFoodFlavor![index].length==1)?Container():
                                            Container(
                                              width: width*0.4,
                                              child: Text(''
                                                  '* ${flavorPrinter(bookingDetails.selectedFoodFlavor![index], bookingDetails.selectedFoodFlavorNo![index])}',
                                                style: SafeGoogleFont (
                                                  'Segoe UI',
                                                  height *0.014,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Text(
                                            '${(bookingDetails.selectedFoodPrice![index]*bookingDetails.selectedFoodNo![index]).toString()} JOD',
                                            style: checkStyle1()
                                        ),
                                      ],
                                    ),
                                    bookingDetails.selectedFood!.length==index?Container():SizedBox(height: 9.89),
                                  ]);
                            }
                        ),
                      ),
                      Divider(thickness: 1.5,),
                      Row(
                        children: [
                          Text(
                              "TOTAL",
                              textAlign: TextAlign.center,
                              style: checkStyle1()
                          ),
                          Spacer(),
                          Text(
                              '${bookingDetails.getTotal().toString()} JOD',
                              style: checkStyle1()
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
      ),
    );
  }

  flavorPrinter(List flavor, List noOfFlavor){
    String Allflavors='';
    for(int i=0; i<flavor.length;i++){
      Allflavors+='${noOfFlavor[i]} ${flavor[i]}${(i==flavor.length-1)?'':','}';
    }
    return Allflavors;

  }

  Widget ListBuilder(double height, double width) => StreamBuilder<
      QuerySnapshot>(
      stream: menuStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Column(
            children: [
              const Text('Something went wrong'),
              Spacer(),
            ],
          );
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Column(
            children: [
              SpinKitFadingCircle(
                color: mainColor,
              ),
              Spacer(),
            ],
          );
        }

        return Expanded(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 1,
            width: width * 1,
            child: ListView(
              children: snapshot.data!.docs.map((DocumentSnapshot document) {
                int checkTypeCount = 0;
                Map<String, dynamic> data =
                document.data()! as Map<String, dynamic>;
                String a=data['sizes'];
                List<String> sizes = (a.split(','));
                String? selectedSize=sizes[0];
                String b=(data['flavors']);
                List<String> flavors= (b.split(','));
                String? selectedFlavor=flavors[0];
                String c=data['price'];
                List<String> prices= (c.split(','));


                //if list is empty
                if (data['type'] != globalData.listTitle) {
                  checkTypeCount += 1;
                  if (data.length == checkTypeCount) {
                    return Center(
                      child: Text(
                        'This List is empty',
                        style: TextStyle(
                          fontSize: width * 0.05,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xffff1e60),
                        ),
                      ),
                    );
                  }
                }
                // items
                return Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Container(
                      child: data['type'] == globalData.listTitle
                          ? SizedBox(
                        height: height * 0.2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: height * 1,
                              width: width * 0.4,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xff707070)),
                                color: data['image'] == ''
                                    ? const Color(0xFFFFFFFF)
                                    .withOpacity(0.3)
                                    : const Color(0xFFFFFFFF),
                              ),
                              child: data['image'] == ''
                                  ? const Text('No Image Available')
                                  : Image.asset(
                                data['image'],
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            Container(
                              // alignment: Alignment.centerLeft,
                              width:
                              MediaQuery.of(context).size.width * 0.6,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10),
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10),
                                          child: Text(
                                            data['name'],
                                            softWrap: true,
                                            style: GoogleFonts.lato(
                                              fontSize: width * 0.045,
                                              fontWeight: FontWeight.w700,
                                              color:
                                              const Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: IconButton(
                                          onPressed: () {
                                            _db.doc(document.id).delete();
                                          },
                                          icon: const Icon(
                                              Icons.delete_outline),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      globalData.itemId = document.id;
                                      showModalBottomSheet<dynamic>(
                                        isScrollControlled: true,
                                        context: context,
                                        builder: (context) {
                                          return modeBottomSheet(height, width,data,flavors,sizes,selectedSize,selectedFlavor ,prices);
                                        }
                                      );
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 20),
                                      decoration: const BoxDecoration(
                                          color: Color(0xffff2153),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100))),
                                      child: Text(
                                        'Add',
                                        style: GoogleFonts.lato(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                          : Container()),
                );
              }).toList(),
            ),
          ),
        );
      });

  modeBottomSheet(double height, double width, Map<String, dynamic> data, List<String> flavors,
      List<String> sizes, String? selectedSize, String? selectedFlavor, List<String> prices) {
    int noOfSelectedFood=0;
    int selectedSizeNo=0;
    int selectedFlavorNo=0;
    int? intFoodLocator=foodLocator(bookingDetails.selectedFood, bookingDetails.selectedFoodSize, data['name'], sizes[selectedSizeNo]);
    int notNullFoodLocator=intFoodLocator??0;
    int? currentlyInOrder=(bookingDetails.selectedFood!.isNotEmpty)?bookingDetails.selectedFoodNo![intFoodLocator ?? 0]:null;

    return SingleChildScrollView(
      child: StatefulBuilder(
        builder: (context, setState) {
          return Wrap(
            children: [
              Container(
                color: Colors.black45,
                child: Container(
                  decoration: BoxDecoration (
                    border: Border.all(color: Color(0xff707070)),
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.only (
                      topLeft: Radius.circular(width*0.08),
                      topRight: Radius.circular(width*0.08),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: TextButton.styleFrom (
                          ),
                          child: SizedBox(
                            width: 22.24,
                            height: 22.24,
                            child: Image.asset(
                              'assets/cenima-app-user/images/close-7C1.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 320,
                        height: 180,
                        decoration: BoxDecoration (
                          border: Border.all(color: Color(0xff9a2044)),
                          color: Color(0xffffffff),
                        ),
                        child: Center(
                          // bulkmovietheaterpopcornezq (84:4872)
                          child: Image.asset(
                            data['image'],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Row(
                        children:[
                          Container(
                            padding: EdgeInsets.only(left: width*0.08),
                            width: width*0.57,
                            child: Text(
                              data['name'],
                              textAlign: TextAlign.left,
                              style: SafeGoogleFont (
                                'Segoe UI',
                                height *0.026,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 4.0),
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        if(noOfSelectedFood>0){
                                          noOfSelectedFood--;
                                        }
                                      });
                                    },
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Text(
                                      '-',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Segoe UI',
                                        23,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  noOfSelectedFood.toString(),
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Adamina',
                                    17,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: -0.3199999928,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      if(intFoodLocator==null){
                                        if(noOfSelectedFood<10){
                                          noOfSelectedFood++;
                                        }
                                        else if (context.mounted) {
                                          Flushbar(
                                            duration:
                                            const Duration(seconds: 4),
                                            flushbarPosition:
                                            FlushbarPosition.TOP,
                                            backgroundColor:
                                            const Color(0xFFFF5c83),
                                            message: "You can't add more than 10 Items!",
                                          ).show(context);
                                        }
                                      }
                                      else{
                                        if(noOfSelectedFood<(10-currentlyInOrder!)){
                                          noOfSelectedFood++;
                                        }
                                        else if (context.mounted) {
                                          Flushbar(
                                            duration:
                                            const Duration(seconds: 4),
                                            flushbarPosition:
                                            FlushbarPosition.TOP,
                                            backgroundColor:
                                            const Color(0xFFFF5c83),
                                            message: "You can't add more than 10 Items!",
                                          ).show(context);
                                        }
                                      }

                                    });
                                  },
                                  style: TextButton.styleFrom (
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Text(
                                    '+',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Adamina',
                                      23,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: -0.3199999928,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8,),
                      Padding(
                        padding:  EdgeInsets.only(left: width*0.05, right: width*0.06),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              (flavors[0]=='')?Container():
                              Container(
                                transform: Matrix4.translationValues(-10.0, 0, 0.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Flavor:- ',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Tw Cen MT',
                                        height* 0.023,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff707070),
                                      ),
                                    ),
                                    Container(
                                      width: 0.6*width,
                                        child: Divider(thickness: 2,)),
                                  ],
                                ),
                              ),
                              (flavors[0]=='')?Container():
                              SizedBox(
                                height: flavors.length*height*0.06,
                                child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: flavors.length,
                                  itemBuilder:(context, index) =>
                                      Row(
                                        children: [
                                          Container(
                                            child: Text(
                                              flavors[index],
                                              style: SafeGoogleFont (
                                                'Tw Cen MT',
                                                height* 0.022,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff7e132b),
                                              ),
                                            ),
                                          ),
                                          Spacer(),
                                          SizedBox(
                                            width: 30,
                                            child: RadioListTile(
                                              dense: true,
                                              value: flavors[index],
                                              groupValue: selectedFlavor,
                                              onChanged: (String? value) {
                                                setState(() {
                                                  selectedFlavor = value;
                                                  selectedFlavorNo=index;
                                                });
                                              },
                                            ),
                                          ),
                                        ],
                                      ),

                                ),
                              ),
                              (sizes[0]=='')?Container():
                              Container(
                                transform: Matrix4.translationValues(-10.0, 0, 0.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Size:- ',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Tw Cen MT',
                                        height* 0.023,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff707070),
                                      ),
                                    ),
                                    Container(
                                        width: 0.6*width,
                                        child: Divider(thickness: 2,)),
                                  ],
                                ),
                              ),
                              (sizes[0]=='')?Container():
                              SizedBox(
                                height: sizes.length*height*0.060,
                                child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: sizes.length,
                                  itemBuilder:(context, index) =>
                                      Row(
                                        children: [
                                          Container(
                                            child: Text(
                                              sizes[index]=='s'?'Small':sizes[index]=='m'?'Medium':sizes[index]=='l'?'Large':'',
                                              style: SafeGoogleFont (
                                                'Tw Cen MT',
                                                height* 0.022,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff7e132b),
                                              ),
                                            ),
                                          ),
                                          Spacer(),
                                          SizedBox(
                                            width: 30,
                                            child: RadioListTile(
                                              dense: true,
                                              value: sizes[index],
                                              groupValue: selectedSize,
                                              onChanged: (String? value) {
                                                setState(() {
                                                  selectedSize = value;
                                                  selectedSizeNo=index;
                                                  intFoodLocator=foodLocator(bookingDetails.selectedFood, bookingDetails.selectedFoodSize, data['name'], sizes[selectedSizeNo]);
                                                  currentlyInOrder=(bookingDetails.selectedFoodNo!.isNotEmpty)?bookingDetails.selectedFoodNo![intFoodLocator ?? 0]:null;
                                                  notNullFoodLocator=intFoodLocator??0;
                                                });
                                              },
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
                      Divider(thickness: 2,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // friedchickqky (I87:5651;87:5796)
                            margin: EdgeInsets.fromLTRB(width*0.1, 0, 0, 10),
                            child: Text(
                                (double.parse(prices[selectedSizeNo])*noOfSelectedFood).toString(),
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Tw Cen MT',
                                height *0.025,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff7e132b),
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(right: width*0.1),
                            child: TextButton(
                              // secondarybuttonPR7 (I87:5651;87:5797)
                              onPressed: () {
                                setState(() {
                                  if(intFoodLocator==null){
                                    bookingDetails.selectedFood!.add(data['name']);
                                    bookingDetails.selectedFoodSize!.add(sizes[selectedSizeNo]);
                                    bookingDetails.selectedFoodFlavor!.add([flavors[selectedFlavorNo]]);
                                    bookingDetails.selectedFoodFlavorNo!.add([noOfSelectedFood]);
                                    bookingDetails.selectedFoodNo!.add(noOfSelectedFood);
                                    bookingDetails.selectedFoodPrice!.add(double.parse(prices[selectedSizeNo]));
                                    print("this is current selected food${bookingDetails.selectedFood.toString()}");
                                    print(" this is current selected flavor${bookingDetails.selectedFoodFlavor.toString()}");
                                  }
                                  else {
                                    bookingDetails.selectedFoodNo![notNullFoodLocator]=bookingDetails.selectedFoodNo![notNullFoodLocator]+noOfSelectedFood;
                                    int count=0;
                                    int index=0;
                                    if(bookingDetails.selectedFoodFlavor![notNullFoodLocator]!=null){
                                      print("insidefirst if");
                                      for(int i=0;i<bookingDetails.selectedFoodFlavor![notNullFoodLocator].length ;i++){
                                        print("insidefor");
                                        if(bookingDetails.selectedFoodFlavor![notNullFoodLocator][i]==flavors[selectedFlavorNo]){
                                          index=i;
                                        }
                                        else{
                                          count++;
                                        }
                                      }
                                      print('this is count $count');
                                      print('this is index $index');

                                      if(count==bookingDetails.selectedFoodFlavor![notNullFoodLocator].length){
                                        print('if it doesnt exist add it');
                                        bookingDetails.selectedFoodFlavor![notNullFoodLocator].add(flavors[selectedFlavorNo]);
                                        bookingDetails.selectedFoodFlavorNo![notNullFoodLocator].add(noOfSelectedFood);
                                        print(bookingDetails.selectedFoodFlavor.toString());
                                      }
                                      else{
                                        print('else increase the number');
                                        bookingDetails.selectedFoodFlavorNo![notNullFoodLocator][index]+=noOfSelectedFood;
                                      }
                                    }
                                  }
                                });
                                getTotal(bookingDetails);
                                print(" did flavors update?${bookingDetails.selectedFoodFlavor.toString()}");
                                Navigator.pop(context);
                              },
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(22, 2, 22, 2),
                                decoration: BoxDecoration (
                                  color: Color(0xffff2153),
                                  borderRadius: BorderRadius.circular(17.6289710999),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x29000000),
                                      offset: Offset(0, 3.3054320812),
                                      blurRadius: 0.2754526734,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    'ADD',
                                    style: GoogleFonts.basic(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        }
      ),
    );
  }


  foodLocator(List<String>? selectedFood, List<String>? selectedFoodSize,String dataName,String currentSize){
    int? doesItExist;
    for(int i=0;i<selectedFood!.length;i++){
      if(selectedFood!.isNotEmpty){
        if(selectedFood[i]==dataName){
          if(selectedFoodSize![i]==currentSize){
            doesItExist=i;
          }
        }
      }
    }
    return doesItExist;
  }
}
enum selectedFlavor { butter, caramel, cheese }
enum selectedSize{small,medium, large}

class globalData {
  static String listTitle = "snacks";
  static String itemId = '';
}
