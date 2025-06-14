import 'package:flutter/material.dart';
import 'package:tiktok_clone/sign_up/sign_up_screen.dart';

void main() {
  runApp(const TiktokApp());
}

class TiktokApp extends StatelessWidget {
  const TiktokApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TikTok App',
      theme: ThemeData(primaryColor: const Color(0xFFE9435A)),
      home: const SignUpScreen(),
    );
  }
}
