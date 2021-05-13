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
        title: Text('BASED ON YOUR HISTORY \n${news.title}',
        style: TextStyle(fontSize: 15),
        ),
        subtitle: Text('${news.metadata.date} - ${news.metadata.readTimeMinutes} min read'),
        trailing: IconButton(
          icon: Icon(Icons.more_vert),
          onPressed: () {},
        ),
      ),
    );
  }
}
//