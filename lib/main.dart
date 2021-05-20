import 'package:flutter/material.dart';
import 'package:moments/screens/main_screen.dart';
import 'package:moments/screens/messages_screen.dart';
import 'package:moments/utils/routes.dart';
import 'package:moments/utils/themes.dart';

void main() => runApp(Moments());

class Moments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MomentsThemeData.lightTheme,
      initialRoute: MomentsRoutes.homeRoute,
      routes: {
        MomentsRoutes.homeRoute: (context) => MainScreen(),
        MomentsRoutes.messagesRoute: (context) => MessagesScreen(),
      },
    );
  }
}
