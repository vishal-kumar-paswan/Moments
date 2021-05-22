import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moments/screens/home_screen.dart';
import 'package:moments/screens/messages_screen.dart';
import 'package:moments/screens/my_account.dart';
import 'package:moments/widgets/appbars.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  List<Widget> _screens = <Widget>[
    HomePage(),
    MessagesScreen(),
    MyAccount(),
  ];

  List<PreferredSizeWidget> _appBars = <PreferredSizeWidget>[
    Appbars.homePageAppbar(),
    Appbars.messageScreenAppbar(),
    Appbars.myAccountAppbar(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBars.elementAt(_selectedIndex),
      body: _screens.elementAt(_selectedIndex),
      floatingActionButton: _selectedIndex == 1
          ? FloatingActionButton(
              backgroundColor: Color(0xFFF2663FF),
              onPressed: () => print('New Chat'),
              child: Icon(
                Icons.chat_bubble_outline_rounded,
                color: Colors.white,
                size: 25,
              ),
            )
          : null,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0.8,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              CupertinoIcons.home,
              color: Colors.grey,
            ),
            activeIcon: Icon(
              CupertinoIcons.home,
              color: Color(0xFFF2663FF),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Messages',
            icon: Icon(
              CupertinoIcons.envelope_open,
              color: Colors.grey,
            ),
            activeIcon: Icon(
              CupertinoIcons.envelope_open,
              color: Color(0xFFF2663FF),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(
              CupertinoIcons.person,
              color: Colors.grey,
            ),
            activeIcon: Icon(
              CupertinoIcons.person,
              color: Color(0xFFF2663FF),
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
