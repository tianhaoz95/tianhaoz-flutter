import 'package:flutter/material.dart';
import 'package:tianhaoz/app/theme.dart';
import 'package:tianhaoz/screens/home/home_screenn.dart';

class TianhaozApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tianhaoz',
      theme: tianhaozTheme,
      home: HomeScreen(),
    );
  }
}