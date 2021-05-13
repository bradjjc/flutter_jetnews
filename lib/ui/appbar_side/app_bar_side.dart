import 'package:flutter/material.dart';
import 'package:flutter_jetnews/main.dart';
import 'package:flutter_jetnews/ui/home.dart';
import 'package:flutter_jetnews/ui/interest/interest.dart';



class AppBarSide extends StatelessWidget {
  List<String> texts = ['Home', 'Interest'];
  List<bool> isHighlighted = [true, false];

  @override
  Widget build(BuildContext context) {
    return ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Jetnews'),
                decoration: BoxDecoration(
                    color: Colors.red[200],
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.grey[850],
                ),
                title: Text('Home'),
                onTap: () =>
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Home())),
                trailing: Icon(Icons.add),
              ),
              ListTile(
                leading: Icon(
                  Icons.account_balance_wallet_outlined,
                  color: Colors.grey[850],
                ),
                title: Text('Interest'),
                onTap: ()=>
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Interest())),
                trailing: Icon(Icons.add),
              ),
            ],
    );
  }
}
