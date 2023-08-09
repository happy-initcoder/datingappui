import 'package:dating_app_ui/widget/button.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

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
                Image.asset('assets/images/chat.png'),
                SizedBox(height: 64),
                Text(
                  "Enable notification’s",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Text(
                  'Get push-notification when you get the match \nor receive a message.',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 128),
                Button(name: 'I want to be notified')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
