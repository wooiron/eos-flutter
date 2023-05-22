import 'package:eos_chatting/chatting/chat/message.dart';
import 'package:eos_chatting/chatting/chat/new_message.dart';
import 'package:eos_chatting/config/palette.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _authentication = FirebaseAuth.instance;
    return Scaffold(
        appBar: AppBar(
          title: Text('Chat screen'),
          actions: [
            IconButton(
                onPressed: () {
                  _authentication.signOut();
                },
                icon: Icon(Icons.exit_to_app_rounded, color: Colors.white))
          ],
          backgroundColor: Palette.eosColor,
        ),
        body: Container(
            child: Column(
          children: [
            Expanded(child: Messages()),
            NewMessage(),
          ],
        )));
  }
}
