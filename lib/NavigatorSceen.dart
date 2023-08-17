import 'package:dating_app_ui/Matches_page.dart';
import 'package:dating_app_ui/ProfileScreen.dart';
import 'package:dating_app_ui/mainScreen.dart';
import 'package:dating_app_ui/messages.dart';
import 'package:flutter/material.dart';

class NavigatorScreen extends StatefulWidget {
  const NavigatorScreen({super.key});

  @override
  State<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  int selectPage = 0;
  final _pageOptions = [
    MainScreen(),
    MatchesPage(),
    MessagesScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[selectPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectPage,
        onTap: (index) {
          setState(() {
            selectPage = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: ImageIcon(
              AssetImage('assets/images/nav1.png'),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: ImageIcon(
              AssetImage('assets/images/nav2.png'),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: ImageIcon(
              AssetImage('assets/images/nav3.png'),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: ImageIcon(
              AssetImage('assets/images/nav4.png'),
            ),
          ),
        ],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.pink,
      ),
    );
  }
}
