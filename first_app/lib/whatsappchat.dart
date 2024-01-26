import 'package:first_app/widget/chat.dart';
import 'package:flutter/material.dart';

class WhatsappChat extends StatelessWidget {
  const WhatsappChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text("Hello jiii"),
        ),
        body: const Column(
          children: [
            Chat(name: 'Mahnoor ♥', msg: 'Kesi ho ji', time: '9:00 a.m'),
            Chat(name: 'Shifa ♥', msg: 'Kal uni seen pakka', time: '10:45 p.m'),
          ],
        ));
  }
}
