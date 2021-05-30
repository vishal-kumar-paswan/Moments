import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF009FFD),
              Color(0xFF2A2A72),
            ],
          ),
        ),
        child: Center(
          child: DefaultTextStyle(
            style: const TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w300,
            ),
            child: AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                TypewriterAnimatedText(
                  'Moments',
                  speed: Duration(
                    milliseconds: 200,
                  ),
                ),
              ],
              isRepeatingAnimation: true,
            ),
          ),
        ),
      ),
    );
  }
}
