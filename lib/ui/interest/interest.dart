import 'package:flutter/material.dart';
import 'package:flutter_jetnews/ui/appbar_side/app_bar_side.dart';
import 'package:flutter_jetnews/ui/interest/tab_bar/people_info.dart';
import 'package:flutter_jetnews/ui/interest/tab_bar/publications_info.dart';
import 'package:flutter_jetnews/ui/interest/tab_bar/topics_info.dart';

class Interest extends StatelessWidget {
  const Interest({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.red,
          appBarTheme: AppBarTheme(backgroundColor: Color(0XFFCF233D))),

      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Interests'),
            backgroundColor: Color(0XFFCF233D),
            bottom: TabBar(
              tabs: [
                Tab(text: 'Topics'),
                Tab(text: 'People',),
                Tab(text: 'Publications'),
              ],
            ),
          ),
              drawer: Drawer(
            child: AppBarSide(),),
          body: TabBarView(
            children: [
              TopicsInfo(),
              PeopleInfo(),
              PublicationsInfo(),
            ],
          ),
        ),
      ),
    );
  }
}
