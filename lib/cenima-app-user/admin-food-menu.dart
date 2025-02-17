import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/cenima-app-user/Admin-add-food-.dart';
import 'package:myapp/cenima-app-user/edit-food.dart';
import 'package:myapp/reusable-widgets/reusable-widget.dart';
import '../shared/Theme.dart';

class AFoodMenu extends StatefulWidget {
  const AFoodMenu({super.key});

  @override
  State<AFoodMenu> createState() => _AFoodMenu();
}

// ignore: camel_case_types
class globalData {
  static String listTitle = "snacks";
  static String itemId = '';
}

class _AFoodMenu extends State<AFoodMenu> {
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
      onWillPop: () => showExitPopup(context),
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

                  //add item button
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AddFood()),
                        );
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: SizedBox(
                        width: 200 * fem,
                        height: 35 * fem,
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xffff2153),
                            borderRadius:
                                BorderRadius.circular(17.6289710999 * fem),
                          ),
                          child: Center(
                            child: Text(
                              'Add Item',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lato(
                                fontSize: 19.8325920105 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2575 * ffem / fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  //items list
                  // ignore: unnecessary_null_comparison
                  ListBuilder(height, width)
                ],
              ),
            ),
          ),
        ),
        drawer: ASettingDrawer(),
        bottomNavigationBar: MBottomNavigationBarHandler(index: 2),
      ),
    );
  }

// ignore: non_constant_identifier_names
  Widget ListBuilder(double height, double width) => StreamBuilder<
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
              int checkTypeCount = 0;
              Map<String, dynamic> data =
                  document.data()! as Map<String, dynamic>;
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
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const EditFood()),
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
                                            'Edit',
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
        );
      });
}
