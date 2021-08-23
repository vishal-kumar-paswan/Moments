import 'package:flutter/material.dart';
import 'package:moments/screens/login_page_screen.dart';
import 'package:moments/screens/main_screen.dart';
import 'package:moments/utils/routes.dart';
import 'package:moments/utils/themes.dart';

void main() => runApp(Moments());

class Moments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: MomentsThemeData.lightTheme,
      initialRoute: MomentsRoutes.mainScreenRoute,
      routes: {
        "/": (context) => MainScreen(),
        MomentsRoutes.mainScreenRoute: (context) => MainScreen(),
        MomentsRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
