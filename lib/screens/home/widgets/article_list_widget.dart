import 'package:flutter/material.dart';
import 'package:majalah_app/common_widgets/image_container.dart';
import 'package:majalah_app/models/article_model.dart';
import 'package:majalah_app/screens/article/article_screen.dart';

class ArticleListWidget extends StatelessWidget {
  const ArticleListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final articles = Article.articles;
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Untuk Anda',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Text('Lihat semua', style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
          const SizedBox(height: 20,),
          SizedBox(
            height: 350,
            child: ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: articles.length,
              itemBuilder: ((context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      ArticleScreen.routeName,
                      arguments: articles[index],
                    );
                  },
                  child: Row(
                    children: [
                      ImageContainer(
                        width: 80,
                        height: 80,
                        margin: const EdgeInsets.only(right: 10.0, bottom: 10),
                        borderRadius: 5,
                        imageUrl: articles[index].imageUrl,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              articles[index].title,
                              maxLines: 2,
                              overflow: TextOverflow.clip,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                const Icon(
                                  Icons.visibility,
                                  size: 18,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  '${articles[index].views} views',
                                  style: const TextStyle(fontSize: 12),
                                ),
                                const SizedBox(width: 30),
                                Icon(Icons.face_unlock_rounded, size: 16,),
                                const SizedBox(width: 5,),
                                Text(
                                  "Gratis",
                                  style: const TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
