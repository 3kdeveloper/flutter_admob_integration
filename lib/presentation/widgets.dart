import 'package:flutter/material.dart';

import '../data/news_article.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [Icon(Icons.article_outlined), Text('Latest News')],
    );
  }
}

class ArticleTile extends StatelessWidget {
  final NewsArticle article;
  const ArticleTile({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.indigo[600],
      elevation: 4,
      child: Column(
        children: [
          Image.asset(
            article.asset,
            fit: BoxFit.cover,
            height: 250,
            width: double.maxFinite,
            cacheHeight: 300,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 10),
            child: Column(
              children: [
                Text(
                  article.headline,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  style: TextStyle(
                    color: Colors.indigo[50],
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.share, color: Colors.yellowAccent[700]),
                    const SizedBox(width: 5),
                    Icon(
                      Icons.favorite_outline_rounded,
                      color: Colors.pink[200],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
