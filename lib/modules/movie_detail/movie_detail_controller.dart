import 'package:app_filmes/app/ui/loader/loader_mixin.dart';
import 'package:app_filmes/app/ui/messages/messages_mixin.dart';
import 'package:app_filmes/models/movie_detail_model.dart';
import 'package:app_filmes/services/movies/movies_service.dart';
import 'package:get/get.dart';

class MovieDetailController extends GetxController
    with LoaderMixin, MessagesMixin {
  final MoviesService _moviesService;

  MovieDetailController({
    required MoviesService moviesService,
  }) : _moviesService = moviesService;

  var loading = false.obs;
  var message = Rxn<MessageModel>();
  var movie = Rxn<MovieDetailModel>();

  @override
  void onInit() {
    super.onInit();
    loaderListener(loading);
    messageListener(message);
  }

  @override
  Future<void> onReady() async {
    super.onReady();
    try {
      final movieId = Get.arguments;
      loading(true);
      final movieDatailData = await _moviesService.getDatail(movieId);
      movie.value = movieDatailData;
      loading(false);
    } catch (e, s) {
      print(e);
      print(s);
      loading(false);
      message(MessageModel.error(
          title: 'Error', message: 'Error ao buscar detalhe do filme'));
    }
  }
}
