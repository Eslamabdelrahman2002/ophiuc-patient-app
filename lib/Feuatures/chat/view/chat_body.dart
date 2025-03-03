import 'package:flutter/material.dart';
import 'package:project_app/Core/utils/assets_images.dart';
import 'package:project_app/Feuatures/chat/view/widget/app_bar_chat.dart';
import 'package:project_app/Feuatures/chat/view/widget/chat_bubble.dart';
import 'package:project_app/Feuatures/chat/view/widget/input_text.dart';

class ChatBody extends StatelessWidget {
   ChatBody({super.key});
  final TextEditingController _messageController = TextEditingController();

  void _sendMessage() {
    final message = _messageController.text.trim();
    if (message.isNotEmpty) {
      print('Message sent: $message');
      _messageController.clear();
    }
  }


  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(Assets.background),fit: BoxFit.cover)
    ),
      child: SafeArea(
        child: Column(
          children: [
            const AppBarChat(),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(8),
                children: const [
                  ChatBubble(
                    message: "Hello! How are you?",
                    isMe: false,
                    timestamp: "10:00 AM",
                  ),
                  ChatBubble(
                    message: "I'm good, thanks! How about you?",
                    isMe: true,
                    timestamp: "10:01 AM",
                  ),
                  ChatBubble(
                    message: "Doing great, thanks for asking!",
                    isMe: false,
                    timestamp: "10:02 AM",
                  ),
                  ChatBubble(
                    message: "Let's catch up soon!",
                    isMe: true,
                    timestamp: "10:03 AM",
                  ),
                  ChatBubble(
                    message: "Hello! How are you?",
                    isMe: false,
                    timestamp: "10:00 AM",
                  ),
                  ChatBubble(
                    message: "I'm good, thanks! How about you?",
                    isMe: true,
                    timestamp: "10:01 AM",
                  ),
                  ChatBubble(
                    message: "Doing great, thanks for asking!",
                    isMe: false,
                    timestamp: "10:02 AM",
                  ),
                  ChatBubble(
                    message: "Let's catch up soon!",
                    isMe: true,
                    timestamp: "10:03 AM",
                  ),
                  ChatBubble(
                    message: "Hello! How are you?",
                    isMe: false,
                    timestamp: "10:00 AM",
                  ),
                  ChatBubble(
                    message: "I'm good, thanks! How about you?",
                    isMe: true,
                    timestamp: "10:01 AM",
                  ),
                  ChatBubble(
                    message: "Doing great, thanks for asking!",
                    isMe: false,
                    timestamp: "10:02 AM",
                  ),
                  ChatBubble(
                    message: "Let's catch up soon!",
                    isMe: true,
                    timestamp: "10:03 AM",
                  ),
                ],
              ),
            ),
            InputText(
              controller: _messageController,
              onSendPressed: _sendMessage,
              onCameraPressed: () {
                print('Camera button pressed');
              },
              onMicPressed: () {
                print('Microphone button pressed');
              },
            ),
          ],
        ),
      ),
    );
  }
}
