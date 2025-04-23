import 'package:flutter/material.dart';
import 'package:flutter_lab_1/widgets/custom_button.dart';
import 'package:flutter_lab_1/widgets/custom_button_two.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          children: [
            SizedBox(height: 100),
            Image.asset(
              'assets/Group 176.png',
              width: double.infinity,
              height: 300,
            ),
            SizedBox(height: 20),
            Text(
              'Enterprise Team\nManagement',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 20),
            Text(
              'With an extensive menu prepared by talented chefs, fresh quality food.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 20),
            //BUTTON
            // ElevatedButton(
            //   onPressed: () {},
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: Color(0xffEC455F),
            //     foregroundColor: Colors.white,

            //     padding: EdgeInsets.symmetric(horizontal: 140, vertical: 15),
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(10),
            //     ),
            //   ),
            //   child: Text('Sign Up'),
            // ),
            CustomButton('Sign Up', Color(0xffEC455F)),
            SizedBox(height: 10),
            CustomButtonTwo('Already have an account', false),
          ],
        ),
      ),
    );
  }
}
