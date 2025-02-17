import 'package:tmdb_api/tmdb_api.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

var image_url = 'https://image.tmdb.org/t/p/w500/';

class MovieService {
  List showingNow = [];
  List upcomming = [];
  List upcomming2 = [];
  List Info = [];
  List<List> allRentInfo = [];
  List showingNow2 = [];
  List release = [];
  List release2 = [];
  List release3 = [];
  String rating = '';
  String rating2 = '';
  String rating3 = '';
  List allRatings = [];
  List allRatingsRent = [];
  List allRatingsUpcomming = [];
  List Genres = [];
  List Genres2 = [];
  List Genres3 = [];
  List allRentGenres = [];
  List allGenres = [];
  List allGenresUpcomming = [];
  List IDs = [];
  List upcommingsIDs = [];
  List searchResult = [];
  List docList = [];
  List rentId = [];

  final String apiKey = 'c288e07bc074b958bfa1c394b65a75c6';
  final String api = '9djdukx46bs5sbesbqfa3ytf';
  final accessToken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJjMjg4ZTA3YmMwNzRiOTU4YmZhMWMzOTRiNjVhNzVjNiIsInN1YiI6IjY0NTYyMTdkNjA2MjBhMDBlM2NmOGFkZCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.G9atRC-6DNzfXJGTcw-ySmQepEnkCx5HF1SrMN2kM0I';

  /*getMovie() async {
    var url =
        'http://api.rottentomatoes.com/api/public/v1.0/lists/movies/in_theaters.json?apikey=${api}';
    final response = await movieModel.get(Uri.parse(url));
    showingNow2 = json.decode(response.body);
    return showingNow2;
  }*/

  Future getShowingNow() async {
    TMDB tmdb = TMDB(ApiKeys(apiKey, accessToken),
        logConfig: const ConfigLogger(showLogs: true, showErrorLogs: true));
    Map showingNowResult = await tmdb.v3.movies.getNowPlaying();
    showingNow = showingNowResult['results'];
    return showingNow;
  }

  Future Search(String query) async {
    await getIDs();
    int count = -1;
    TMDB tmdb = TMDB(ApiKeys(apiKey, accessToken),
        logConfig: const ConfigLogger(showLogs: true, showErrorLogs: true));
    Map Result =
        await tmdb.v3.search.queryMovies(query, primaryReleaseYear: 2023);
    for (int i = 0; i < Result['results'].length; i++) {
      for (int z = 0; z < IDs.length; z++) {
        if (Result['results'][i]['id'] == IDs[z]) {
          count++;
          searchResult.length = count + 1;
          searchResult[count] = Result['results'][i];
        }
      }
    }
    return searchResult;
  }

  Future getDetails(int Id) async {
    TMDB tmdb = TMDB(ApiKeys(apiKey, accessToken),
        logConfig: const ConfigLogger(showLogs: true, showErrorLogs: true));
    Map infoResult = await tmdb.v3.movies.getDetails(Id);
    Info = [
      infoResult['id'],
      infoResult['title'],
      infoResult['release_date'],
      infoResult['poster_path'],
      infoResult['overview'],
      infoResult['original_language'],
      infoResult['vote_average'],
      infoResult['runtime'],
      infoResult['release_date'],
      infoResult['tagline']
    ];
    print("hell$Info");

    return Info;
  }

  Future getGenres(int id) async {
    TMDB tmdb = TMDB(ApiKeys(apiKey, accessToken),
        logConfig: const ConfigLogger(showLogs: true, showErrorLogs: true));
    Map infoResult = await tmdb.v3.movies.getDetails(id);
    Genres = infoResult['genres'];
    return Genres;
  }

  Future getAllGenres() async {
    await getIDs();
    Genres2.length = IDs.length;
    TMDB tmdb = TMDB(ApiKeys(apiKey, accessToken),
        logConfig: const ConfigLogger(showLogs: true, showErrorLogs: true));

    for (int i = 0; i < IDs.length; i++) {
      Map infoResult = await tmdb.v3.movies.getDetails(IDs[i]);
      Genres2[i] = infoResult['genres'];
    }
    return Genres2;
  }

  Future getAllGenresRent() async {
    await rentedMovies();
    allRentGenres.length = rentId.length;
    TMDB tmdb = TMDB(ApiKeys(apiKey, accessToken),
        logConfig: const ConfigLogger(showLogs: true, showErrorLogs: true));

    for (int i = 0; i < rentId.length; i++) {
      Map infoResult = await tmdb.v3.movies.getDetails(rentId[i]);
      allRentGenres[i] = infoResult['genres'];
    }
    return allRentGenres;
  }

  Future getAllDetailsRent() async {
    await rentedMovies();
    allRentGenres.length = rentId.length;
    TMDB tmdb = TMDB(ApiKeys(apiKey, accessToken),
        logConfig: const ConfigLogger(showLogs: true, showErrorLogs: true));

    for (int i = 0; i < rentId.length; i++) {
      Map infoResult = await tmdb.v3.movies.getDetails(rentId[i]);
      Info = [
        infoResult['id'],
        infoResult['title'],
        infoResult['release_date'],
        infoResult['poster_path'],
        infoResult['overview'],
        infoResult['original_language'],
        infoResult['vote_average'],
        infoResult['runtime'],
        infoResult['release_date'],
        infoResult['tagline']
      ];
      allRentInfo.add(Info);
    }
    return allRentInfo;
  }

