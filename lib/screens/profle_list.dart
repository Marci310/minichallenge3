import 'package:flutter/material.dart';

import '../components/components.dart';
import '../models/models.dart';
import '../network/tmdb_api.dart';

class ProfileListScreen extends StatelessWidget {
  final AppStateManager manager;
  final exploreService = TmdbApiService();

  ProfileListScreen({super.key, required this.manager});

  @override
  Widget build(BuildContext context) {
    String arg = '';
    if (manager.getSelectedCategry == 1) {
      arg = 'first_air_date';
    } else {
      arg = 'release_date';
    }
    return FutureBuilder(
      future: exploreService.popularList(arg),
      builder: (context, AsyncSnapshot<List<SimpleShow>> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return ShowGridView(shows: snapshot.data ?? []);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
