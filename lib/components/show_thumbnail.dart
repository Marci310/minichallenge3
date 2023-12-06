import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:minichallenge3/models/simpleshow.dart';

import '../models/models.dart';

class ShowThumbnail extends StatelessWidget {
  final SimpleShow show;

  const ShowThumbnail({
    super.key,
    required this.show,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image(
                  image: CachedNetworkImageProvider(
                      'https://image.tmdb.org/t/p/w500${show.posterPath}'),
                )),
          ),
          const SizedBox(height: 10),
          Text(
            show.title,
            maxLines: 1,
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}
