import 'dart:convert';

class MovieModel {
  final int id;
  final String title;
  final String releaseDate;
  final String posterPath;
  final List<int> genre;
  final bool favorite;

  MovieModel({
    required this.id,
    required this.title,
    required this.releaseDate,
    required this.posterPath,
    required this.genre,
    required this.favorite,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'release_date': releaseDate,
      'poster_path': posterPath,
      'genre_ids': genre,
      'favorite': favorite,
    };
  }

  factory MovieModel.fromMap(Map<String, dynamic> map) {
    return MovieModel(
      id: map['id'] ?? 0,
      title: map['title'] ?? '',
      releaseDate: map['release_date'] ?? '',
      posterPath: map['poster_path'],
      genre: List<int>.from(map['genre_ids'] ?? const []),
      favorite: map['favorite'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory MovieModel.fromJson(String source) =>
      MovieModel.fromMap(json.decode(source));

  MovieModel copyWith({
    int? id,
    String? title,
    String? releaseDate,
    String? posterPath,
    List<int>? genre,
    bool? favorite,
  }) {
    return MovieModel(
      id: id ?? this.id,
      title: title ?? this.title,
      releaseDate: releaseDate ?? this.releaseDate,
      posterPath: posterPath ?? this.posterPath,
      genre: genre ?? this.genre,
      favorite: favorite ?? this.favorite,
    );
  }
}
