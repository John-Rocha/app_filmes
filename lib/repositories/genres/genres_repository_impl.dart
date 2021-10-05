import 'package:app_filmes/app/modules/rest_client/rest_client.dart';
import 'package:app_filmes/models/genre_model.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

import './genres_repository.dart';

class GenresRepositoryImpl implements GenresRepository {
  final RestClient _restClient;

  GenresRepositoryImpl({
    required RestClient restClient,
  }) : _restClient = restClient;

  @override
  Future<List<GenreModel>> getGenres() async {
    final result = await _restClient.get<List<GenreModel>>(
      '/genre/movie/list',
      query: {
        'api_key': RemoteConfig.instance.getString('api_token'),
        'language': 'pt-BR',
      },
      decoder: (data) {
        final resulData = data['genres'];
        if (resulData != null) {
          return resulData
              .map<GenreModel>((g) => GenreModel.fromMap(g))
              .toList();
        }
        return <GenreModel>[];
      },
    );
    if (result.hasError) {
      print(result.statusCode);
      throw Exception('Erro ao buscar Genres');
    }

    return result.body ?? <GenreModel>[];
  }
}
