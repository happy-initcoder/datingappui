import 'dart:ui';

import 'package:dating_app_ui/MatchScreen.dart';
import 'package:dating_app_ui/ProfileScreen.dart';
import 'package:dating_app_ui/mainScreen.dart';
import 'package:dating_app_ui/messages.dart';
import 'package:flutter/material.dart';

class MatchesPage extends StatefulWidget {
  const MatchesPage({super.key});

  @override
  State<MatchesPage> createState() => _MatchesPageState();
}

class _MatchesPageState extends State<MatchesPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40, right: 40, left: 40),
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Matches',
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
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
                      child: Icon(Icons.arrow_back_ios, color: Colors.pink),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'This is the list of people who have liked you and your matches.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 40),
              Row(
                children: [
                  Column(
                    children: [
                      matchCards('assets/images/m1.png', 'Lailani,19'),
                      matchCards('assets/images/m5.png', 'Reagan,20'),
                      matchCards('assets/images/m3.png', 'Steffie,21'),
                      matchCards('assets/images/m5.png', 'Jessica,23')
                    ],
                  ),
                  Column(
                    children: [
                      matchCards('assets/images/m3.png', 'jasy,23'),
                      matchCards('assets/images/m2.png', 'Vinni,21'),
                      matchCards('assets/images/m5.png', 'Razzi,23'),
                      matchCards('assets/images/m1.png', 'Steffie,26')
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget matchCards(String imageAdd, String nameAge) => Padding(
        padding: EdgeInsets.only(left: 7.5, right: 7.5, top: 7.5, bottom: 7.5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: 200,
            width: 140,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(imageAdd)),
            ),
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text(
                nameAge,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                                right:
                                    BorderSide(width: 2, color: Colors.white))),
                        height: 40,
                        width: 72,
                        child: Center(
                          child: ImageIcon(
                              AssetImage('assets/images/close-small.png'),
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                      child: Container(
                        height: 40,
                        width: 68,
                        child: Center(
                          child: ImageIcon(
                              AssetImage('assets/images/Vector.png'),
                              color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ]),
          ),
        ),
      );
}
