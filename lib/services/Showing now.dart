import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/cenima-app-user/edit-schedule.dart';
import 'package:myapp/cenima-app-user/movie-details-rent.dart';
import 'package:myapp/services/Movie%20service.dart';
import 'package:myapp/shared/Theme.dart';
import '../cenima-app-user/movie-details-book.dart';
import '../utils.dart';
import 'items_skeleton.dart';

// ignore: camel_case_types
class globalData {
  static int movieId = 0;
  static int movieIdRent = 0;
  static String movieTitleRent = "";
}

class ShowingList extends StatelessWidget {
  const ShowingList({Key? key}) : super(key: key);

  void initState() {
    MovieService().getShowingNow();
  }

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    MovieService ser = MovieService();
    return SizedBox(
        height: deviceSize.height * 0.34,
        child: FutureBuilder(
            future: ser.getShowingNow(),
            builder: (BuildContext ctx, AsyncSnapshot<dynamic> snapshot) {
              ConnectionState state = snapshot.connectionState;

              // loading
              if (state == ConnectionState.waiting) {
                return const Center(child: ItemSkeleton());
              }
              // error
              else if (snapshot.hasError) {
                return const Center(
                  child: Text(
                    'Loading Error',
                    style: TextStyle(fontSize: 20, color: Colors.red),
                  ),
                );
              }
              // loaded
              else {
                return _printMovies(ser, context);
              }
            }));
  }

  _printMovies(MovieService ser, BuildContext context) {
    var imageUrl = 'https://image.tmdb.org/t/p/w500/';
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (BuildContext ctx, int i) {
        return Padding(
          padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        MovieDetailsBook(id: ser.showingNow[i]['id'])),
              );
            },
            child: Column(
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
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                  child: Center(
                    child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(children: [
                          const SizedBox(
                            width: 5,
                          ),
                          SizedBox(
                            width: 120,
                            child: Text(
                              ser.showingNow[i]['title'],
                              style: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ])),
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

class ShowingListAll extends StatefulWidget {
  const ShowingListAll({Key? key}) : super(key: key);

  @override
  State<ShowingListAll> createState() => _ShowingListAllState();
}

class _ShowingListAllState extends State<ShowingListAll> {
  @override
  void initState() {
    super.initState();
    MovieService().getShowingNow();
  }

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    MovieService ser = MovieService();
    double width = deviceSize.width;
    return SizedBox(
      height: deviceSize.height * 1,
      child: FutureBuilder(
        future: Future.wait(
            [ser.getShowingNow(), ser.getAllRelease(), ser.getAllGenres()]),
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
            return Padding(
              padding: const EdgeInsets.only(bottom: 0),
              child: _printMovies(ser, width),
            );
          }
        },
      ),
    );
  }

  String Genres(List genres) {
    String newGenres = '';
    for (int i = 0; i < genres.length; i++) {
      newGenres = newGenres +
          genres[i]['name'] +
          ((i == genres.length - 1) ? "" : ', ');
    }
    return newGenres;
  }

  _printMovies(MovieService ser, double width) {
    var imageUrl = 'https://image.tmdb.org/t/p/w500/';
    return ListView.builder(
      padding: EdgeInsets.zero,
      scrollDirection: Axis.vertical,
      itemCount: ser.showingNow.length,
      itemBuilder: (BuildContext ctx, int i) {
        double width = MediaQuery.of(ctx).size.width;
        double height = MediaQuery.of(ctx).size.height;
        return Padding(
          padding:
              const EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        MovieDetailsBook(id: ser.showingNow[i]['id'])),
              );
            },
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
                          Genres(ser.Genres2[i]),
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
                              border:
                                  Border.all(color: const Color(0xff707070)),
                              color: const Color(0xff7e132b),
                            ),
                            child: Text(
                              ser.showingNow[i]['original_language'] == 'en'
                                  ? "English"
                                  : ser.showingNow[i]['original_language'] ==
                                          'es'
                                      ? "Spanish"
                                      : ser.showingNow[i]['original_language'] ==
                                              'fi'
                                          ? "Finnish"
                                          : ser.showingNow[i]['original_language'] ==
                                                  'ar'
                                              ? "Arabic"
                                              : ser.showingNow[i][
                                                          'original_language'] ==
                                                      'fr'
                                                  ? "French"
                                                  : ser.showingNow[i][
                                                              'original_language'] ==
                                                          "ko"
                                                      ? "Korean"
                                                      : ser.showingNow[i][
                                                                  'original_language'] ==
                                                              "ja"
                                                          ? "japanese"
                                                          : ser.showingNow[i][
                                                                      'original_language'] ==
                                                                  "ru"
                                                              ? "Russian"
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              padding: const EdgeInsets.only(
                                  top: 0, left: 20, bottom: 2, right: 20),
                              decoration: BoxDecoration(
                                color: const Color(0xff9a2044),
                                borderRadius:
                                    BorderRadius.circular(height * 0.022),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0x29000000),
                                    offset: Offset(0, height * 0.005),
                                    blurRadius: height * 0.007,
                                  ),
                                ],
                              ),
                              child: Text(
                                ser.allRatings[i] == ''
                                    ? 'N/A'
                                    : ser.allRatings[i],
                                style: SafeGoogleFont(
                                  'Lucida Bright',
                                  height * 0.020,
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
      },
    );
  }
}

