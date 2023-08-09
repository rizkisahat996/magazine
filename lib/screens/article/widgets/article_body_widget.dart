import 'package:flutter/material.dart';
import 'package:majalah_app/common_widgets/custom_tag.dart';
import 'package:majalah_app/common_widgets/image_container.dart';
import 'package:majalah_app/models/article_model.dart';

class ArticleBodyWidget extends StatelessWidget {
  const ArticleBodyWidget({super.key, required this.article});

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              CustomTag(
                backgroundColor: Colors.grey.shade200,
                children: [
                  const Icon(
                    Icons.face_unlock_rounded,
                    color: Colors.grey,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Gratis',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              const SizedBox(width: 10),
              CustomTag(
                backgroundColor: Colors.grey.shade200,
                children: [
                  const Icon(
                    Icons.remove_red_eye,
                    color: Colors.grey,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '${article.views}',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            article.title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20,),
          Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue.withOpacity(0.3),
              border: Border.all(color: Colors.black,),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.bookmark_add),
                const SizedBox(width: 10,),
                Text("Simpan untuk dibaca nanti")
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text(
            article.body,
            style:
            Theme.of(context).textTheme.bodyMedium!.copyWith(height: 1.5),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 100,
            child: Row(
              children: [
                Container(
                  color: Colors.lightBlue,
                  width: 5,
                ),
                const SizedBox(width: 20,),
                SizedBox(
                  width: 320,
                  child: Text(
                    article.subtitle,
                    style: const TextStyle(
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          GridView.builder(
            shrinkWrap: true,
            itemCount: 2,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.25,
            ),
            itemBuilder: (context, index) {
              return ImageContainer(
                width: MediaQuery.of(context).size.width * 0.42,
                imageUrl: article.imageUrl,
                margin: const EdgeInsets.only(right: 5.0, bottom: 5.0),
              );
            },
          ),
          const SizedBox(height: 1000),
        ],
      ),
    );
  }
}