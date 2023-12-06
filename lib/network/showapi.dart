/* import 'package:json_annotation/json_annotation.dart';
part 'showapi.g.dart';

@JsonSerializable()
class APIShowQuery {
  factory APIShowQuery.fromJson(Map<String, dynamic> json) =>
      _$APIShowQueryFromJson(json);

  Map<String, dynamic> toJson() => _$APIShowQueryToJson(this);
}

try the other api and if it works do that

/* //3 cast members,
year of release,
director,
release date,
PEGI info,
genre,
summary
length (duration)
rating
In case of a tv series:
Show number of seasons
number of episodes
If the item (movie /tv show) is in the user selected services an icon of these services should appear.
 */
//https://image.tmdb.org/t/p/w500 for the picture */