class ShowingListAdmin extends StatefulWidget {
  const ShowingListAdmin({Key? key}) : super(key: key);

  @override
  State<ShowingListAdmin> createState() => _ShowingListAdmin();
}

class _ShowingListAdmin extends State<ShowingListAdmin> {
  @override
  void initState() {
    super.initState();
    MovieService().getShowingNow();
    setState(() {
      globalData.movieId = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    MovieService ser = MovieService();
    double width = deviceSize.width;
    return SizedBox(
      height: deviceSize.height * 1,
      child: FutureBuilder(
        future: Future.wait(
            [ser.getShowingNow(), ser.getAllRelease(), ser.getAllGenres()]),
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
            return Padding(
              padding: const EdgeInsets.only(bottom: 0),
              child: _printMovies(ser, width),
            );
          }
        },
      ),
    );
  }

  String Genres(List genres) {
    String newGenres = '';
    for (int i = 0; i < genres.length; i++) {
      newGenres = newGenres +
          genres[i]['name'] +
          ((i == genres.length - 1) ? "" : ', ');
    }
    return newGenres;
  }

  _printMovies(MovieService ser, double width) {
    var imageUrl = 'https://image.tmdb.org/t/p/w500/';
    return ListView.builder(
      padding: EdgeInsets.zero,
      scrollDirection: Axis.vertical,
      itemCount: ser.showingNow.length,
      itemBuilder: (BuildContext ctx, int i) {
        double width = MediaQuery.of(ctx).size.width;
        double height = MediaQuery.of(ctx).size.height;
        return Padding(
          padding:
              const EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        MovieDetailsBook(id: ser.showingNow[i]['id'])),
              );
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //poster
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
                  height: 190,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: width - 177,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 5,
                            ),
                            //movie title
                            SizedBox(
                              width: width - 177,
                              child: Text(
                                ser.showingNow[i]['title'],
                                style: SafeGoogleFont(
                                  'Lucida Bright',
                                  width * 0.05,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff7e132b),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            //genres
                            SizedBox(
                              width: width - 177,
                              child: Text(
                                Genres(ser.Genres2[i]),
                                style: TextStyle(
                                    color: mainColor,
                                    fontSize: width * 0.03,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.all(5)),
                            Row(
                              children: [
                                //language
                                Container(
                                  padding: const EdgeInsets.only(
                                      top: 0, left: 20, bottom: 2, right: 20),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color(0xff707070)),
                                    color: const Color(0xff7e132b),
                                  ),
                                  child: Text(
                                    ser.showingNow[i]['original_language'] ==
                                            'en'
                                        ? "English"
                                        : ser.showingNow[i]
                                                    ['original_language'] ==
                                                'es'
                                            ? "Spanish"
                                            : ser.showingNow[i]
                                                        ['original_language'] ==
                                                    'fi'
                                                ? "Finnish"
                                                : ser.showingNow[i][
                                                            'original_language'] ==
                                                        'ar'
                                                    ? "Arabic"
                                                    : ser.showingNow[i][
                                                                'original_language'] ==
                                                            'fr'
                                                        ? "French"
                                                        : ser.showingNow[i][
                                                                    'original_language'] ==
                                                                "ko"
                                                            ? "Korean"
                                                            : ser.showingNow[i]
                                                                        ['original_language'] ==
                                                                    "ja"
                                                                ? "japanese"
                                                                : ser.showingNow[i]['original_language'] == "ru"
                                                                    ? "Russian"
                                                                    : ser.showingNow[i]['original_language'],
                                    style: SafeGoogleFont(
                                      'Lucida Bright',
                                      12,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                //age rating
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        top: 0, left: 20, bottom: 2, right: 20),
                                    decoration: BoxDecoration(
                                      color: const Color(0xff9a2044),
                                      borderRadius:
                                          BorderRadius.circular(height * 0.022),
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color(0x29000000),
                                          offset: Offset(0, height * 0.005),
                                          blurRadius: height * 0.007,
                                        ),
                                      ],
                                    ),
                                    child: Text(
                                      ser.allRatings[i] == ''
                                          ? 'N/A'
                                          : ser.allRatings[i],
                                      style: SafeGoogleFont(
                                        'Lucida Bright',
                                        height * 0.020,
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
                      TextButton(
                        onPressed: () {
                          setState(() {
                            globalData.movieId = ser.showingNow[i]['id'];
                            globalData.movieId;
                          });
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const EditMovieSchedule()),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 3),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: const Color(0xff9a2044),
                            ),
                          ),
                          child: Text(
                            'Edit Schedual',
                            style: GoogleFonts.lato(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff9a2044),
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
        );
      },
    );
  }
}

class ShowingListRent extends StatefulWidget {
  const ShowingListRent({Key? key}) : super(key: key);

  @override
  State<ShowingListRent> createState() => _ShowingListRent();
}

class _ShowingListRent extends State<ShowingListRent> {
  final Stream<QuerySnapshot>? moviesStream =
      FirebaseFirestore.instance.collection('rented-movies').snapshots();

  @override
  void initState() {
    super.initState();
    MovieService().getAllDetailsRent();
  }

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    MovieService ser = MovieService();
    double width = deviceSize.width;
    return SizedBox(
      height: deviceSize.height * 1,
      child: FutureBuilder(
        future: Future.wait([
          ser.getAllDetailsRent(),
          ser.getAllReleaseRent(),
          ser.getAllGenresRent()
        ]),
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
            return Padding(
              padding: const EdgeInsets.only(bottom: 0),
              child: _printMovies(ser, width),
            );
          }
        },
      ),
    );
  }

  String Genres(List genres) {
    String newGenres = '';
    for (int i = 0; i < genres.length; i++) {
      newGenres = newGenres +
          genres[i]['name'] +
          ((i == genres.length - 1) ? "" : ', ');
    }
    return newGenres;
  }

  _printMovies(MovieService ser, double width) {
    var imageUrl = 'https://image.tmdb.org/t/p/w500/';
    return ListView.builder(
      padding: EdgeInsets.zero,
      scrollDirection: Axis.vertical,
      itemCount: ser.allRentInfo.length,
      itemBuilder: (BuildContext ctx, int i) {
        double width = MediaQuery.of(ctx).size.width;
        double height = MediaQuery.of(ctx).size.height;
        return 
        Padding(
          padding:
              const EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
          child: GestureDetector(
            onTap: () {
              setState(() {
                globalData.movieId = ser.allRentInfo[i][0];
                globalData.movieTitleRent = ser.allRentInfo[i][1];
              });
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        MovieDetailsRent(id: ser.allRentInfo[i][0])),
              );
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    imageUrl + ser.allRentInfo[i][3],
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
                          ser.allRentInfo[i][1],
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
                          Genres(ser.allRentGenres[i]),
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
                              border:
                                  Border.all(color: const Color(0xff707070)),
                              color: const Color(0xff7e132b),
                            ),
                            child: Text(
                              ser.allRentInfo[i][5] == 'en'
                                  ? "English"
                                  : ser.allRentInfo[i][5] == 'es'
                                      ? "Spanish"
                                      : ser.allRentInfo[i][5] == 'fi'
                                          ? "Finnish"
                                          : ser.allRentInfo[i][5] == 'ar'
                                              ? "Arabic"
                                              : ser.allRentInfo[i][5] == 'fr'
                                                  ? "French"
                                                  : ser.allRentInfo[i][5] ==
                                                          "ko"
                                                      ? "Korean"
                                                      : ser.allRentInfo[i][5] ==
                                                              "ja"
                                                          ? "japanese"
                                                          : ser.allRentInfo[i]
                                                                      [5] ==
                                                                  "ru"
                                                              ? "Russian"
                                                              : ser.allRentInfo[
                                                                  i][5],
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
                                borderRadius:
                                    BorderRadius.circular(height * 0.022),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0x29000000),
                                    offset: Offset(0, height * 0.005),
                                    blurRadius: height * 0.007,
                                  ),
                                ],
                              ),
                              child: Text(
                                ser.allRatingsRent[i] == ''
                                    ? 'N/A'
                                    : ser.allRatings[i],
                                style: SafeGoogleFont(
                                  'Lucida Bright',
                                  height * 0.020,
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
      },
    );
  }
}

