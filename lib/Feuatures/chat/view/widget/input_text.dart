import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  const InputText({super.key, required this.controller, required this.onSendPressed, required this.onCameraPressed, required this.onMicPressed});
  final TextEditingController controller;
  final VoidCallback onSendPressed;
  final VoidCallback onCameraPressed;
  final VoidCallback onMicPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: EdgeInsets.all(26),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.2),
       borderRadius: BorderRadius.circular(35)
      ),
      child: Row(
        children: [

          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 25
              ),
              child: TextField(
                controller: controller,
                decoration: const InputDecoration(
                  hintText: 'Type a message...',
                  hintStyle: TextStyle(color: Color(0xFFBABABA)),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.add_a_photo_outlined,color: Color(0xFFBABABA)),
            onPressed: onCameraPressed,
          ),
          IconButton(
            icon: const Icon(Icons.mic_none_outlined,color: Color(0xFFBABABA)),
            onPressed: onMicPressed,
          ),
          IconButton(
            icon: const Icon(Icons.send,color: Color(0xFF30A77A),),
            onPressed: onSendPressed,
          ),
        ],
      ),
    );
  }
}

