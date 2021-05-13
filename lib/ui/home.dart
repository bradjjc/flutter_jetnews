


import 'package:flutter/material.dart';
import 'package:flutter_jetnews/repository/news_repository.dart';
import 'package:flutter_jetnews/ui/appbar_side/app_bar_side.dart';
import 'package:flutter_jetnews/ui/home_body/home_body.dart';
import 'package:flutter_jetnews/ui/home_body/home_body_slider.dart';
import 'package:flutter_jetnews/ui/home_body/home_body_top_sub.dart';
import 'package:flutter_jetnews/ui/home_body/home_body_under_slider.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return context.read<NewsRepositore>().isLoading
        ? Scaffold(body: Center(child: CircularProgressIndicator()))
        : Scaffold(
      appBar: AppBar(
        title: Text('Jetnews'),
      ),
      drawer: Drawer(
          child: AppBarSide(),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeBody(context.read<NewsRepositore>().news[2]),
              HomeBodyTopSub(context.read<NewsRepositore>().news[3]),
              HomeBodyTopSub(context.read<NewsRepositore>().news[4]),
              HomeBodySlider(context.read<NewsRepositore>().news),
              HomeBodyUnderSlider(context.read<NewsRepositore>().news[5]),
              HomeBodyUnderSlider(context.read<NewsRepositore>().news[6]),
              HomeBodyUnderSlider(context.read<NewsRepositore>().news[7]),
            ],
          ),
        ),
      ),
    );
  }
}