  Future getAllUpcommingGenres() async {
    await getUpIDs();
    Genres3.length = upcommingsIDs.length;
    TMDB tmdb = TMDB(ApiKeys(apiKey, accessToken),
        logConfig: const ConfigLogger(showLogs: true, showErrorLogs: true));

    for (int i = 0; i < upcommingsIDs.length; i++) {
      Map infoResult = await tmdb.v3.movies.getDetails(upcommingsIDs[i]);
      Genres3[i] = infoResult['genres'];
    }
    return Genres3;
  }

  Future getUpcomming() async {
    TMDB tmdb = TMDB(ApiKeys(apiKey, accessToken),
        logConfig: const ConfigLogger(showLogs: true, showErrorLogs: true));
    Map upcommingResult = await tmdb.v3.movies.getUpcoming();
    upcomming = upcommingResult['results'];
    return upcomming;
  }

  Future getRelease(int id) async {
    TMDB tmdb = TMDB(ApiKeys(apiKey, accessToken),
        logConfig: const ConfigLogger(showLogs: true, showErrorLogs: true));
    Map releaseResult = await tmdb.v3.movies.getReleaseDates(id);
    release = releaseResult['results'];
    for (int i = 0; i < release.length; i++) {
      if (release[i]['iso_3166_1'] == 'US') {
        rating = release[i]['release_dates'][0]['certification'];
      }
    }
    return rating;
  }

  Future getAllRelease() async {
    await getIDs();
    allRatings.length = IDs.length;
    TMDB tmdb = TMDB(ApiKeys(apiKey, accessToken),
        logConfig: const ConfigLogger(showLogs: true, showErrorLogs: true));
    for (int i = 0; i < IDs.length; i++) {
      Map releaseResult = await tmdb.v3.movies.getReleaseDates(IDs[i]);
      release2 = releaseResult['results'];
      for (int i = 0; i < release2.length; i++) {
        if (release2[i]['iso_3166_1'] == 'US') {
          rating2 = release2[i]['release_dates'][0]['certification'];
        }
      }
      allRatings[i] = rating2;
    }
    return allRatings;
  }

  Future getAllReleaseRent() async {
    await rentedMovies();
    allRatingsRent.length = rentId.length;
    TMDB tmdb = TMDB(ApiKeys(apiKey, accessToken),
        logConfig: const ConfigLogger(showLogs: true, showErrorLogs: true));
    for (int i = 0; i < rentId.length; i++) {
      Map releaseResult = await tmdb.v3.movies.getReleaseDates(rentId[i]);
      release2 = releaseResult['results'];
      for (int i = 0; i < release2.length; i++) {
        if (release2[i]['iso_3166_1'] == 'US') {
          rating2 = release2[i]['release_dates'][0]['certification'];
        }
      }
      allRatingsRent[i] = rating2;
    }
    return allRatingsRent;
  }

  Future getAllUpcommingRelease() async {
    await getUpIDs();
    allRatingsUpcomming.length = upcommingsIDs.length;
    TMDB tmdb = TMDB(ApiKeys(apiKey, accessToken),
        logConfig: const ConfigLogger(showLogs: true, showErrorLogs: true));
    for (int i = 0; i < upcommingsIDs.length; i++) {
      Map releaseResult =
          await tmdb.v3.movies.getReleaseDates(upcommingsIDs[i]);
      release3 = releaseResult['results'];
      for (int i = 0; i < release3.length; i++) {
        if (release3[i]['iso_3166_1'] == 'US') {
          rating3 = release3[i]['release_dates'][0]['certification'];
        }
      }
      allRatingsUpcomming[i] = rating3;
    }
    return allRatingsUpcomming;
  }

  getIDs() async {
    TMDB tmdb = TMDB(ApiKeys(apiKey, accessToken),
        logConfig: const ConfigLogger(showLogs: true, showErrorLogs: true));
    Map showingNowResult = await tmdb.v3.movies.getNowPlaying();
    showingNow2 = showingNowResult['results'];
    IDs.length = showingNow2.length;
    for (int i = 0; i < showingNow2.length; i++) {
      IDs[i] = showingNow2[i]['id'];
    }
    return IDs;
  }

  getUpIDs() async {
    TMDB tmdb = TMDB(ApiKeys(apiKey, accessToken),
        logConfig: const ConfigLogger(showLogs: true, showErrorLogs: true));
    Map upcommingResults = await tmdb.v3.movies.getUpcoming();
    upcomming2 = upcommingResults['results'];
    upcommingsIDs.length = upcomming2.length;
    for (int i = 0; i < upcomming2.length; i++) {
      upcommingsIDs[i] = upcomming2[i]['id'];
    }
    return IDs;
  }

  rentedMovies() async {
    final CollectionReference rented =
        FirebaseFirestore.instance.collection('rented-movies');
    return await rented.get().then((value) {
      // print(value.docs.toList());
      for (final child in value.docs) {
        docList.add(child.id);
      }

      for (final index in docList) {
        final docRef = rented.doc(index);
        docRef.get().then((DocumentSnapshot doc) {
          final docData = doc.data() as Map<String, dynamic>;
          // print(docData);
          rentId.add(docData['movieId']);
          print(rentId);
          print(rentId.length);
        });
      }

      print(docList);
      print(rentId);
      return rentId;
    });
  }
}

class MovieDatabase {
  static final CollectionReference _MovieCollection =
      FirebaseFirestore.instance.collection('ApiMovies');

  static Future<void> updateMovie(int id, String title, String ageRating,
      String imageurl, String released, List<String> genres) async {
    return await _MovieCollection.doc(id.toString()).set({
      'id': id,
      'title': title,
      'ageRating': ageRating,
      'imageurl': imageurl,
      'released': released,
      'genres': genres,
    });
  }
}
