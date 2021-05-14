import 'package:flutter/material.dart';
import 'package:flutter_jetnews/model/news_info.dart';

class HomeBodyUnderSlider extends StatelessWidget {
  Result news;
  HomeBodyUnderSlider(this.news);
  // Text("BASED ON YOUR HISTORY"),

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListTile(
        leading: Image.network(
            "${news.publication.logoUrl}"),
        title: Text('BASED ON YOUR HISTORY',
          style: TextStyle(fontSize: 12),
        ),
        subtitle: Text('${news.title} \n${news.metadata.date} - ${news.metadata.readTimeMinutes} min read',
          style: TextStyle(fontSize: 16),
        ),
        trailing: IconButton(
          icon: Icon(Icons.more_vert),
          onPressed: () {},
        ),
      ),
    );
  }
}
//