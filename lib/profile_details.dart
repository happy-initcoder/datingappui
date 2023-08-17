import 'package:dating_app_ui/gender.dart';
import 'package:dating_app_ui/widget/button.dart';
import 'package:flutter/material.dart';

class ProfileDetailPage extends StatelessWidget {
  const ProfileDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Container(
          child: Center(
            child: Column(children: [
              SizedBox(height: 56),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  'skip',
                  style: TextStyle(
                      color: Colors.pink,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 48),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Profile details',
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 90),
              Image.asset('assets/images/face.png'),
              SizedBox(height: 36),
              SizedBox(
                width: 295,
                child: TextField(
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: 'First name',
                    labelStyle: TextStyle(color: Colors.grey),
                    hintText: '',
                    hintStyle: TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
              SizedBox(
                width: 295,
                child: Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: TextField(
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: 'Last name',
                      labelStyle: TextStyle(color: Colors.grey),
                      hintText: '',
                      hintStyle: TextStyle(color: Colors.grey),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(233, 64, 87, .1)),
                height: 58,
                width: 295,
                child: Row(children: [
                  Icon(
                    Icons.calendar_month,
                    color: Colors.pink,
                  ),
                  Text(
                    'Choose birth day',
                    style: TextStyle(color: Colors.pink),
                  )
                ]),
              ),
              SizedBox(height: 70),
              Button(name: 'Confirm', screenName: GenderSelect())
            ]),
          ),
        ),
      ),
    );
  }
}
