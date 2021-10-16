import 'package:app_filmes/app/ui/theme_extesions.dart';
import 'package:app_filmes/models/movie_detail_model.dart';
import 'package:app_filmes/modules/movie_detail/widget/movie_detail_content/movie_cast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MovieDatailContentMainCast extends StatelessWidget {
  final MovieDetailModel? movie;
  final showPanel = false.obs;

  MovieDatailContentMainCast({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: context.themeGrey,
        ),
        Obx(() {
          return ExpansionPanelList(
            elevation: 0,
            expandedHeaderPadding: EdgeInsets.zero,
            expansionCallback: (panelIndex, isExpanded) {
              showPanel.toggle();
            },
            children: [
              ExpansionPanel(
                canTapOnHeader: false,
                backgroundColor: Colors.white,
                isExpanded: showPanel.value,
                headerBuilder: (context, isExpanded) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Elenco',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  );
                },
                body: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                        movie?.cast.map((c) => MovieCast(cast: c)).toList() ??
                            [],
                  ),
                ),
              )
            ],
          );
        })
      ],
    );
  }
}
