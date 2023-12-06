class SimpleShow {
  final bool adult;
  final String backdropPath;
  final List<int> genreIds;
  final int id;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final double popularity;
  final String posterPath;
  final String releaseDate;
  final String title;
  final bool video;
  final double voteAverage;
  final int voteCount;

  SimpleShow({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  factory SimpleShow.fromJson(Map<String, dynamic> json, String air) {
    return SimpleShow(
      adult: json['adult'] as bool,
      backdropPath: json['backdrop_path'] as String,
      genreIds: (json['genre_ids'] as List<dynamic>).cast<int>(),
      id: json['id'] as int,
      originalLanguage: json['original_language'] as String,
      originalTitle: json['original_title'] as String,
      overview: json['overview'] as String,
      popularity: json['popularity'] as double,
      posterPath: json['poster_path'] as String,
      releaseDate: json[air.toString()]
          as String, //'first_air_date' if series and 'release_date' if its a movie
      title: json['title'] as String,
      video: json['video'] as bool,
      voteAverage: json['vote_average'] as double,
      voteCount: json['vote_count'] as int,
    );
  }
}
