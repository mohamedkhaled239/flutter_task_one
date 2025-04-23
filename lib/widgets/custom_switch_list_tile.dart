import 'package:flutter/material.dart';

class CustomSwitchListTile extends StatefulWidget {
  const CustomSwitchListTile({super.key});

  @override
  State<CustomSwitchListTile> createState() => _CustomSwitchListTileState();
}

class _CustomSwitchListTileState extends State<CustomSwitchListTile> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: check,
      onChanged: (bool value) {
        setState(() {
          check = value;
        });
      },
    );
  }
}
