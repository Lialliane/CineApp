import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/cenima-app-user/Admin-add-food-.dart';
import 'package:myapp/cenima-app-user/edit-food.dart';
import 'package:myapp/reusable-widgets/reusable-widget.dart';
import '../shared/Theme.dart';
import 'package:myapp/cenima-app-user/home-page.dart';

class FoodMenu extends StatefulWidget {
  const FoodMenu({super.key});

  @override
  State<FoodMenu> createState() => _FoodMenu();
}

// ignore: camel_case_types
class globalData {
  static String listTitle = "snacks";
  static String itemId = '';
}

class _FoodMenu extends State<FoodMenu> {
  // List<String> menuList = [];
  // final _db = FirebaseFirestore.instance;
  final Stream<QuerySnapshot>? menuStream =
      FirebaseFirestore.instance.collection('food').snapshots();

  final CollectionReference<Map<String, dynamic>> _db =
      FirebaseFirestore.instance.collection('food');

  bool isDrinks = false;
  bool isCandy = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return WillPopScope(
      onWillPop: () {
        backNavigator(context, HomePage());
        return Future.value(false);
      },
      child: Scaffold(
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            const SliverAppBar(
              iconTheme: IconThemeData(
                color: Color(0xff000000),
              ),
              backgroundColor: Color(0xffffffff),
              floating: true,
              snap: true,
              centerTitle: true,
              title: Text(
                'Ciné',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Nature Beauty Personal Use',
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffdd204a),
                ),
              ),
            ),
          ],
          body: Container(
            color: const Color(0xfff1f1f1),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: const Color(0xFFFFFFFF),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ButtonBar(
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
                  listBuilder(height, width)
                  // : const Text('empty list'),
                ],
              ),
            ),
          ),
        ),
        drawer: ASettingDrawer(),
        bottomNavigationBar: UBottomNavigationBarHandler(index: 2),
      ),
    );
  }

// ignore: non_constant_identifier_names
  Widget listBuilder(double height, double width) => StreamBuilder<
          QuerySnapshot>(
      stream: menuStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return SpinKitFadingCircle(
            color: mainColor,
          );
        }

        return SizedBox(
          height: MediaQuery.of(context).size.height * 1,
          width: width * 1,
          child: ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              Map<String, dynamic> data =
                  document.data()! as Map<String, dynamic>;
              int checkTypeCount = 0;
              List<String> sizelist = [];
              String size = '';
              data['sizes'].contains('s') ? sizelist.add('Small') : null;
              data['sizes'].contains('m') ? sizelist.add('Medium') : null;
              data['sizes'].contains('l') ? sizelist.add('Large') : null;

              size = sizelist.join(',');

              if (data['type'] != globalData.listTitle) {
                checkTypeCount += 1;
                if (data.length == checkTypeCount) {
                  return const Center(
                    child: Text(
                      'This List is empty',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffff1e60),
                      ),
                    ),
                  );
                }
              }
              return Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Container(
                    child: data['type'] == globalData.listTitle
                        ? SizedBox(
                            height: MediaQuery.of(context).size.height * 0.2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 1,
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
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
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        data['name'],
                                        softWrap: true,
                                        style: GoogleFonts.lato(
                                          fontSize: width * 0.045,
                                          fontWeight: FontWeight.w700,
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                      const Padding(padding: EdgeInsets.all(5)),
                                      data['flavors'] == ''
                                          ? Container()
                                          : Text(
                                              data['flavors'],
                                              softWrap: true,
                                              style: GoogleFonts.lato(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                  color:
                                                      const Color(0xFF616161)),
                                            ),
                                      const Padding(padding: EdgeInsets.all(5)),
                                      data['sizes'] == ''
                                          ? Container()
                                          : Text(
                                              size,
                                              softWrap: true,
                                              style: GoogleFonts.lato(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                  height: 1.2575,
                                                  color:
                                                      const Color(0xFF616161)),
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
        );
      });
}