// class _ShowingListAdmin extends State<ShowingListAdmin> {
//   @override
//   void initState() {
//     super.initState();
//     MovieService().getAllDetailsRent();
//     setState(() {
//       globalData.movieId = 0;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     Size deviceSize = MediaQuery.of(context).size;
//     MovieService ser = MovieService();
//     double width = deviceSize.width;
//     return SizedBox(
//       height: deviceSize.height * 1,
//       child: FutureBuilder(
//         future: Future.wait([
//           ser.getAllDetailsRent(),
//           ser.getAllReleaseRent(),
//           ser.getAllGenresRent()
//         ]),
//         builder: (BuildContext ctx, AsyncSnapshot<dynamic> snapshot) {
//           ConnectionState state = snapshot.connectionState;

//           // loading
//           if (state == ConnectionState.waiting) {
//             return const Center(child: ItemSkeletonV(length: 10));
//           }
//           // error
//           else if (snapshot.hasError) {
//             print(snapshot.error);
//             return const Center(
//               child: Text(
//                 'Loading Error',
//                 style: TextStyle(fontSize: 20, color: Colors.red),
//               ),
//             );
//           }
//           // loaded
//           else {
//             return Padding(
//               padding: const EdgeInsets.only(bottom: 0),
//               child: _printMovies2(ser, width),
//             );
//           }
//         },
//       ),
//     );
//   }

