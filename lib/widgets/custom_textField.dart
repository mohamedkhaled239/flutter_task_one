import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  String hintText;
  IconData icon;
  bool valsuffixicon;

  CustomTextfield(this.hintText, this.icon, this.valsuffixicon, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey, width: 1),
        ),
        prefixIcon: Icon(icon, color: Colors.grey[400]),
        suffixIcon:
            valsuffixicon != true
                ? Icon(Icons.visibility_off, color: Colors.grey[400])
                : null,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey[400]),
      ),
    );
  }
}
