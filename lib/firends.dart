import 'package:dating_app_ui/notificaton.dart';
import 'package:dating_app_ui/widget/button.dart';
import 'package:flutter/material.dart';

class Friends extends StatelessWidget {
  const Friends({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(top: 168),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/people.png'),
                SizedBox(height: 64),
                Text(
                  "Search friend's",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Text(
                  'You can find friends from your contact lists \nto connected',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 128),
                Button(
                    name: 'Access to a contact list',
                    screenName: NotificationPage())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
