import 'package:app_filmes/models/movie_detail_model.dart';
import 'package:app_filmes/modules/movie_detail/widget/movie_detail_content/movie_detail_content_title.dart';
import 'package:flutter/material.dart';

class MovieDetailContent extends StatelessWidget {
  final MovieDetailModel? movie;

  const MovieDetailContent({required this.movie, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MovieDetailContentTitle(
          movie: movie,
        )
      ],
    );
  }
}
