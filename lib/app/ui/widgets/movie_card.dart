import 'package:app_filmes/app/ui/filmes_app_icons_icons.dart';
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(8),
      width: 148,
      height: 280,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                clipBehavior: Clip.antiAlias,
                child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/pt/thumb/6/63/Joker_%282019%29.jpg/250px-Joker_%282019%29.jpg',
                  width: 148,
                  height: 184,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Coringa',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              Text(
                '2019',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 90,
            right: -5,
            child: Material(
              elevation: 5,
              shape: CircleBorder(),
              clipBehavior: Clip.antiAlias,
              child: SizedBox(
                height: 30,
                child: IconButton(
                  iconSize: 13,
                  icon: Icon(
                    FilmesAppIcons.heart,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
