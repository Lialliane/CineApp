import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

import '../services/Movie service.dart';
import '../services/items_skeleton.dart';
import '../shared/Theme.dart';

class SearchMovie extends StatefulWidget {
  const SearchMovie({super.key});

  @override
  State<SearchMovie> createState() => _SearchMovie();
}

class _SearchMovie extends State<SearchMovie> {
  final TextEditingController _controller = TextEditingController();
  List searchResult = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      searchResult = MovieService().Search(_controller.text) as List;
      searchResult;
    });
    MovieService().Search(_controller.text);
  }

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    MovieService ser = MovieService();
    double width = deviceSize.width;

    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            leading: GestureDetector(
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            iconTheme: const IconThemeData(
              color: Color(0xffdd204a),
            ),
            backgroundColor: const Color(0xffffffff),
            floating: true,
            snap: true,
            centerTitle: true,
            title: const Text(
              'Update Movie List',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Color(0xff000000),
              ),
            ),
          ),
        ],
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: Column(
            children: [
              Text(
                'Pick movie From List',
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'Lucida Bright',
                  22 * ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.2575 * ffem / fem,
                  color: const Color(0xff3b3b3b),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixIcon: IconButton(
                          icon: _controller.text == ""
                              ? const Icon(Icons.search)
                              : const Icon(Icons.close),
                          onPressed: () {
                            _controller.clear();
                          }),
                      hintText: 'Search Movie Here'),
                ),
              ),
              FutureBuilder(
                future: Future.wait([ser.Search(_controller.text)]),
                builder: (BuildContext ctx, AsyncSnapshot<dynamic> snapshot) {
                  ConnectionState state = snapshot.connectionState;

                  // loading
                  if (state == ConnectionState.waiting) {
                    return const Center(child: ItemSkeletonV(length: 10));
                  }
                  // error
                  else if (snapshot.hasError) {
                    print(snapshot.error);
                    return const Center(
                      child: Text(
                        'Loading Error',
                        style: TextStyle(fontSize: 20, color: Colors.red),
                      ),
                    );
                  }
                  // loaded
                  else {
                    return _printMovies(ser, width);
                  }
                },
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: SizedBox(
                        width: 150 * fem,
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
                              'Add',
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
    // Container(
    //   width: double.infinity,
    //   child: Container(
    //     // adminsearchandaddmovie3L1 (143:18431)
    //     width: double.infinity,
    //     height: 852*fem,
    //     decoration: BoxDecoration (
    //       color: Color(0xfff1f1f1),
    //     ),
    //     child: Stack(
    //       children: [
    //         Positioned(
    //           // rectangleseatstypem33 (143:18432)
    //           left: 0*fem,
    //           top: 96*fem,
    //           child: Align(
    //             child: SizedBox(
    //               width: 391*fem,
    //               height: 750*fem,
    //               child: Container(
    //                 decoration: BoxDecoration (
    //                   color: Color(0xfff1f1f1),
    //                 ),
    //               ),
    //             ),
    //           ),
    //         ),
    //         Positioned(
    //           // mainbuttonHvV (143:18433)
    //           left: 96*fem,
    //           top: 797*fem,
    //           child: TextButton(
    //             onPressed: () {},
    //             style: TextButton.styleFrom (
    //               padding: EdgeInsets.zero,
    //             ),
    //             child: Container(
    //               width: 201*fem,
    //               height: 37*fem,
    //               child: Container(
    //                 // frame4cLV (I143:18433;18:475)
    //                 width: double.infinity,
    //                 height: double.infinity,
    //                 decoration: BoxDecoration (
    //                   border: Border.all(color: Color(0xff707070)),
    //                   color: Color(0xffff2153),
    //                   borderRadius: BorderRadius.circular(54*fem),
    //                 ),
    //                 child: Center(
    //                   child: Text(
    //                     'SAVE',
    //                     textAlign: TextAlign.center,
    //                     style: SafeGoogleFont (
    //                       'Lucida Bright',
    //                       19.8325920105*ffem,
    //                       fontWeight: FontWeight.w600,
    //                       height: 1.2575*ffem/fem,
    //                       color: Color(0xffffffff),
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           ),
    //         ),
    //         Positioned(
    //           // theseiconswillmakeiteasierforu (143:18457)
    //           left: 43*fem,
    //           top: 111*fem,
    //           child: Align(
    //             child: SizedBox(
    //               width: 312*fem,
    //               height: 57*fem,
    //               child: Text(
    //                 'These icons will make it easier for user to tell the difference between seats types and will be used in their booking screen.',
    //                 style: SafeGoogleFont (
    //                   'Lucida Bright',
    //                   15*ffem,
    //                   fontWeight: FontWeight.w400,
    //                   height: 1.2575*ffem/fem,
    //                   color: Color(0xff8a8a8a),
    //                 ),
    //               ),
    //             ),
    //           ),
    //         ),
    //         Positioned(
    //           // component65iJy (274:20517)
    //           left: 13*fem,
    //           top: 174*fem,
    //           child: Container(
    //             width: 374*fem,
    //             height: 200*fem,
    //             child: Row(
    //               crossAxisAlignment: CrossAxisAlignment.center,
    //               children: [
    //                 Container(
    //                   // autogroupmc5b7ru (W2b7EtbSHCGBYfA5D6mc5B)
    //                   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 23.3*fem, 0*fem),
    //                   width: 330.7*fem,
    //                   height: double.infinity,
    //                   child: Stack(
    //                     children: [
    //                       Positioned(
    //                         // tablevpM (I274:20517;274:20408)
    //                         left: 0*fem,
    //                         top: 0*fem,
    //                         child: Container(
    //                           width: 330.7*fem,
    //                           height: 165*fem,
    //                           child: Container(
    //                             // autogroupuxwuuwB (W2b8fWtRnQZN8CsizruXWu)
    //                             width: double.infinity,
    //                             height: 164*fem,
    //                             child: Stack(
    //                               children: [
    //                                 Positioned(
    //                                   // rectangle72wss (I274:20517;274:20409)
    //                                   left: 0*fem,
    //                                   top: 0*fem,
    //                                   child: Align(
    //                                     child: SizedBox(
    //                                       width: 328.94*fem,
    //                                       height: 164*fem,
    //                                       child: Container(
    //                                         decoration: BoxDecoration (
    //                                           border: Border.all(color: Color(0xff000000)),
    //                                           color: Color(0xffffffff),
    //                                         ),
    //                                       ),
    //                                     ),
    //                                   ),
    //                                 ),
    //                                 Positioned(
    //                                   // group103i1T (I274:20517;279:23127)
    //                                   left: 233.6950683594*fem,
    //                                   top: 41*fem,
    //                                   child: TextButton(
    //                                     onPressed: () {},
    //                                     style: TextButton.styleFrom (
    //                                       padding: EdgeInsets.zero,
    //                                     ),
    //                                     child: Container(
    //                                       padding: EdgeInsets.fromLTRB(19.64*fem, 17*fem, 8.21*fem, 13*fem),
    //                                       width: 97*fem,
    //                                       height: 63*fem,
    //                                       child: Row(
    //                                         crossAxisAlignment: CrossAxisAlignment.center,
    //                                         children: [
    //                                           Container(
    //                                             // autogrouprs3xyLh (W2b9npLxGAtZHsyWmSrS3X)
    //                                             margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
    //                                             padding: EdgeInsets.fromLTRB(0.36*fem, 5*fem, 0*fem, 0*fem),
    //                                             height: double.infinity,
    //                                             child: Align(
    //                                               // armchair212V (I274:20517;279:23127;143:18544)
    //                                               alignment: Alignment.bottomCenter,
    //                                               child: SizedBox(
    //                                                 width: 28*fem,
    //                                                 height: 28*fem,
    //                                                 child: Image.asset(
    //                                                   'assets/cenima-app-user/images/armchair-2-JpM.png',
    //                                                   fit: BoxFit.cover,
    //                                                 ),
    //                                               ),
    //                                             ),
    //                                           ),
    //                                           Container(
    //                                             // iosicon24chevronleftlgKBb (I274:20517;279:23127;143:18543)
    //                                             margin: EdgeInsets.fromLTRB(0*fem, 5.02*fem, 0*fem, 0*fem),
    //                                             width: 20.79*fem,
    //                                             height: 11.98*fem,
    //                                             child: Image.asset(
    //                                               'assets/cenima-app-user/images/ios-icon-24-chevron-left-lg-qdP.png',
    //                                               width: 20.79*fem,
    //                                               height: 11.98*fem,
    //                                             ),
    //                                           ),
    //                                         ],
    //                                       ),
    //                                     ),
    //                                   ),
    //                                 ),
    //                                 Positioned(
    //                                   // namessK (I274:20517;274:20410)
    //                                   left: 28.5297546387*fem,
    //                                   top: 10*fem,
    //                                   child: Align(
    //                                     child: SizedBox(
    //                                       width: 56*fem,
    //                                       height: 28*fem,
    //                                       child: Text(
    //                                         'Name',
    //                                         textAlign: TextAlign.center,
    //                                         style: SafeGoogleFont (
    //                                           'Lucida Bright',
    //                                           22*ffem,
    //                                           fontWeight: FontWeight.w600,
    //                                           height: 1.2575*ffem/fem,
    //                                           color: Color(0xff3b3b3b),
    //                                         ),
    //                                       ),
    //                                     ),
    //                                   ),
    //                                 ),
    //                                 Positioned(
    //                                   // standardkZj (I274:20517;274:20411)
    //                                   left: 10.8010253906*fem,
    //                                   top: 62*fem,
    //                                   child: Align(
    //                                     child: SizedBox(
    //                                       width: 81*fem,
    //                                       height: 27*fem,
    //                                       child: Text(
    //                                         'Standard',
    //                                         style: SafeGoogleFont (
    //                                           'Lucida Bright',
    //                                           21*ffem,
    //                                           fontWeight: FontWeight.w400,
    //                                           height: 1.2575*ffem/fem,
    //                                           color: Color(0xff3b3b3b),
    //                                         ),
    //                                       ),
    //                                     ),
    //                                   ),
    //                                 ),
    //                                 Positioned(
    //                                   // hdP (I274:20517;274:20412)
    //                                   left: 116.8475341797*fem,
    //                                   top: 62*fem,
    //                                   child: Align(
    //                                     child: SizedBox(
    //                                       width: 47*fem,
    //                                       height: 27*fem,
    //                                       child: Text(
    //                                         '08.00',
    //                                         style: SafeGoogleFont (
    //                                           'Lucida Bright',
    //                                           21*ffem,
    //                                           fontWeight: FontWeight.w400,
    //                                           height: 1.2575*ffem/fem,
    //                                           color: Color(0xff3b3b3b),
    //                                         ),
    //                                       ),
    //                                     ),
    //                                   ),
    //                                 ),
    //                                 Positioned(
    //                                   // bcH (I274:20517;274:20413)
    //                                   left: 116.8475341797*fem,
    //                                   top: 125*fem,
    //                                   child: Align(
    //                                     child: SizedBox(
    //                                       width: 47*fem,
    //                                       height: 27*fem,
    //                                       child: Text(
    //                                         '16.00',
    //                                         style: SafeGoogleFont (
    //                                           'Lucida Bright',
    //                                           21*ffem,
    //                                           fontWeight: FontWeight.w400,
    //                                           height: 1.2575*ffem/fem,
    //                                           color: Color(0xff3b3b3b),
    //                                         ),
    //                                       ),
    //                                     ),
    //                                   ),
    //                                 ),
    //                                 Positioned(
    //                                   // jodmQH (I274:20517;274:20414)
    //                                   left: 177.3165283203*fem,
    //                                   top: 60*fem,
    //                                   child: Align(
    //                                     child: SizedBox(
    //                                       width: 44*fem,
    //                                       height: 28*fem,
    //                                       child: Text(
    //                                         ' JOD ',
    //                                         textAlign: TextAlign.center,
    //                                         style: SafeGoogleFont (
    //                                           'Lucida Bright',
    //                                           22*ffem,
    //                                           fontWeight: FontWeight.w600,
    //                                           height: 1.2575*ffem/fem,
    //                                           color: Color(0xff3b3b3b),
    //                                         ),
    //                                       ),
    //                                     ),
    //                                   ),
    //                                 ),
    //                                 Positioned(
    //                                   // jodHX3 (I274:20517;274:20415)
    //                                   left: 177.3165283203*fem,
    //                                   top: 125*fem,
    //                                   child: Align(
    //                                     child: SizedBox(
    //                                       width: 44*fem,
    //                                       height: 28*fem,
    //                                       child: Text(
    //                                         ' JOD ',
    //                                         textAlign: TextAlign.center,
    //                                         style: SafeGoogleFont (
    //                                           'Lucida Bright',
    //                                           22*ffem,
    //                                           fontWeight: FontWeight.w600,
    //                                           height: 1.2575*ffem/fem,
    //                                           color: Color(0xff3b3b3b),
    //                                         ),
    //                                       ),
    //                                     ),
    //                                   ),
    //                                 ),
    //                                 Positioned(
    //                                   // primeqBB (I274:20517;274:20416)
    //                                   left: 10.8010253906*fem,
    //                                   top: 120*fem,
    //                                   child: Align(
    //                                     child: SizedBox(
    //                                       width: 53*fem,
    //                                       height: 27*fem,
    //                                       child: Text(
    //                                         'Prime',
    //                                         style: SafeGoogleFont (
    //                                           'Lucida Bright',
    //                                           21*ffem,
    //                                           fontWeight: FontWeight.w400,
    //                                           height: 1.2575*ffem/fem,
    //                                           color: Color(0xff3b3b3b),
    //                                         ),
    //                                       ),
    //                                     ),
    //                                   ),
    //                                 ),
    //                                 Positioned(
    //                                   // pricew7j (I274:20517;274:20417)
    //                                   left: 153.2325439453*fem,
    //                                   top: 10*fem,
    //                                   child: Align(
    //                                     child: SizedBox(
    //                                       width: 48*fem,
    //                                       height: 28*fem,
    //                                       child: Text(
    //                                         'Price',
    //                                         textAlign: TextAlign.center,
    //                                         style: SafeGoogleFont (
    //                                           'Lucida Bright',
    //                                           22*ffem,
    //                                           fontWeight: FontWeight.w600,
    //                                           height: 1.2575*ffem/fem,
    //                                           color: Color(0xff3b3b3b),
    //                                         ),
    //                                       ),
    //                                     ),
    //                                   ),
    //                                 ),
    //                                 Positioned(
    //                                   // iconF1w (I274:20517;274:20418)
    //                                   left: 264.6705322266*fem,
    //                                   top: 10*fem,
    //                                   child: Align(
    //                                     child: SizedBox(
    //                                       width: 41*fem,
    //                                       height: 28*fem,
    //                                       child: Text(
    //                                         'Icon',
    //                                         textAlign: TextAlign.center,
    //                                         style: SafeGoogleFont (
    //                                           'Lucida Bright',
    //                                           22*ffem,
    //                                           fontWeight: FontWeight.w600,
    //                                           height: 1.2575*ffem/fem,
    //                                           color: Color(0xff3b3b3b),
    //                                         ),
    //                                       ),
    //                                     ),
    //                                   ),
    //                                 ),
    //                                 Positioned(
    //                                   // line37cFo (I274:20517;274:20419)
    //                                   left: 111.9379882812*fem,
    //                                   top: 0*fem,
    //                                   child: Align(
    //                                     child: SizedBox(
    //                                       width: 1*fem,
    //                                       height: 164*fem,
    //                                       child: Container(
    //                                         decoration: BoxDecoration (
    //                                           color: Color(0xff000000),
    //                                         ),
    //                                       ),
    //                                     ),
    //                                   ),
    //                                 ),
    //                                 Positioned(
    //                                   // line38Msb (I274:20517;274:20420)
    //                                   left: 233.6950683594*fem,
    //                                   top: 0*fem,
    //                                   child: Align(
    //                                     child: SizedBox(
    //                                       width: 1*fem,
    //                                       height: 164*fem,
    //                                       child: Container(
    //                                         decoration: BoxDecoration (
    //                                           color: Color(0xff000000),
    //                                         ),
    //                                       ),
    //                                     ),
    //                                   ),
    //                                 ),
    //                                 Positioned(
    //                                   // line39wqo (I274:20517;274:20421)
    //                                   left: 0.9819335938*fem,
    //                                   top: 48*fem,
    //                                   child: Align(
    //                                     child: SizedBox(
    //                                       width: 325.99*fem,
    //                                       height: 1*fem,
    //                                       child: Container(
    //                                         decoration: BoxDecoration (
    //                                           color: Color(0xff000000),
    //                                         ),
    //                                       ),
    //                                     ),
    //                                   ),
    //                                 ),
    //                                 Positioned(
    //                                   // line40s7B (I274:20517;274:20422)
    //                                   left: 0.9819335938*fem,
    //                                   top: 102*fem,
    //                                   child: Align(
    //                                     child: SizedBox(
    //                                       width: 325.99*fem,
    //                                       height: 1*fem,
    //                                       child: Container(
    //                                         decoration: BoxDecoration (
    //                                           color: Color(0xff000000),
    //                                         ),
    //                                       ),
    //                                     ),
    //                                   ),
    //                                 ),
    //                                 Positioned(
    //                                   // group174GQD (I274:20517;279:23215)
    //                                   left: 233.6950683594*fem,
    //                                   top: 99*fem,
    //                                   child: TextButton(
    //                                     onPressed: () {},
    //                                     style: TextButton.styleFrom (
    //                                       padding: EdgeInsets.zero,
    //                                     ),
    //                                     child: Container(
    //                                       padding: EdgeInsets.fromLTRB(20*fem, 22*fem, 8.21*fem, 13*fem),
    //                                       width: 97*fem,
    //                                       height: 63*fem,
    //                                       child: Row(
    //                                         crossAxisAlignment: CrossAxisAlignment.center,
    //                                         children: [
    //                                           Container(
    //                                             // armchair2ivR (I274:20517;279:23215;143:18502)
    //                                             margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
    //                                             width: 28*fem,
    //                                             height: 28*fem,
    //                                             child: Image.asset(
    //                                               'assets/cenima-app-user/images/armchair-2-iXf.png',
    //                                               fit: BoxFit.cover,
    //                                             ),
    //                                           ),
    //                                           Container(
    //                                             // iosicon24chevronleftlgLgu (I274:20517;279:23215;143:18497)
    //                                             margin: EdgeInsets.fromLTRB(0*fem, 0.02*fem, 0*fem, 0*fem),
    //                                             width: 20.79*fem,
    //                                             height: 11.98*fem,
    //                                             child: Image.asset(
    //                                               'assets/cenima-app-user/images/ios-icon-24-chevron-left-lg.png',
    //                                               width: 20.79*fem,
    //                                               height: 11.98*fem,
    //                                             ),
    //                                           ),
    //                                         ],
    //                                       ),
    //                                     ),
    //                                   ),
    //                                 ),
    //                               ],
    //                             ),
    //                           ),
    //                         ),
    //                       ),
    //                       Positioned(
    //                         // group102udX (I274:20517;274:20430)
    //                         left: 1.9638061523*fem,
    //                         top: 164*fem,
    //                         child: TextButton(
    //                           onPressed: () {},
    //                           style: TextButton.styleFrom (
    //                             padding: EdgeInsets.zero,
    //                           ),
    //                           child: Container(
    //                             padding: EdgeInsets.fromLTRB(5*fem, 7*fem, 14.5*fem, 4*fem),
    //                             width: 176.48*fem,
    //                             height: 36*fem,
    //                             child: Row(
    //                               crossAxisAlignment: CrossAxisAlignment.center,
    //                               children: [
    //                                 Container(
    //                                   // iosicon24plusaddymo (I274:20517;274:20431)
    //                                   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18.5*fem, 3.13*fem),
    //                                   width: 17.47*fem,
    //                                   height: 17.87*fem,
    //                                   child: Image.asset(
    //                                     'assets/cenima-app-user/images/ios-icon-24-plus-add.png',
    //                                     width: 17.47*fem,
    //                                     height: 17.87*fem,
    //                                   ),
    //                                 ),
    //                                 Text(
    //                                   // addnewtypey9X (I274:20517;274:20432)
    //                                   'ADD NEW TYPE',
    //                                   textAlign: TextAlign.center,
    //                                   style: SafeGoogleFont (
    //                                     'Lucida Bright',
    //                                     19.8325920105*ffem,
    //                                     fontWeight: FontWeight.w600,
    //                                     height: 1.2575*ffem/fem,
    //                                     color: Color(0xffff2153),
    //                                   ),
    //                                 ),
    //                               ],
    //                             ),
    //                           ),
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //                 Container(
    //                   // autogroupkdbbbRo (W2bBjm6m4R8DqhmvbGKdbB)
    //                   margin: EdgeInsets.fromLTRB(0*fem, 39*fem, 0*fem, 41*fem),
    //                   width: 20*fem,
    //                   height: double.infinity,
    //                   child: Column(
    //                     crossAxisAlignment: CrossAxisAlignment.center,
    //                     children: [
    //                       Container(
    //                         // frame6Zmw (I274:20517;279:22634)
    //                         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
    //                         child: TextButton(
    //                           onPressed: () {},
    //                           style: TextButton.styleFrom (
    //                             padding: EdgeInsets.zero,
    //                           ),
    //                           child: Container(
    //                             width: double.infinity,
    //                             height: 56*fem,
    //                             child: Text(
    //                               '_',
    //                               textAlign: TextAlign.center,
    //                               style: SafeGoogleFont (
    //                                 'Lucida Bright',
    //                                 40*ffem,
    //                                 fontWeight: FontWeight.w600,
    //                                 height: 1.2575*ffem/fem,
    //                                 color: Color(0xff000000),
    //                               ),
    //                             ),
    //                           ),
    //                         ),
    //                       ),
    //                       TextButton(
    //                         // frame7sAM (I274:20517;279:22665)
    //                         onPressed: () {},
    //                         style: TextButton.styleFrom (
    //                           padding: EdgeInsets.zero,
    //                         ),
    //                         child: Container(
    //                           width: double.infinity,
    //                           height: 56*fem,
    //                           child: Text(
    //                             '_',
    //                             textAlign: TextAlign.center,
    //                             style: SafeGoogleFont (
    //                               'Lucida Bright',
    //                               40*ffem,
    //                               fontWeight: FontWeight.w600,
    //                               height: 1.2575*ffem/fem,
    //                               color: Color(0xff000000),
    //                             ),
    //                           ),
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //         Positioned(
    //           // headerz8V (143:18459)
    //           left: 0*fem,
    //           top: 26*fem,
    //           child: Container(
    //             padding: EdgeInsets.fromLTRB(5*fem, 32.5*fem, 3.76*fem, 9.5*fem),
    //             width: 393*fem,
    //             height: 70*fem,
    //             decoration: BoxDecoration (
    //               border: Border.all(color: Color(0xffc2c2c2)),
    //               color: Color(0xffffffff),
    //             ),
    //             child: Row(
    //               crossAxisAlignment: CrossAxisAlignment.end,
    //               children: [
    //                 Container(
    //                   // arrowdownsigntonavigateK4H (I143:18459;75:1573;1:127)
    //                   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 78*fem, 0*fem),
    //                   width: 30*fem,
    //                   height: 28*fem,
    //                   child: Image.asset(
    //                     'assets/cenima-app-user/images/arrow-down-sign-to-navigate-WMK.png',
    //                     fit: BoxFit.cover,
    //                   ),
    //                 ),
    //                 Container(
    //                   // accountinfoszu (I143:18459;1:1762)
    //                   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 85*fem, 1.5*fem),
    //                   child: Text(
    //                     'Update seats types',
    //                     textAlign: TextAlign.center,
    //                     style: SafeGoogleFont (
    //                       'Segoe UI',
    //                       20*ffem,
    //                       fontWeight: FontWeight.w700,
    //                       height: 1.2575*ffem/fem,
    //                       color: Color(0xff000000),
    //                     ),
    //                   ),
    //                 ),
    //                 Container(
    //                   // closesNd (I143:18459;76:1577;1:159)
    //                   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.76*fem),
    //                   width: 24.24*fem,
    //                   height: 24.24*fem,
    //                   child: Image.asset(
    //                     'assets/cenima-app-user/images/close-Zmo.png',
    //                     fit: BoxFit.cover,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //         Positioned(
    //           // iosstatusbarwithnotchsftYd (143:18460)
    //           left: 0*fem,
    //           top: 0*fem,
    //           child: Container(
    //             width: 393*fem,
    //             height: 44*fem,
    //             decoration: BoxDecoration (
    //               color: Color(0xffffffff),
    //             ),
    //             child: Stack(
    //               children: [
    //                 Positioned(
    //                   // notchEW1 (I143:18460;9:41)
    //                   left: 87*fem,
    //                   top: 0*fem,
    //                   child: Align(
    //                     child: SizedBox(
    //                       width: 219*fem,
    //                       height: 30*fem,
    //                       child: Image.asset(
    //                         'assets/cenima-app-user/images/notch-Kf3.png',
    //                         width: 219*fem,
    //                         height: 30*fem,
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //                 Positioned(
    //                   // timebjs (I143:18460;9:73)
    //                   left: 32*fem,
    //                   top: 13*fem,
    //                   child: Align(
    //                     child: SizedBox(
    //                       width: 26*fem,
    //                       height: 21*fem,
    //                       child: Text(
    //                         '9:41',
    //                         style: SafeGoogleFont (
    //                           'SF Pro Text',
    //                           15*ffem,
    //                           fontWeight: FontWeight.w600,
    //                           height: 1.4*ffem/fem,
    //                           letterSpacing: -0.3199999928*fem,
    //                           color: Color(0xff020202),
    //                         ),
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //                 Positioned(
    //                   // iosiconstatusbarsau (I143:18460;9:57)
    //                   left: 0*fem,
    //                   top: 5*fem,
    //                   child: Container(
    //                     padding: EdgeInsets.fromLTRB(20.04*fem, 0*fem, 0*fem, 0*fem),
    //                     width: 1929*fem,
    //                     height: 26*fem,
    //                     child: Row(
    //                       crossAxisAlignment: CrossAxisAlignment.end,
    //                       children: [
    //                         Container(
    //                           // autogroupk89sS1j (W2bEWM9rB9GMmgGxUKK89s)
    //                           margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1796*fem, 10*fem),
    //                           width: 48.96*fem,
    //                           height: 16*fem,
    //                         ),
    //                         Container(
    //                           // iosiconsmallmobilesignalGmT (I143:18460;9:57;9:6)
    //                           margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.35*fem, 2.33*fem),
    //                           width: 17*fem,
    //                           height: 10.67*fem,
    //                           child: Image.asset(
    //                             'assets/cenima-app-user/images/ios-icon-small-mobile-signal-voF.png',
    //                             width: 17*fem,
    //                             height: 10.67*fem,
    //                           ),
    //                         ),
    //                         Container(
    //                           // iosiconsmallwifibSM (I143:18460;9:57;9:12)
    //                           margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.38*fem, 2.03*fem),
    //                           width: 15.27*fem,
    //                           height: 10.97*fem,
    //                           child: Image.asset(
    //                             'assets/cenima-app-user/images/ios-icon-small-wifi-BJd.png',
    //                             width: 15.27*fem,
    //                             height: 10.97*fem,
    //                           ),
    //                         ),
    //                         Container(
    //                           // iosiconsmallbatterymVF (I143:18460;9:57;9:17)
    //                           margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.67*fem),
    //                           width: 24.33*fem,
    //                           height: 11.33*fem,
    //                           child: Image.asset(
    //                             'assets/cenima-app-user/images/ios-icon-small-battery-QfF.png',
    //                             width: 24.33*fem,
    //                             height: 11.33*fem,
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    //       );
  }

  _printMovies(MovieService ser, double width) {
    var imageUrl = 'https://image.tmdb.org/t/p/w500/';
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: ser.searchResult.length,
      itemBuilder: (BuildContext ctx, int i) {
        ser.getGenres(536554);
        ser.getRelease(ser.showingNow[i]['id']);
        return Padding(
          padding:
              const EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
          child: GestureDetector(
            onTap: () {},
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    imageUrl + ser.showingNow[i]['poster_path'],
                    height: 190,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                SizedBox(
                  width: width - 177,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                        width: width - 177,
                        child: Text(
                          ser.showingNow[i]['title'],
                          style: SafeGoogleFont(
                            'Lucida Bright',
                            22,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff7e132b),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: width - 177,
                        child: Text(
                          ser.showingNow[i]['id'].toString(),
                          style: TextStyle(
                              color: mainColor,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(5)),
                      Container(
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xff707070)),
                          color: const Color(0xff7e132b),
                        ),
                        child: Center(
                          child: Text(
                            ser.showingNow[i]['original_language'] == 'en'
                                ? "English"
                                : ser.showingNow[i]['original_language'] == 'es'
                                    ? "Spanich"
                                    : ser.showingNow[i]['original_language'] ==
                                            'fi'
                                        ? "Finnis"
                                        : ser.showingNow[i]
                                                    ['original_language'] ==
                                                'ar'
                                            ? "Arabic"
                                            : ser.showingNow[i]
                                                ['original_language'],
                            style: SafeGoogleFont(
                              'Lucida Bright',
                              12,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(5)),
                      SizedBox(
                        width: width - 177,
                        child: Text(
                          ser.allRatings[i],
                          style: SafeGoogleFont(
                            'Lucida Bright',
                            14,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFFF44336),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
