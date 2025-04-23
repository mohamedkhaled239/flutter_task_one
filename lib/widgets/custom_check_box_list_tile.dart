import 'package:flutter/material.dart';

class CustomCheckBoxListTile extends StatefulWidget {
  const CustomCheckBoxListTile({super.key});

  @override
  State<CustomCheckBoxListTile> createState() => _CustomCheckBoxListTileState();
}

class _CustomCheckBoxListTileState extends State<CustomCheckBoxListTile> {
  bool checkboxValue2 = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: checkboxValue2,
      onChanged: (bool? value) {
        setState(() {
          checkboxValue2 = value!;
        });
      },
      title: const Text('Checkbox Label'),
    );
  }
}
