import 'package:dating_app_ui/profile_details.dart';
import 'package:dating_app_ui/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class NumberScreen extends StatelessWidget {
  const NumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(left: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 126),
          Text(
            'My mobile',
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
          ),
          Text(
              'Please enter your valid phone number. We will \nsend you a 4-digit code to verify your account. '),
          SizedBox(height: 64),
          SizedBox(
            width: 295,
            child: IntlPhoneField(
              flagsButtonPadding: const EdgeInsets.all(8),
              dropdownIconPosition: IconPosition.trailing,
              decoration: const InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
              ),
              initialCountryCode: 'IN',
              // onChanged: (phone) {
              // print(phone.completeNumber);
              // },
            ),
          ),
          SizedBox(height: 64),
          Button(
            name: 'Continue',
            screenName: ProfileDetailPage(),
          )
        ],
      ),
    ));
  }
}
