import 'package:flutter/material.dart';
import 'package:flutter_lab_1/screens/sceen1.dart';
import 'package:flutter_lab_1/screens/screen6.dart';
import 'package:flutter_lab_1/widgets/custom_button.dart';
import 'package:flutter_lab_1/widgets/custom_button_two.dart';
import 'package:flutter_lab_1/widgets/custom_check_box_list_tile.dart';
import 'package:flutter_lab_1/widgets/custom_divider.dart';
import 'package:flutter_lab_1/widgets/custom_slider.dart';
import 'package:flutter_lab_1/widgets/custom_switch_list_tile.dart';
import 'package:flutter_lab_1/widgets/custom_textField.dart';

class Screen5 extends StatelessWidget {
  const Screen5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Icon(Icons.arrow_back, size: 40),
      ),
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
              'Let’s sign in',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            CustomTextfield('Email', Icons.email, true),
            SizedBox(height: 10),
            CustomTextfield('Password', Icons.lock, false),
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
            DividerWithText(),

            CustomButtonTwo(
              'Continue with Google',
              true,
              iconPath: 'assets/google 1.png',
            ),
            SizedBox(height: 10),
            CustomButtonTwo(
              'Continue with Facebook',
              true,
              iconPath: 'assets/image 8.png',
            ),

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
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const Screen6()),
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
