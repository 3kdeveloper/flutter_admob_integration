import 'package:flutter/material.dart';

import '../data/news_article.dart';
import 'news_article_page.dart';
import 'widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarTitle(),
        backgroundColor: Colors.indigo[800],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: NewsArticle.articles.length,
        itemBuilder: (context, index) {
          final article = NewsArticle.articles[index];
          return Padding(
            padding: const EdgeInsets.only(
              bottom: 10,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => NewsArticlePage(
                      title: article.headline,
                      imagePath: article.asset,
                    ),
                  ),
                );
              },
              child: ArticleTile(
                article: article,
              ),
            ),
          );
        },
      ),
    );
  }
}
