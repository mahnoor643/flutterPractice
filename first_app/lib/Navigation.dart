import 'package:first_app/HomeView.dart';
import 'package:flutter/material.dart';

class NavigationButton extends StatefulWidget {
  const NavigationButton({super.key});

  @override
  State<NavigationButton> createState() => _NavigationButtonState();
}

class _NavigationButtonState extends State<NavigationButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Splash Screen"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Text("Go to another screen")),
      ),
    );
  }
}
