import 'package:dating_app_ui/MatchScreen.dart';
import 'package:dating_app_ui/Matches_page.dart';
import 'package:dating_app_ui/galary_view.dart';
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

    return SingleChildScrollView(
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
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                        'My name is Jessica Parker and I enjoy meeting new people and finding ways to help them have an uplifting experience. I enjoy reading..'),
                    Text(
                      'Read more',
                      style: TextStyle(color: Colors.pink),
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Intrests',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(width: 1, color: Colors.pink),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(children: [
                                Icon(Icons.check, color: Colors.pink),
                                Text(
                                  'Travelling',
                                  style: TextStyle(
                                      color: Colors.pink,
                                      fontWeight: FontWeight.bold),
                                ),
                              ]),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border:
                                    Border.all(width: 1, color: Colors.pink),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(children: [
                                  Icon(Icons.check, color: Colors.pink),
                                  Text(
                                    'Books',
                                    style: TextStyle(
                                        color: Colors.pink,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ]),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border:
                                    Border.all(width: 1, color: Colors.grey),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 5, right: 5),
                                  child: Text(
                                    'Music',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border:
                                    Border.all(width: 1, color: Colors.grey),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: Text(
                                    'Dancing',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 30),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border:
                                    Border.all(width: 1, color: Colors.grey),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 5, right: 5),
                                  child: Text(
                                    'Modling',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Text(
                          'Galary',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => GalaryView()));
                            },
                            child: Text(
                              'See all',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.pink),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Container(
                            height: 190,
                            width: 142,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/g1.png'),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 190,
                            width: 142,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/g2.png'),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5, top: 10),
                      child: Row(
                        children: [
                          Container(
                            height: 122,
                            width: 92,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/g3.png'),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 122,
                            width: 92,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/g4.png'),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 122,
                            width: 92,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/g5.png'),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
