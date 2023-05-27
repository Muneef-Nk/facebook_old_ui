import 'package:flutter/material.dart';

class IconButtons extends StatelessWidget {
  final IconData buttonIcon;
  final String buttonText;
  final Color buttonColor;

  IconButtons({
    required this.buttonColor,
    required this.buttonIcon,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: Icon(buttonIcon, color: buttonColor),
      label: Text(
        buttonText,
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
