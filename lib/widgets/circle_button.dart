import 'package:flutter/material.dart';
class CircleButton extends StatelessWidget {

  final IconData buttonIcon;
  final Color iconColor;

  const CircleButton({required this.buttonIcon, required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle
      ),
      child: Icon(buttonIcon, color: iconColor,),
    );
  }
}
