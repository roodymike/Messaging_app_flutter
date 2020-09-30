import 'package:flutter/material.dart';
import 'package:message_me/views/auth/login_auth.dart';
import 'package:message_me/views/auth/signup_auth.dart';
import 'package:message_me/views/chat/chatRoomView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Messaging',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color(0xfff1F1F1F),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChatRoom(),
    );
  }
}
