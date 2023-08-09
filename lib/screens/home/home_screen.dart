import 'package:flutter/material.dart';
import 'package:majalah_app/common_widgets/bottom_nav_bar.dart';
import 'package:majalah_app/models/article_model.dart';
import 'package:majalah_app/screens/home/widgets/article_list_widget.dart';
import 'package:majalah_app/screens/home/widgets/breaking_news_widget.dart';
import 'package:majalah_app/screens/home/widgets/home_header_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const routeName = '/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    TabController _tabC = TabController(length: 3, vsync: this);
    Article article = Article.articles[0];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ),
        bottomNavigationBar: const BottomNavBar(index: 0),
        extendBodyBehindAppBar: true,
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            HomeHeaderWidget(article: article),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.2),
                ),
                child: TabBar(
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  controller: _tabC,
                  indicator: BoxDecoration(
                    color: Colors.black.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  tabs: [
                    Tab(text: "Beranda",),
                    Tab(text: "Premium",),
                    Tab(text: "Disimpan",),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 730,
              child: TabBarView(
                controller: _tabC,
                children: [
                  Column(
                    children: [
                      BreakingNewsWidget(articles: Article.articles),
                      ArticleListWidget(),
                    ],
                  ),
                  Container(),
                  ArticleListWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




