import 'package:flutter/material.dart';
import 'package:majalah_app/models/article_model.dart';

class ArticleHeadlineWidget extends StatelessWidget {
  const ArticleHeadlineWidget({super.key, required this.article});

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.10,
          ),
        ],
      ),
    );
  }
}
