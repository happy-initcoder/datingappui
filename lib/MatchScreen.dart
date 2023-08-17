import 'package:dating_app_ui/widget/button.dart';
import 'package:flutter/material.dart';

class MatchScreen extends StatelessWidget {
  const MatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(40),
        child: Container(
          child: Column(
            children: [
              Container(child: Image.asset('assets/images/match.png')),
              Text(
                "It's a match , Jake!",
                style: TextStyle(
                    color: Colors.pink,
                    fontSize: 34,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Start a conversation now with each other',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              SizedBox(height: 50),
              // Button(name: 'Say hello'),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(233, 64, 87, .1)),
                height: 58,
                width: 295,
                child: Center(
                  child: Text(
                    'Keep Swiping',
                    style: TextStyle(color: Colors.pink),
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
