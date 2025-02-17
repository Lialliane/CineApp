// import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/cine_app_icons.dart';
import 'package:myapp/services/Screens.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/cine_app_icons.dart';
import 'package:provider/provider.dart';
import '../reusable-widgets/reusable-widget.dart';
import 'admin-Home-page.dart';
import 'admin-profile-settings.dart';

const List<String> list = <String>[
  'First cinema',
  'Second cinema',
  'Third cinema'
];

class ScreensPage extends StatefulWidget {
  const ScreensPage({super.key});

  @override
  State<ScreensPage> createState() => _ScreensPageState();
}

class _ScreensPageState extends State<ScreensPage> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    ScreenService screens= ScreenService();
    return StreamProvider<QuerySnapshot?>.value(
        value: screens.screenData,
        initialData: null,
        builder: (context, snapshot) {
          print(snapshot);
          Screens screen = Provider.of<Screens>(context);
          return Scaffold(
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
              margin: const EdgeInsets.only(top: 10.0),
              child: Column(
                // group20pz9 (119:15482)
                children: [
                  Center(
                    child: Container(
                        padding: EdgeInsets.fromLTRB(
                            13.22 * fem, 12 * fem, 22.09 * fem, 10.56 * fem),
                        width: 385.63 * fem,
                        height: 51.79 * fem,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xff707070)),
                          color: const Color(0xffffffff),
                        ),
                        /*child: const DropdownButtonC()*/),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    child: SingleChildScrollView(
                      child: Container(
                        width: 353 * fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10.0),
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                child: Text(
                                  'ADD NEW SCREEN',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Lucida Bright',
                                    19.8325920105 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2575 * ffem / fem,
                                    color: Color(0xffff2153),
                                  ), // style
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          drawer: ASettingDrawer(),
          bottomNavigationBar: MBottomNavigationBarHandler(index: 1),
        );}
    );
  }
/*  _printScreens(Screens screen, double width, Snap) {

    return Column(
      children: [
        ListView.builder(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          itemCount: snapshot.data.length,
          itemBuilder: (BuildContext ctx, int i) {
            double width = MediaQuery.of(ctx).size.width;
            double height = MediaQuery.of(ctx).size.height;
            return Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x29000000),
                    offset: Offset(0 * fem, 3 * fem),
                    blurRadius: 1.5 * fem,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'SCREEN 1',
                      style: SafeGoogleFont(
                        'Lucida Bright',
                        22 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2575 * ffem / fem,
                        color: Color(0xff7e132b),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Text(
                      textAlign: TextAlign.right,
                      'X',
                      style: SafeGoogleFont(
                        'Lucida Sans',
                        22 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2575 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

*/

  Widget _contentListView() {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) => Card(
                child: ListTile(
              title: Text(index.toString()),
              onTap: () => print('hithere'),
            )));
  }

  Widget _contentGridView() {
    return GridView.builder(
        itemCount: 20,
        itemBuilder: (context, index) => Card(
                child: GridTile(
              child: Text(index.toString()),
            )),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3));
  }
}
