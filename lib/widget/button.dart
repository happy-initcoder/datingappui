// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String name;
  final screenName;

  const Button({
    Key? key,
    required this.name,
    required this.screenName,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => screenName));
      },
      child: Container(
        height: 56,
        width: 295,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.pink,
        ),
        child: Center(
            child: Text(
          name,
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
