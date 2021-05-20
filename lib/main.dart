import 'package:flutter/material.dart';
import 'package:moments/screens/messages_screen.dart';
import 'package:moments/utils/themes.dart';

void main() => runApp(Moments());

class Moments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MomentsThemeData.lightTheme,
      home: MessagesScreen(),
    );
  }
}
