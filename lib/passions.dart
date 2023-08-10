import 'package:dating_app_ui/widget/button.dart';
import 'package:flutter/material.dart';

class Passions extends StatelessWidget {
  const Passions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Container(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                Text(
                  'skip',
                  style: TextStyle(
                      color: Colors.pink,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Your intrests',
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
                'Select a few of your interests and let everyone know what you’re passionate about.'),
            SizedBox(height: 32),
            Row(
              children: [
                Column(
                  children: [
                    SelectButton('assets/images/i1.png', 'photography'),
                    SelectButton('assets/images/i2.png', 'karaoke'),
                    SelectButton('assets/images/i3.png', 'Cooking'),
                    SelectButton2('assets/images/i4.png', 'Run'),
                    SelectButton('assets/images/i5.png', 'Art'),
                    SelectButton('assets/images/i6.png', 'Extreme'),
                    SelectButton('assets/images/i7.png', 'Drink'),
                  ],
                ),
                SizedBox(width: 15),
                Column(
                  children: [
                    SelectButton2('assets/images/i8.png', 'Shopping'),
                    SelectButton('assets/images/i9.png', 'yoga'),
                    SelectButton('assets/images/i10.png', 'tennis'),
                    SelectButton('assets/images/i11.png', 'Swimming'),
                    SelectButton2('assets/images/i12.png', 'travlling'),
                    SelectButton('assets/images/i13.png', 'Music'),
                    SelectButton('assets/images/i14.png', 'Video games'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 60),
            Button(name: 'Continue')
          ],
        )),
      ),
    );
  }

  Widget SelectButton(String image, String name) => Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(15),
          ),
          height: 45,
          width: 140,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Image.asset(image)),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  name,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      );

  Widget SelectButton2(String image, String name) => Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.circular(15),
          ),
          height: 45,
          width: 140,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 10),
                child: Image.asset(image),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  name,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      );
}
