import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Favoritos',
          style: TextStyle(color: Color(0xff222222)),
        ),
      ),
      body: Container(
        child: Text('Favorites'),
      ),
    );
  }
}
