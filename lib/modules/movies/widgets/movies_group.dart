import 'package:app_filmes/app/ui/widgets/movie_card.dart';
import 'package:app_filmes/models/movie_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MoviesGroup extends StatelessWidget {
  final String title;
  final List<MovieModel> movies;
  const MoviesGroup({
    Key? key,
    required this.title,
    required this.movies,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
              height: 280,
              child: Obx(() {
                return ListView.builder(
                  itemCount: movies.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return MovieCard(
                      movie: movies[index],
                    );
                  },
                );
              }))
        ],
      ),
    );
  }
}
