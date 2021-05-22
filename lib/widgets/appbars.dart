import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Appbars {
  static homePageAppbar() {
    return AppBar(
      elevation: 0,
      leadingWidth: 0.0,
      backgroundColor: Colors.transparent,
      title: Text(
        'Moments',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
    );
  }

  static messageScreenAppbar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leadingWidth: 0.0,
      title: Text(
        'Messages',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 26.0,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(
            right: 14.0,
          ),
          child: Icon(
            CupertinoIcons.search,
            color: Colors.black,
            size: 28.0,
          ),
        ),
      ],
    );
  }

  static myAccountAppbar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leadingWidth: 0.0,
      title: Text(
        'Account',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(
            right: 14.0,
          ),
          child: Icon(
            Icons.settings,
            color: Color(0xFFF2666FF),
            size: 26.0,
          ),
        ),
      ],
    );
  }
}
