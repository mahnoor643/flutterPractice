import 'package:flutter/material.dart';

class ResponsiveScroller extends StatefulWidget {
  const ResponsiveScroller({Key? key}) : super(key: key);

  @override
  State<ResponsiveScroller> createState() => _ResponsiveScrollerState();
}

class _ResponsiveScrollerState extends State<ResponsiveScroller> {
  TextEditingController nameController = TextEditingController();

  List<String> names = ["Bilal", "Mahnoor", "Tuba", "Zain"];

  void add() {
    setState(() {
      names.add(nameController.text);
      nameController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mobile App"),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.yellow,
            height: 200,
            child: Row(
              children: [
                Expanded(
                  child: TextField(controller: nameController),
                ),
                ElevatedButton(
                  onPressed: add,
                  child: Text("Add"),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: names.length,
              itemBuilder: (context, index) {
                String n = names[index];
                return ListTile(
                  title: Text(n),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
