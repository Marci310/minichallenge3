import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../components/components.dart';
import '../models/models.dart';

class ShowGridView extends StatelessWidget {
  final List<SimpleShow> shows;

  const ShowGridView({
    super.key,
    required this.shows,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
      ),
      child: GridView.builder(
        itemCount: shows.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          final simpleShow = shows[index];
          return GestureDetector(
            child: ShowThumbnail(show: simpleShow),
            onTap: () => context
                .goNamed('show', params: {'id': simpleShow.id.toString()}),
          );
        },
      ),
    );
  }
}
