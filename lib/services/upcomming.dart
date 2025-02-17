import 'package:flutter/material.dart';
import 'package:myapp/services/Movie%20service.dart';
import '../cenima-app-user/movie-details-book.dart';
import '../shared/Theme.dart';
import '../utils.dart';
import 'items_skeleton.dart';

class UpcommingList extends StatelessWidget {
  const UpcommingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    MovieService ser = MovieService();
    return SizedBox(
        height: deviceSize.height * 0.34,
        child: FutureBuilder(
            future: ser.getUpcomming(),
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
                return _printMovies(ser);
              }
            }));
  }

  _printMovies(MovieService ser) {
    var imageUrl = 'https://image.tmdb.org/t/p/w500/';
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (BuildContext ctx, int i) {
        return Padding(
          padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
          child: GestureDetector(
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    imageUrl + ser.upcomming[i]['poster_path'],
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
                              ser.upcomming[i]['title'],
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

class UpcommingListAll extends StatefulWidget {
  const UpcommingListAll({Key? key}) : super(key: key);

  @override
  State<UpcommingListAll> createState() => _UpcommingListAllState();
}

class _UpcommingListAllState extends State<UpcommingListAll> {
  @override
  void initState() {
    MovieService().getShowingNow();
  }

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    MovieService ser = MovieService();
    double width = deviceSize.width;
    return SizedBox(
        height: deviceSize.height + 200,
        child: FutureBuilder(
            future: Future.wait([
              ser.getUpcomming(),
              ser.getAllUpcommingRelease(),
              ser.getAllUpcommingGenres()
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
                  padding: const EdgeInsets.only(bottom: 100),
                  child: _printMovies(ser, width),
                );
              }
            }));
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
      itemCount: ser.upcomming.length,
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
                        MovieDetailsBook(id: ser.upcomming[i]['id'])),
              );
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    imageUrl + ser.upcomming[i]['poster_path'],
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
                          ser.upcomming[i]['title'],
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
                          Genres(ser.Genres3[i]),
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
                              ser.upcomming[i]['original_language'] == 'en'
                                  ? "English"
                                  : ser.upcomming[i]['original_language'] ==
                                          'es'
                                      ? "Spanish"
                                      : ser.upcomming[i]['original_language'] ==
                                              'fi'
                                          ? "Finnish"
                                          : ser.upcomming[i]
                                                      ['original_language'] ==
                                                  'ar'
                                              ? "Arabic"
                                              : ser.upcomming[i][
                                                          'original_language'] ==
                                                      'fr'
                                                  ? "French"
                                                  : ser.upcomming[i][
                                                              'original_language'] ==
                                                          "ko"
                                                      ? "Korean"
                                                      : ser.upcomming[i][
                                                                  'original_language'] ==
                                                              "ja"
                                                          ? "japanese"
                                                          : ser.upcomming[i][
                                                                      'original_language'] ==
                                                                  "ru"
                                                              ? "Russian"
                                                              : ser.upcomming[i]
                                                                  [
                                                                  'original_language'],
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
                                ser.allRatingsUpcomming[i] == ''
                                    ? 'N/A'
                                    : ser.allRatingsUpcomming[i],
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
