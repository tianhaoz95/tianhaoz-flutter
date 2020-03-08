import 'package:flutter/material.dart';
import 'package:homepage_layout/homepage_layout.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomepageLayout(
      primaryList: <Widget>[
        Text('test')
      ],
      secondaryList: <Widget>[
        Text('test')
      ],
    );
  }
}