//   String Genres(List genres) {
//     String newGenres = '';
//     for (int i = 0; i < genres.length; i++) {
//       newGenres = newGenres +
//           genres[i]['name'] +
//           ((i == genres.length - 1) ? "" : ', ');
//     }
//     return newGenres;
//   }

//   _printMovies(MovieService ser, double width) {
//     var imageUrl = 'https://image.tmdb.org/t/p/w500/';
//     return ListView.builder(
//       padding: EdgeInsets.zero,
//       scrollDirection: Axis.vertical,
//       itemCount: ser.showingNow.length,
//       itemBuilder: (BuildContext ctx, int i) {
//         double width = MediaQuery.of(ctx).size.width;
//         double height = MediaQuery.of(ctx).size.height;
//         return Padding(
//           padding:
//               const EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
//           child: GestureDetector(
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) =>
//                         MovieDetailsBook(id: ser.showingNow[i]['id'])),
//               );
//             },
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 //poster
//                 ClipRRect(
//                   borderRadius: BorderRadius.circular(10),
//                   child: Image.network(
//                     imageUrl + ser.showingNow[i]['poster_path'],
//                     height: 190,
//                     width: 120,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 5,
//                 ),
//                 SizedBox(
//                   height: 190,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SizedBox(
//                         width: width - 177,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             const SizedBox(
//                               width: 5,
//                             ),
//                             //movie title
//                             SizedBox(
//                               width: width - 177,
//                               child: Text(
//                                 ser.showingNow[i]['title'],
//                                 style: SafeGoogleFont(
//                                   'Lucida Bright',
//                                   width * 0.05,
//                                   fontWeight: FontWeight.w600,
//                                   color: const Color(0xff7e132b),
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(
//                               height: 5,
//                             ),
//                             //genres
//                             SizedBox(
//                               width: width - 177,
//                               child: Text(
//                                 Genres(ser.Genres2[i]),
//                                 style: TextStyle(
//                                     color: mainColor,
//                                     fontSize: width * 0.03,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                             const Padding(padding: EdgeInsets.all(5)),
//                             Row(
//                               children: [
//                                 //language
//                                 Container(
//                                   padding: const EdgeInsets.only(
//                                       top: 0, left: 20, bottom: 2, right: 20),
//                                   decoration: BoxDecoration(
//                                     border: Border.all(
//                                         color: const Color(0xff707070)),
//                                     color: const Color(0xff7e132b),
//                                   ),
//                                   child: Text(
//                                     ser.showingNow[i]['original_language'] ==
//                                             'en'
//                                         ? "English"
//                                         : ser.showingNow[i]
//                                                     ['original_language'] ==
//                                                 'es'
//                                             ? "Spanish"
//                                             : ser.showingNow[i]
//                                                         ['original_language'] ==
//                                                     'fi'
//                                                 ? "Finnish"
//                                                 : ser.showingNow[i][
//                                                             'original_language'] ==
//                                                         'ar'
//                                                     ? "Arabic"
//                                                     : ser.showingNow[i][
//                                                                 'original_language'] ==
//                                                             'fr'
//                                                         ? "French"
//                                                         : ser.showingNow[i][
//                                                                     'original_language'] ==
//                                                                 "ko"
//                                                             ? "Korean"
//                                                             : ser.showingNow[i]
//                                                                         ['original_language'] ==
//                                                                     "ja"
//                                                                 ? "japanese"
//                                                                 : ser.showingNow[i]['original_language'] == "ru"
//                                                                     ? "Russian"
//                                                                     : ser.showingNow[i]['original_language'],
//                                     style: SafeGoogleFont(
//                                       'Lucida Bright',
//                                       12,
//                                       fontWeight: FontWeight.w400,
//                                       color: const Color(0xffffffff),
//                                     ),
//                                   ),
//                                 ),
//                                 //age rating
//                                 Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: Container(
//                                     padding: const EdgeInsets.only(
//                                         top: 0, left: 20, bottom: 2, right: 20),
//                                     decoration: BoxDecoration(
//                                       color: const Color(0xff9a2044),
//                                       borderRadius:
//                                           BorderRadius.circular(height * 0.022),
//                                       boxShadow: [
//                                         BoxShadow(
//                                           color: const Color(0x29000000),
//                                           offset: Offset(0, height * 0.005),
//                                           blurRadius: height * 0.007,
//                                         ),
//                                       ],
//                                     ),
//                                     child: Text(
//                                       ser.allRatings[i] == ''
//                                           ? 'N/A'
//                                           : ser.allRatings[i],
//                                       style: SafeGoogleFont(
//                                         'Lucida Bright',
//                                         height * 0.020,
//                                         fontWeight: FontWeight.w600,
//                                         color: const Color(0xffffffff),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                       TextButton(
//                         onPressed: () {
//                           setState(() {
//                             globalData.movieId = ser.showingNow[i]['id'];
//                             globalData.movieId;
//                           });
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) =>
//                                     const EditMovieSchedule()),
//                           );
//                         },
//                         child: Container(
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 10, vertical: 3),
//                           decoration: BoxDecoration(
//                             color: const Color(0xFFFFFFFF),
//                             borderRadius: BorderRadius.circular(50),
//                             border: Border.all(
//                               color: const Color(0xff9a2044),
//                             ),
//                           ),
//                           child: Text(
//                             'Edit Schedual',
//                             style: GoogleFonts.lato(
//                               fontSize: 14,
//                               fontWeight: FontWeight.w600,
//                               color: const Color(0xff9a2044),
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
//         );
//       },
//     );
//   }

