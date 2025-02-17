import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:myapp/cenima-app-user/upcomming.dart';
import 'package:myapp/services/Movie%20service.dart';

import 'package:myapp/services/upcomming.dart';
import 'package:myapp/shared/Theme.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/cenima-app-user/showing-now.dart';
import 'package:myapp/cenima-app-user/search.dart';
import 'package:myapp/reusable-widgets/reusable-widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../services/Showing now.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final Stream<QuerySnapshot>? menuStream =
      FirebaseFirestore.instance.collection('Movies').snapshots();

  int activeIndex = 0;
  List<String> images = [
    'assets/cenima-app-user/images/advertisment1.png',
    'assets/cenima-app-user/images/advertisment2.png',
    'assets/cenima-app-user/images/advertisment3.png',
    'assets/cenima-app-user/images/advertisment4.png',
    'assets/cenima-app-user/images/advertisment5.png',
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return WillPopScope(
      onWillPop: () => showExitPopup(context),
      child: Scaffold(
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              iconTheme: const IconThemeData(
                color: Color(0xff000000),
              ),
              backgroundColor: const Color(0xffffffff),
              floating: true,
              snap: true,
              centerTitle: true,
              actions: [
                IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      showSearch(context: context, delegate: SearchPage());
                    })
              ],
              title: const Text(
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
          body: MediaQuery.removePadding(
            removeTop: true,
            context: context,
            child: ListView(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.3,
                        child: Stack(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: CarouselSlider.builder(
                                  options: CarouselOptions(
                                      height: height *
                                          0.5,
                                      autoPlay: true,
                                      viewportFraction: 1,
                                      onPageChanged: (index, reason) => setState(
                                            () => activeIndex = index,
                                          )),
                                  itemCount: images.length,
                                  itemBuilder: (context, index, realIndex) {
                                    String urlImage = images[index];

                                    return buildImage(urlImage, index);
                                  }),
                            ),
                            Positioned(
                              bottom: 10,
                              right: 0,
                              left: 0,
                              child: Container(
                                alignment: Alignment.center,
                                child: buildIndicator(),
                              ),
                            ),
                            Positioned(
                              right: 10,
                              bottom: 0,
                              top: 20,
                              child: Container(
                                  child: activeIndex == 0
                                      ? SizedBox(
                                          width: width * 0.3,
                                          child: Text(
                                            "50% off on 2 tickets \n\n use code 50OFF!",
                                            style: GoogleFonts.lato(
                                              fontSize: width * 0.05,
                                              fontWeight: FontWeight.w400,
                                              color: const Color(0xffffffff),
                                            ),
                                          ))
                                      : const Text("")),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                _printHeadingS(heading: 'Showing now', context: context),
                const ShowingList(),
                _printHeadingU(heading: 'upcomming', context: context),
                const UpcommingList(),
              ],
            ),
          ),
        ),
        drawer: SettingDrawer(),
        bottomNavigationBar: UBottomNavigationBarHandler(index: 0),
      ),
    );
  }

//builder for the image carousel
  Widget buildImage(String urlImage, int index) => Container(
        width: MediaQuery.of(context).size.width * 1.0,
        color: Colors.black87,
        child: Image.asset(
          urlImage,
          fit: BoxFit.cover,
        ),
      );

//builder for carousel indicator
  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: images.length,
        effect: const SlideEffect(
          activeDotColor: Colors.pink,
          dotColor: Colors.white,
        ),
      );

  Widget showingListBuilder(double height, double width) =>
      StreamBuilder<QuerySnapshot>(
          stream: menuStream,
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return const Text('Something went wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return SpinKitFadingCircle(
                color: mainColor,
              );
            }

            return SizedBox(
              height: height * 0.3,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: snapshot.data!.docs.map((DocumentSnapshot document) {
                  Map<String, dynamic> data =
                      document.data()! as Map<String, dynamic>;
                  return Padding(
                    padding: const EdgeInsets.all(5),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {},
                        child: Column(children: [
                          SizedBox(
                            height: height * 0.25,
                            width: width * 0.35,
                            child: Image.asset(
                              data['poster'],
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(top: 5)),
                          Text(
                            data['title'],
                            softWrap: true,
                            style: GoogleFonts.lato(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff464646),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  );
                }).toList(),
              ),
            );
          });
}

_printHeadingS({required String heading, required BuildContext context}) {
  MovieService ser = MovieService();

  ser.getShowingNow();
  return Padding(
    padding: const EdgeInsets.only(left: 20.0, top: 5, right: 10),
    child: Row(
      children: [
        const SizedBox(width: 5),
        Text(
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
          heading.toUpperCase(),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {
            print('wgh');
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ShowingNowList()),
            );
          },
          child: Text("View All", style: TextStyle(color: mainColor)),
        ),
      ],
    ),
  );
}

_printHeadingU({required String heading, required BuildContext context}) {
  MovieService ser = MovieService();
  ser.getShowingNow();
  return Padding(
    padding: const EdgeInsets.only(left: 20.0, top: 5, right: 10),
    child: Row(
      children: [
        const SizedBox(width: 5),
        Text(
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
          heading.toUpperCase(),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {
            print(ser.showingNow2);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const UpcommingNowList()),
            );
          },
          child: Text("View All", style: TextStyle(color: mainColor)),
        ),
      ],
    ),
  );
}
