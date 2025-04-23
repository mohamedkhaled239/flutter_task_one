import 'package:flutter/material.dart';

class CustomButtonTwo extends StatelessWidget {
  final String text;
  final bool haveIcon;
  final String? iconPath;

  const CustomButtonTwo(this.text, this.haveIcon, {this.iconPath, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 10),
          shadowColor: const Color(0xffffffff),
          foregroundColor: const Color(0xffEC455F),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(color: Color(0xffEC455F)),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (haveIcon && iconPath != null)
              Image.asset(iconPath!, width: 24, height: 24),
            if (haveIcon && iconPath != null) const SizedBox(width: 10),
            Text(
              text,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
