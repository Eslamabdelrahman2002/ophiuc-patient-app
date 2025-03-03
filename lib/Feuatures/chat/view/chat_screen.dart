import 'package:flutter/material.dart';
import 'package:project_app/Feuatures/chat/view/chat_body.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChatBody(),
    );
  }
}
