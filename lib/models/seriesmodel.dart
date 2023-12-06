class Series {
  final List<String> actors;
  final String release;
  final String director;
  final String pegi;
  final String genre;
  final String summary;
  final String duration;
  final String rating;
  final int seasons;
  final int episodes;

  Series(
      {required this.actors,
      required this.release,
      required this.director,
      required this.pegi,
      required this.genre,
      required this.summary,
      required this.duration,
      required this.rating,
      required this.seasons,
      required this.episodes});
}
