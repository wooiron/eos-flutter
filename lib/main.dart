import 'package:eos_chatting/config/palette.dart';
import 'package:eos_chatting/screens/chat_screen.dart';
import 'package:eos_chatting/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// ...

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Chatting App',
        theme: ThemeData(
          appBarTheme: AppBarTheme(color: Palette.activeColor),
          primarySwatch: Colors.blue,
        ),
        home: ChatScreen());
  }
}
