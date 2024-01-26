// import 'package:first_app/columnRow.dart';
import 'package:first_app/whatsappchat.dart';
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
      home: WhatsappChat(),
    );
  }
}