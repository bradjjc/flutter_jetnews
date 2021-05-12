import 'package:flutter/material.dart';

class TopicsInfo extends StatefulWidget {
  @override
  _TopicsInfoState createState() => _TopicsInfoState();
}

class _TopicsInfoState extends State<TopicsInfo> {
  bool _isChecked = true;
  final Set<int> checkedIndexes = {};
  final _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  List<String> _android = [
    "Jetpack Compose",
    "Kotlin",
    "Jetpack",
  ];

  List<String> _programming = [
    "Kotlin",
    "Declarative UIs",
    "Java",
    "Dart",
    "HTML",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Android'),
          SizedBox(
            height: 200.0,
              child: ListView(
                padding: EdgeInsets.all(12.0),
                children: _android.map((text) => CheckboxListTile(
                  title: Text(text),
                  value: _isChecked,
                  onChanged: (val) {
                    setState(() {
                      _isChecked = val;
                    });
                  },
                )).toList(),
              ),
          ),
          Text('Programming'),
          SizedBox(
            height: 500.0,
            child: ListView(
              padding: EdgeInsets.all(12.0),
              children: _programming.map((text) => CheckboxListTile(
                title: Text(text),
                value: _isChecked,
                onChanged: (val) {
                  setState(() {
                    _isChecked = val;

                  });
                },
              )).toList(),
            ),
          ),
        ],
      ),
    );
  }
}