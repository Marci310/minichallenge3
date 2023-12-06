class Movie {
  final int id;
  final List<String> actors;
  final String release;
  final String director;
  final String pegi;
  final String genre;
  final String summary;
  final String duration;
  final String rating;

  Movie({
    required this.id,
    required this.actors,
    required this.release,
    required this.director,
    required this.pegi,
    required this.genre,
    required this.summary,
    required this.duration,
    required this.rating,
  });

  /* factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json['id'] as int,
      dishImage: json['dishImage'] as String,
      title: json['title'] as String,
      duration: json['duration'] as String,
      source: json['source'] as String,
      information: json['information'].cast<String>() as List<String>,
    );
  } */
}
