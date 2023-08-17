import 'package:dating_app_ui/MatchScreen.dart';
import 'package:dating_app_ui/Matches_page.dart';
import 'package:dating_app_ui/mainScreen.dart';
import 'package:dating_app_ui/messages.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
    int _index = 3;
    Widget pn;
    switch (_index) {
      case 0:
        _navigatorKey.currentState?.pushReplacementNamed("MainScreen");

        break;
      case 1:
        return MatchesPage();

      case 2:
        return MessagesScreen();

      case 3:
        return ProfileScreen();
    }
    Route<dynamic> generateRoute(RouteSettings settings) {
      switch (settings.name) {
        case "MatchesPage":
          return MaterialPageRoute(builder: (context) => MatchesPage());
        case "Messages":
          return MaterialPageRoute(builder: (context) => MessagesScreen());
        case "ProfileScreen":
          return MaterialPageRoute(builder: (context) => ProfileScreen());
        default:
          return MaterialPageRoute(builder: (context) => MainScreen());
      }
    }

    return Scaffold(
      bottomNavigationBar: bottomNavBar(_index),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 415,
                width: size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/photo3.png'),
                        fit: BoxFit.cover)),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Jessica Parker,23',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 24),
                              ),
                              Text(
                                'Professional model',
                                style: TextStyle(fontSize: 14),
                              )
                            ],
                          ),
                          Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            height: 52,
                            width: 52,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Icon(Icons.send, color: Colors.pink),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Location',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Text(
                                'Chicago,United States',
                                style: TextStyle(fontSize: 14),
                              )
                            ],
                          ),
                          Spacer(),
                        ],
                      ),
                      SizedBox(height: 30),
                      Text(
                        'About',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                          'My name is Jessica Parker and I enjoy meeting new people and finding ways to help them have an uplifting experience. I enjoy reading..'),
                      Text(
                        'Read more',
                        style: TextStyle(color: Colors.pink),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
