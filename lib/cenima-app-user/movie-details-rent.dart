import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/cenima-app-user/rent-details.dart';
import 'package:myapp/utils.dart';
import '../services/Movie service.dart';
import '../services/detail_skeleton.dart';
import '../shared/Theme.dart';


class MovieDetailsRent extends StatefulWidget {
  final int id;

  MovieDetailsRent({required this.id});
  @override
  State<MovieDetailsRent> createState() => _MovieDetailsRent();
}

class _MovieDetailsRent extends State<MovieDetailsRent> {
  late Size deviceSize;

  late BuildContext context;

  late Map arguments;
  @override
  void initState() {
    MovieService().getShowingNow();
  }

  @override
  Widget build(BuildContext context) {
    DateTime currentDate = DateTime.now();
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    this.context = context;
    deviceSize = MediaQuery.of(context).size;
    MovieService ser = MovieService();

    return Container(
        height: deviceSize.height * 0.34,
        child: FutureBuilder(
            future: Future.wait([
              ser.getDetails(widget.id),
              ser.getRelease(widget.id),
              ser.getGenres(widget.id)
            ]),
            // Firebase read operation , which gives future
            builder: (BuildContext ctx, AsyncSnapshot<dynamic> snapshot) {
              ConnectionState state = snapshot.connectionState;

              // loading
              if (state == ConnectionState.waiting) {
                return const Scaffold(
                  body: DetailScreenSkeleton(),
                );
              }
              // error
              else if (snapshot.hasError) {
                return SafeArea(
                  child: Scaffold(
                    body: Center(
                      child: Image.asset(
                        'assets/images/crash.gif',
                        width: deviceSize.width,
                        height: deviceSize.height * 0.34,
                      ),
                    ),
                  ),
                );
              }
              // loaded
              else {
                return _printMovieDetail(ser: ser, context: context);
              }
            }),
            );
  }

  String minutesToMinutesHours(int Min) {
    int hours = (Min / 60).toInt();
    int minutes = Min - (hours * 60);
    return "$hours Hours $minutes Min";
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

  _printMovieDetail(
      {required MovieService ser, required BuildContext context}) {
    bool isSelected = false;
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var image_url = 'https://image.tmdb.org/t/p/w500/';

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0x44000000),
        elevation: 0,
        leading: IconButton(
          onPressed: () => {Navigator.pop(context)},
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Color(0xffdd204a),
        ),
        title: Text(
          ser.Info[1],
          textAlign: TextAlign.center,
          style: SafeGoogleFont(
            'Segoe UI',
            23 * ffem,
            fontWeight: FontWeight.w700,
            height: 1.2575 * ffem / fem,
            color: Color(0xffffffff),
          ),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                //poster
                Container(
                  height: height * 0.4,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                          width: width,
                          child: Image.network(
                            image_url + ser.Info[3],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      //duration
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            minutesToMinutesHours(ser.Info[7]),
                            style: SafeGoogleFont(
                              'Lucida Bright',
                              height * 0.027,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                      //age rating
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: EdgeInsets.only(
                                top: 0, left: 20, bottom: 2, right: 20),
                            decoration: BoxDecoration(
                              color: Color(0xff9a2044),
                              borderRadius:
                                  BorderRadius.circular(17.6289710999 * fem),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x29000000),
                                  offset: Offset(0 * fem, 3.3054320812 * fem),
                                  blurRadius: 0.2754526734 * fem,
                                ),
                              ],
                            ),
                            child: Text(
                              ser.rating == '' ? 'N/A' : ser.rating,
                              style: SafeGoogleFont(
                                'Lucida Bright',
                                height * 0.027,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //information box
                Container(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Card(
                      margin: EdgeInsets.zero,
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(
                          color: Color(0xff707070),
                          width: 1,
                        ),
                      ),
                      child: ExpansionTile(
                        initiallyExpanded: true,
                        iconColor: mainColor,
                        title: Text(
                          'Information',
                          style: SafeGoogleFont(
                            'Segoe UI',
                            height * 0.028,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: ListTile(
                              title: Text(
                                ser.Info[4],
                                style: SafeGoogleFont(
                                  'Lucida Bright',
                                  height * 0.020,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff464646),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: ListTile(
                              title: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Genres:-  ',
                                      style: movieInfoTitle(height)),
                                  Container(
                                    width: width * 0.6,
                                    child: Text(
                                      Genres(ser.Genres),
                                      style: SafeGoogleFont(
                                        'Cambria',
                                        height * 0.020,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffff2153),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: ListTile(
                              title: Row(
                                children: [
                                  Text('Language:-  ',
                                      style: movieInfoTitle(height)),
                                  Container(
                                    padding: EdgeInsets.only(
                                        top: 0, left: 20, bottom: 2, right: 20),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: const Color(0xff707070)),
                                      color: const Color(0xff7e132b),
                                    ),
                                    child: Text(
                                      ser.Info[5] == 'en'
                                          ? "English"
                                          : ser.Info[5] == 'es'
                                              ? "spanish"
                                              : ser.Info[5] == 'fi'
                                                  ? "finnish"
                                                  : ser.Info[5] == 'ar'
                                                      ? "Arabic"
                                                      : ser.Info[5] == 'fr'
                                                          ? "French"
                                                          : ser.Info[5] == "ko"
                                                              ? "Korean"
                                                              : ser.Info[5] ==
                                                                      "ja"
                                                                  ? "japanese"
                                                                  : ser.Info[5] ==
                                                                          "ru"
                                                                      ? "Russian"
                                                                      : ser.Info[
                                                                          5],
                                      style: SafeGoogleFont(
                                        'Lucida Bright',
                                        12,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: ListTile(
                              title: Row(
                                children: [
                                  Text('Rating:-  ',
                                      style: movieInfoTitle(height)),
                                  Text(
                                    ser.Info[6].toString(),
                                    style: movieInfo(height),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: ListTile(
                              title: Row(
                                children: [
                                  Text('Release Date:-  ',
                                      style: movieInfoTitle(height)),
                                  Text(
                                    ser.Info[8],
                                    style: movieInfo(height),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
              ],
            ),
          ),
          //rent movie button
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: width * 0.6,
                  height: height * 0.05,
                  child: Center(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: const Color(0xffff2153),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Center(
                          child: Text(
                            'Rent Movie',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lato(
                              fontSize: width * 0.05,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ChoosePeriod()),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
