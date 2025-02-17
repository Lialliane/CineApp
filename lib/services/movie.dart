
class Movie1 {
  late String id;
  late String title;
  late double ageRating;
  late int released;
  late String imageurl;
  late List genres;

  Movie1({
    required this.id,
    required this.title,
    required this.ageRating,
    required this.imageurl,
    required this.released,
    required this.genres,
  });

  Map<String, dynamic> toMap() {
    return {
      'id' : id,
      'title': title,
      'ageRating' : ageRating,
      'imageurl': imageurl,
      'released' : released,
      'genres' : genres
    };
  }

  @override
  String toString() {
    return 'Movie (title: $title)';
  }

}