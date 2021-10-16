import 'package:app_filmes/app/ui/theme_extesions.dart';
import 'package:app_filmes/models/cast_model.dart';
import 'package:flutter/material.dart';

class MovieCast extends StatelessWidget {
  final CastModel? cast;
  const MovieCast({
    Key? key,
    this.cast,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95,
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              cast?.image ?? '',
              width: 85,
              height: 85,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 5),
          Text(
            cast?.name ?? '',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 5),
          Text(
            cast?.character ?? '',
            style: TextStyle(
              fontSize: 12,
              color: context.themeGrey,
            ),
          ),
        ],
      ),
    );
  }
}
