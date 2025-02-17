import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../services/Movie service.dart';
import '../services/items_skeleton.dart';
import '../shared/Theme.dart';
import '../utils.dart';

class SearchPage extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: query == "" ? const Icon(Icons.search) : const Icon(Icons.close),
        onPressed: () {
          query = "";
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Color(0xFF000000),
        ),
        onPressed: () {
          Navigator.pop(context);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    MovieService ser = MovieService();
    double width = deviceSize.width;
    return SizedBox(
      height: deviceSize.height * 1,
      child: FutureBuilder(
        future: Future.wait(
            [ser.Search(query), ser.getAllRelease(), ser.getAllGenres()]),
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

  @override
  Widget buildSuggestions(BuildContext context) {
    return const Center(
      child: Text(
        "Search Movies Here",
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
    if (ser.searchResult.isEmpty) {
      return Center(
        child: Text(
          "No available movies with '$query' in it, Please try again",
          style: GoogleFonts.ibmPlexSerif(
            fontSize: width * 0.035,
            fontWeight: FontWeight.w300,
            color: const Color(0xff000000),
          ),
        ),
      );
    }
    return ListView.builder(
      padding: EdgeInsets.zero,
      scrollDirection: Axis.vertical,
      itemCount: ser.searchResult.length,
      itemBuilder: (BuildContext ctx, int i) {
        double width = MediaQuery.of(ctx).size.width;
        double height = MediaQuery.of(ctx).size.height;

        return Padding(
          padding:
              const EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
          child: GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) =>
              //           MovieDetailsBook(id: ser.showingNow[i]['id'])),
              // );
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    imageUrl + ser.searchResult[i]['poster_path'],
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
                          ser.searchResult[i]['title'],
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
                              ser.searchResult[i]['original_language'] == 'en'
                                  ? "English"
                                  : ser.searchResult[i]['original_language'] ==
                                          'es'
                                      ? "Spanish"
                                      : ser.searchResult[i]
                                                  ['original_language'] ==
                                              'fi'
                                          ? "Finnish"
                                          : ser.searchResult[i]
                                                      ['original_language'] ==
                                                  'ar'
                                              ? "Arabic"
                                              : ser.searchResult[i][
                                                          'original_language'] ==
                                                      'fr'
                                                  ? "French"
                                                  : ser.searchResult[i][
                                                              'original_language'] ==
                                                          "ko"
                                                      ? "Korean"
                                                      : ser.searchResult[i][
                                                                  'original_language'] ==
                                                              "ja"
                                                          ? "japanese"
                                                          : ser.searchResult[i]
                                                                      ['original_language'] ==
                                                                  "ru"
                                                              ? "Russian"
                                                              : ser.searchResult[i]['original_language'] == "zh"
                                                                  ? "Chinese"
                                                                  : ser.searchResult[i]['original_language'],
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
