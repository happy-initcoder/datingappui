import 'package:dashed_circle/dashed_circle.dart';
import 'package:dating_app_ui/MatchScreen.dart';
import 'package:dating_app_ui/Matches_page.dart';
import 'package:dating_app_ui/ProfileScreen.dart';
import 'package:dating_app_ui/mainScreen.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({super.key});

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
    var size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(left: 40, top: 40),
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Messages',
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 40),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 52,
                    width: 52,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: ImageIcon(
                        AssetImage('assets/images/setting-config.png'),
                        color: Colors.pink,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(right: 40),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 48,
                width: 295,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      Text(
                        'Search',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Activities',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 5),
            SizedBox(
              width: size.width,
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Column(
                      children: [
                        DashedCircle(
                          gapSize: 0,
                          color: Colors.pink,
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: CircleAvatar(
                              radius: 33,
                              backgroundColor: Colors.red,
                              backgroundImage:
                                  AssetImage('assets/images/photo1.png'),
                            ),
                          ),
                        ),
                        Text(
                          'Name',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Messages',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: size.width - 40,
              height: 390,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        DashedCircle(
                          gapSize: 0,
                          color: Colors.pink,
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: CircleAvatar(
                              radius: 33,
                              backgroundColor: Colors.red,
                              backgroundImage:
                                  AssetImage('assets/images/photo1.png'),
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        Column(
                          children: [
                            Text('Emelie'),
                            Text('Sticker'),
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(right: 40),
                          child: Column(
                            children: [
                              Text('23 min'),
                              CircleAvatar(
                                radius: 10,
                                child: Text('1'),
                                backgroundColor: Colors.pink,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
