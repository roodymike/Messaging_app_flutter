import 'package:flutter/material.dart';

class ChatItemModel {
  ChatItemModel({this.sender, this.message, this.avatar});

  static List<ChatItemModel> list = [
    ChatItemModel(
        sender: "Admin",
        message: "Hello new user",
        avatar: Icon(Icons.event_available)),
    ChatItemModel(
        sender: "User1",
        message: "Hello i'm a new user",
        avatar: Icon(Icons.event_available)),
    ChatItemModel(
        sender: "User2",
        message: "Hello i'm a new user",
        avatar: Icon(Icons.event_available)),
    ChatItemModel(
        sender: "User3",
        message: "Hello i'm a new user",
        avatar: Icon(Icons.event_available)),
  ];

  final Icon avatar;
  final String message;
  final String sender;
}