//   _printMovies2(MovieService ser, double width) {
//     var imageUrl = 'https://image.tmdb.org/t/p/w500/';
//     return ListView.builder(
//       padding: EdgeInsets.zero,
//       scrollDirection: Axis.vertical,
//       itemCount: ser.allRentInfo.length,
//       itemBuilder: (BuildContext ctx, int i) {
//         double width = MediaQuery.of(ctx).size.width;
//         double height = MediaQuery.of(ctx).size.height;
//         return Padding(
//           padding:
//               const EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
//           child: GestureDetector(
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) =>
//                         MovieDetailsBook(id: ser.allRentInfo[i][0])),
//               );
//             },
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 //poster
//                 ClipRRect(
//                   borderRadius: BorderRadius.circular(10),
//                   child: Image.network(
//                     imageUrl + ser.allRentInfo[i][3],
//                     height: 190,
//                     width: 120,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 5,
//                 ),
//                 SizedBox(
//                   height: 190,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SizedBox(
//                         width: width - 177,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             const SizedBox(
//                               width: 5,
//                             ),
//                             //movie title
//                             SizedBox(
//                               width: width - 177,
//                               child: Text(
//                                 ser.allRentInfo[i][1],
//                                 style: SafeGoogleFont(
//                                   'Lucida Bright',
//                                   width * 0.05,
//                                   fontWeight: FontWeight.w600,
//                                   color: const Color(0xff7e132b),
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(
//                               height: 5,
//                             ),
//                             //genres
//                             SizedBox(
//                               width: width - 177,
//                               child: Text(
//                                 Genres(ser.allRentGenres[i]),
//                                 style: TextStyle(
//                                     color: mainColor,
//                                     fontSize: width * 0.03,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                             const Padding(padding: EdgeInsets.all(5)),
//                             Row(
//                               children: [
//                                 //language
//                                 Container(
//                                   padding: const EdgeInsets.only(
//                                       top: 0, left: 20, bottom: 2, right: 20),
//                                   decoration: BoxDecoration(
//                                     border: Border.all(
//                                         color: const Color(0xff707070)),
//                                     color: const Color(0xff7e132b),
//                                   ),
//                                   child: Text(
//                                     ser.allRentInfo[i][5] == 'en'
//                                         ? "English"
//                                         : ser.allRentInfo[i][5] == 'es'
//                                             ? "Spanish"
//                                             : ser.allRentInfo[i][5] == 'fi'
//                                                 ? "Finnish"
//                                                 : ser.allRentInfo[i][5] == 'ar'
//                                                     ? "Arabic"
//                                                     : ser.allRentInfo[i][5] ==
//                                                             'fr'
//                                                         ? "French"
//                                                         : ser.allRentInfo[i]
//                                                                     [5] ==
//                                                                 "ko"
//                                                             ? "Korean"
//                                                             : ser.allRentInfo[i]
//                                                                         [5] ==
//                                                                     "ja"
//                                                                 ? "japanese"
//                                                                 : ser.allRentInfo[i]
//                                                                             [
//                                                                             5] ==
//                                                                         "ru"
//                                                                     ? "Russian"
//                                                                     : ser.allRentInfo[
//                                                                         i][5],
//                                     style: SafeGoogleFont(
//                                       'Lucida Bright',
//                                       12,
//                                       fontWeight: FontWeight.w400,
//                                       color: const Color(0xffffffff),
//                                     ),
//                                   ),
//                                 ),
//                                 //age rating
//                                 Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: Container(
//                                     padding: const EdgeInsets.only(
//                                         top: 0, left: 20, bottom: 2, right: 20),
//                                     decoration: BoxDecoration(
//                                       color: const Color(0xff9a2044),
//                                       borderRadius:
//                                           BorderRadius.circular(height * 0.022),
//                                       boxShadow: [
//                                         BoxShadow(
//                                           color: const Color(0x29000000),
//                                           offset: Offset(0, height * 0.005),
//                                           blurRadius: height * 0.007,
//                                         ),
//                                       ],
//                                     ),
//                                     child: Text(
//                                       ser.allRatings[i] == ''
//                                           ? 'N/A'
//                                           : ser.allRatings[i],
//                                       style: SafeGoogleFont(
//                                         'Lucida Bright',
//                                         height * 0.020,
//                                         fontWeight: FontWeight.w600,
//                                         color: const Color(0xffffffff),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                       TextButton(
//                         onPressed: () {
//                           setState(() {
//                             globalData.movieId = ser.showingNow[i]['id'];
//                             globalData.movieId;
//                           });
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) =>
//                                     const EditMovieSchedule()),
//                           );
//                         },
//                         child: Container(
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 10, vertical: 3),
//                           decoration: BoxDecoration(
//                             color: const Color(0xFFFFFFFF),
//                             borderRadius: BorderRadius.circular(50),
//                             border: Border.all(
//                               color: const Color(0xff9a2044),
//                             ),
//                           ),
//                           child: Text(
//                             'Edit Schedual',
//                             style: GoogleFonts.lato(
//                               fontSize: 14,
//                               fontWeight: FontWeight.w600,
//                               color: const Color(0xff9a2044),
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
//         );
//       },
//     );
//   }
// }
