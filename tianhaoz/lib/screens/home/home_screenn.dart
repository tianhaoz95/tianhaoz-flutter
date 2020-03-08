import 'package:flutter/material.dart';
import 'package:homepage_layout/homepage_layout.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomepageLayout(
      primaryList: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          child: Image.asset('assets/avatar.png'),
        ),
        Text('test')
      ],
      secondaryList: <Widget>[
        Text('test')
      ],
    );
  }
}