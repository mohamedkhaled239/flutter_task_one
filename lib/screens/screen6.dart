import 'package:flutter/material.dart';
import 'package:flutter_lab_1/screens/screen5.dart';
import 'package:flutter_lab_1/widgets/custom_button.dart';
import 'package:flutter_lab_1/widgets/custom_check_box_list_tile.dart';
import 'package:flutter_lab_1/widgets/custom_slider.dart';
import 'package:flutter_lab_1/widgets/custom_switch_list_tile.dart';
import 'package:flutter_lab_1/widgets/custom_textField.dart';

class Screen6 extends StatelessWidget {
  const Screen6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Back.',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              'Let’s sign up',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            CustomTextfield('Full Name', Icons.email, true),
            SizedBox(height: 10),

            CustomTextfield('Email', Icons.email, true),
            SizedBox(height: 10),
            CustomTextfield('Password', Icons.lock, false),
            SizedBox(height: 10),

            CustomTextfield('Confirm Password', Icons.lock, false),
            SizedBox(height: 15),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Recover Password',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(child: Text('200 USD', style: TextStyle(fontSize: 48))),
            SizedBox(height: 20, child: SliderExample()),
            CustomCheckBoxListTile(),
            CustomSwitchListTile(),
            Center(child: CustomButton('Sign In', Colors.red)),
            SizedBox(height: 10),

            SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Don’t have an account?',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: () {
                    // go to sign up
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Screen5()),
                    );
                  },
                  child: Text(
                    ' Sign Up!',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
