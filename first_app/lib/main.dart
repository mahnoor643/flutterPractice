// import 'package:first_app/columnRow.dart';
import 'package:first_app/Navigation.dart';
import 'package:first_app/counter_view.dart';
import 'package:first_app/responsiveScroller.dart';
import 'package:first_app/tabBar.dart';
// import 'package:first_app/whatsappchat.dart';
// import 'package:first_app/profile_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(fontFamily: 'myfonts' ),
      home: TabScreen(),
    );
  }
}