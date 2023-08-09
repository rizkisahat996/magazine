import 'package:flutter/material.dart';
import 'package:majalah_app/common_widgets/custom_tag.dart';
import 'package:majalah_app/common_widgets/image_container.dart';
import 'package:majalah_app/screens/article/widgets/article_body_widget.dart';
import 'package:majalah_app/screens/article/widgets/article_headline_widget.dart';

import '../../models/article_model.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({Key? key}) : super(key: key);

  static const routeName = '/article';
  @override
  Widget build(BuildContext context) {
    final article = ModalRoute.of(context)!.settings.arguments as Article;
    return ImageContainer(
      width: double.infinity,
      imageUrl: article.imageUrl,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: ListView(
          children: [
            ArticleHeadlineWidget(article: article),
            ArticleBodyWidget(article: article)
          ],
        ),
      ),
    );
  }
}



