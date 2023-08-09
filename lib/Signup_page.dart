import 'package:dating_app_ui/widget/button.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(
        child: Column(
          children: [
            SizedBox(height: 128),
            Image.asset('assets/images/trademark.png'),
            SizedBox(height: 78),
            Text(
              'Sign up to continue',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 32),
            Button(name: 'Continue with email'),
            SizedBox(height: 20),
            Text(
              'Use phone number',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.pink),
            ),
            SizedBox(height: 64),
            Text('or sign up with'),
            SizedBox(height: 36),
            Padding(
              padding: EdgeInsets.only(left: 71, right: 71),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/images/facebook.png'),
                  Image.asset('assets/images/google.png'),
                  Image.asset('assets/images/apple.png'),
                ],
              ),
            ),
            SizedBox(height: 76),
            Padding(
              padding: const EdgeInsets.only(left: 90, right: 90),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Terms of use',
                    style: TextStyle(color: Colors.pink),
                  ),
                  Text(
                    'Privacy Policy',
                    style: TextStyle(color: Colors.pink),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
