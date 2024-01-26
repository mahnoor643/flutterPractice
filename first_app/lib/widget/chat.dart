import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  final String name;
  final String msg;
  final String time;

  const Chat({
    Key? key,
    required this.name,
    required this.msg,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(margin: const EdgeInsets.only(bottom: 2),
      child: ListTile(
        tileColor: Colors.yellow.shade100,
        title: Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        subtitle: Text(msg),
        trailing: Text(time),
        leading: const CircleAvatar(
          radius: 30,
          backgroundColor: Colors.red,
        ),
      ),
    );
  }
}
