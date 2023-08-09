import 'package:flutter/material.dart';
import 'package:majalah_app/screens/article/article_screen.dart';
import 'package:majalah_app/screens/discover_screen.dart';
import 'package:majalah_app/screens/home/home_screen.dart';
import 'package:majalah_app/screens/subs_order/subs_order_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter News App UI',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      initialRoute: '/',
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        DiscoverScreen.routeName: (context) => const DiscoverScreen(),
        ArticleScreen.routeName: (context) => const ArticleScreen(),
        SubsOrderScreen.routeName: (context) => const SubsOrderScreen(),
      },
    );
  }
}
