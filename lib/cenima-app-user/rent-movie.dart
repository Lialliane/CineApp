import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:myapp/cenima-app-user/search.dart';
import 'package:myapp/reusable-widgets/reusable-widget.dart';
import 'package:myapp/services/Showing%20now.dart' as global;
import '../services/Movie service.dart';
import '../shared/Theme.dart';
import '../utils.dart';
import 'home-page.dart';
import 'movie-details-rent.dart';

class RentMovie extends StatefulWidget {
  const RentMovie({super.key});

  @override
  State<RentMovie> createState() => _RentMovie();
}

class globalData {
  static int movieId = 0;
  static int movieIdRent = 0;
  static String movieTitleRent = "";
}

class _RentMovie extends State<RentMovie> {
  var imageUrl = 'https://image.tmdb.org/t/p/w500/';

  MovieService ser = MovieService();
  final Stream<QuerySnapshot>? moviesStream =
      FirebaseFirestore.instance.collection('rented-movies').snapshots();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    MovieService ser = MovieService();
    double width = deviceSize.width;
    var imageUrl = 'https://image.tmdb.org/t/p/w500/';
    double height = deviceSize.height;

    return WillPopScope(
      onWillPop: () {
        backNavigator(context, const HomePage());
        return Future.value(false);
      },
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
            body: Container(
              color: const Color(0xfff1f1f1),
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    rentListBuilder(),
                    // lisst(),
                    // movieListt(),
                  ],
                ),
                // rentListBuilder(),
                // lisst(),
              ),
            ),
          ),
          drawer: ASettingDrawer(),
          bottomNavigationBar: UBottomNavigationBarHandler(index: 1)),
    );
  }

  Widget rentListBuilder() => StreamBuilder<QuerySnapshot>(
      stream: moviesStream,
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
          width: MediaQuery.of(context).size.width * 1,
          child: ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              Map<String, dynamic> data =
                  document.data()! as Map<String, dynamic>;
              return Padding(
                padding: const EdgeInsets.only(
                    left: 10, top: 10, right: 10, bottom: 10),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      globalData.movieId = data["id"];
                      globalData.movieTitleRent = data["title"];
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MovieDetailsRent(id: data["id"])),
                    );
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          imageUrl + data["poster"],
                          height: 190,
                          width: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 177,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 5,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 177,
                              child: Text(
                                data["title"],
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
                              width: MediaQuery.of(context).size.width - 177,
                              child: Text(
                                data["genre"].join(', '),
                                style: TextStyle(
                                    color: mainColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.all(5)),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                      top: 0, left: 20, bottom: 2, right: 20),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color(0xff707070)),
                                    color: const Color(0xff7e132b),
                                  ),
                                  child: Text(
                                    data["language"] == 'en'
                                        ? "English"
                                        : data["language"] == 'es'
                                            ? "Spanish"
                                            : data["language"] == 'fi'
                                                ? "Finnish"
                                                : data["language"] == 'ar'
                                                    ? "Arabic"
                                                    : data["language"] == 'fr'
                                                        ? "French"
                                                        : data["language"] ==
                                                                "ko"
                                                            ? "Korean"
                                                            : data["language"] ==
                                                                    "ja"
                                                                ? "japanese"
                                                                : data["language"] ==
                                                                        "ru"
                                                                    ? "Russian"
                                                                    : data[
                                                                        "language"],
                                    style: SafeGoogleFont(
                                      'Lucida Bright',
                                      12,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        top: 0, left: 20, bottom: 2, right: 20),
                                    decoration: BoxDecoration(
                                      color: const Color(0xff9a2044),
                                      borderRadius: BorderRadius.circular(
                                          MediaQuery.of(context).size.height *
                                              0.022),
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color(0x29000000),
                                          offset: Offset(
                                              0,
                                              MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.005),
                                          blurRadius: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.007,
                                        ),
                                      ],
                                    ),
                                    child: Text(
                                      data['rating'] == ''
                                          ? 'N/A'
                                          : data['rating'],
                                      style: SafeGoogleFont(
                                        'Lucida Bright',
                                        MediaQuery.of(context).size.height *
                                            0.020,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        );
      });
}
