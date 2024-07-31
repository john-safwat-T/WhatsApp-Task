import 'package:flutter/material.dart';
import 'package:whatsapp/Models/chat_message.dart';

class ChatScreenMessageItem extends StatelessWidget {
  final ChatMessage message;

  const ChatScreenMessageItem(this.message, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: message.sender? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        !message.sender? CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(message.image),
        ):const SizedBox(),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(width: 1.2 , color: Colors.white),
              borderRadius: BorderRadius.circular(30)
            ),
            child: Text(
              message.message,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18
              ),
            ),
          ),
        ),
        message.sender? CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(message.image),
        ):const SizedBox()
      ],
    );
  }
}
