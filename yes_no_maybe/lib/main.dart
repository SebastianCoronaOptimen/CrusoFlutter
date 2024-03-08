//mateApp comando para crear estructura basica
import 'package:flutter/material.dart';
import 'package:yes_no_maybe/config/presentation/chat/chat_screen.dart';
import 'package:yes_no_maybe/config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yes no Maybe',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 5).theme(),
      home: const ChatScreen()
    );
  }
}