import 'package:flutter/material.dart';
import 'package:whatsapp/UI/ChatScreen/chat_contact_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: ChatContactScreen.routeName,
      routes: {
        ChatContactScreen.routeName : (_) =>ChatContactScreen()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}