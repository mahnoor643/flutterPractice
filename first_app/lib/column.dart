import 'package:flutter/material.dart';

class Columnn extends StatelessWidget {
  const Columnn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Citi Guide"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height:200,
              color:Colors.amber,
            ),
            Container(
              height:200,
              color:Colors.red,
            ),
            Container(
              height:200,
              color:Colors.green,
            ),
            Container(
              height:200,
              color:Colors.blue,
            ),
            Container(
              height:200,
              color:Colors.pink,
            ),
            Container(
              height:200,
              color:Colors.amber,
            ),
            Container(
              height:200,
              color:Colors.red,
            ),
            Container(
              height:200,
              color:Colors.green,
            ),
            Container(
              height:200,
              color:Colors.blue,
            ),
            Container(
              height:200,
              color:Colors.pink,
            ),
          ],
        ),
      ),
    );
  }
}