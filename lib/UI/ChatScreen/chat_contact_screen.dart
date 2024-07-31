import 'package:flutter/material.dart';
import 'package:whatsapp/Core/image_assets_provider.dart';
import 'package:whatsapp/Models/chat_message.dart';
import 'package:whatsapp/UI/ChatScreen/Widgets/chat_screen_appbar.dart';
import 'package:whatsapp/UI/ChatScreen/Widgets/chat_screen_message_item.dart';
import 'package:whatsapp/UI/ChatScreen/Widgets/chat_screen_messages_text_form_field.dart';

class ChatContactScreen extends StatelessWidget {
  final ImageAssetsProvider assetsProvider = ImageAssetsProvider();

  late final List<ChatMessage> messages = [
    ChatMessage(
        assetsProvider.personOneImage, "This is My First Message", false),
    ChatMessage(
        assetsProvider.personThreeImage, "This is My First Message", true),
    ChatMessage(
        assetsProvider.personThreeImage,
        "This is My First Message This is My First Message This is My First Message",
        true),
    ChatMessage(
        assetsProvider.personThreeImage, "This is My First Message", true),
    ChatMessage(
        assetsProvider.personOneImage, "This is My First Message", false),
    ChatMessage(
        assetsProvider.personOneImage, "This is My First Message", false),
    ChatMessage(
        assetsProvider.personThreeImage, "This is My First Message", true),
    ChatMessage(
        assetsProvider.personOneImage, "This is My First Message", false),
    ChatMessage(
        assetsProvider.personThreeImage,
        "This is My First Message This is My First Message This is My First Message",
        true),
  ];

  ChatContactScreen({super.key});

  static const String routeName = "/";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(assetsProvider.backgroundImage)
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: ChatScreenAppbar(assetsProvider.personOneImage),
        body:Column(
          children: [
            Expanded(
                child: ListView.separated(
                  keyboardDismissBehavior:
                  ScrollViewKeyboardDismissBehavior.onDrag,
                  padding: const EdgeInsets.all(12),
                  itemCount: messages.length,
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 12,
                  ),
                  itemBuilder: (context, index) =>
                      ChatScreenMessageItem(messages[index]),
                )),
            const ChatScreenMessagesTextFormField(),
          ],
        ),
      ),
    );
  }
}
