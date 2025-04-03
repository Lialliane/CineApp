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
