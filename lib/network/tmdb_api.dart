import 'package:minichallenge3/models/simpleshow.dart';
import 'package:tmdb_api/tmdb_api.dart';

final tmdb = TMDB(ApiKeys('69eb703b3908fcebfae7ed5891e99241',
    'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI2OWViNzAzYjM5MDhmY2ViZmFlN2VkNTg5MWU5OTI0MSIsInN1YiI6IjY1NmY2MDBhNTY4NDYzMDEzMGExYmNmYiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.fq7b3zfyzD27udDW03qnLXwaKnKdT2S6C23qcGJCBgM'));

class TmdbApiService {
  Future<List<SimpleShow>> popularList(String arg) async {
    //api with out console logs

    final json = await tmdb.v3.tv.getPopular();
    if (json['results'] != null) {
      final shows = <SimpleShow>[];
      json['results'].forEach((v) {
        //shows.add(SimpleShow.fromJson(v, 'first_air_date'));
        shows.add(SimpleShow.fromJson(v, arg));
      });
      return shows;
    } else {
      return [];
    }
  }

  Future<List<SimpleShow>> popularmovies(List<String> args) async {
    //api with out console logs

    final json = await tmdb.v3.movies.getPopular();
    if (json['results'] != null) {
      final shows = <SimpleShow>[];
      json['results'].forEach((v) {
        shows.add(SimpleShow.fromJson(v, 'release_date'));
      });
      return shows;
    } else {
      return [];
    }
  }
}
