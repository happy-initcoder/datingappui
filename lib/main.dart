import 'package:dating_app_ui/Signup_page.dart';
import 'package:dating_app_ui/firends.dart';
import 'package:dating_app_ui/notificaton.dart';
import 'package:dating_app_ui/number_screen.dart';
import 'package:dating_app_ui/onboarding.dart';
import 'package:dating_app_ui/profile_details.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.pink,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: NotificationPage());
  }
}
