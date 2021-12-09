import 'package:flutter/material.dart';
import 'package:news_app/ui/components/sliver_icon.dart';
import 'article_builder.dart';

class SliverListViewBuilder extends StatelessWidget {
  final List list;

  const SliverListViewBuilder({
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    if (list.isEmpty) {
      return SliverIcon();
    } else {
      return SliverList(
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return ArticleBuilder(
              articleUrl: list[index]['url'],
              imageUrl: list[index]['urlToImage'],
              title: list[index]['title'],
              date: list[index]['publishedAt'],
            );
          },
          childCount: list.length,
        ),
      );
    }
  }
}
