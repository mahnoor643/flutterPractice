import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Citi Guide"),
      ),
      body: Container(
        color: Colors.red,
        //Media Query learning for responsiveness
        //Below 0.5 means 50%
        width:MediaQuery.of(context).size.width * 0.5,
        height: MediaQuery.of(context).size.height * 0.5,
      ),
    );
  }
}