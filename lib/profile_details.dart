import 'package:flutter/material.dart';

class ProfileDetailPage extends StatelessWidget {
  const ProfileDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Text(
          'skip',
          style: TextStyle(color: Colors.pink),
        ),
        Text(
          'Profile details',
          style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
        ),
      ]),
    );
  }
}
