import 'package:flutter/material.dart';

class CounterButton extends StatefulWidget {
  const CounterButton({super.key});

  @override
  State<CounterButton> createState() => _CounterButtonState();
}

class _CounterButtonState extends State<CounterButton> {
  int counter = 0;
  TextEditingController friendListController = TextEditingController();
  addName() {
    setState(() {
      friendList.add(friendListController.text);
      friendListController.clear();
    });
  }

  List friendList = ["Bilal", "Mahnoor", "Tuba", "Zain"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: SafeArea(
      //     child: Column(
      //   children: [
      //     Text("$counter text to be updated",
      //         style: const TextStyle(
      //           fontSize: 20,
      //         )),
      //     ElevatedButton(
      //         onPressed: () {
      //           setState(() {
      //             counter++;
      //           });
      //           print(counter);
      //         },
      //         child: Text("Increment"))
      //   ],
      // )),

      appBar: AppBar(
        title: TextField(
          controller: friendListController,
        ),
        actions: [
          ElevatedButton(
              onPressed: () {
                addName();
              },
              child: Text("Add"))
        ],
      ),
      body: SafeArea(
          child: ListView.builder(
              itemCount: friendList.length,
              itemBuilder: (context, index) {
                String name = friendList[index];
                return Container(
                  color: Colors.grey,
                  margin: EdgeInsets.only(bottom: 2),
                  child: Text(
                    "$name is my name",
                  ),
                );
              })),
    );
  }
}
