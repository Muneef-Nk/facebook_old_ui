import 'package:flutter/material.dart';

class CircleProfile extends StatelessWidget {
  final double avaterSize;
  final String avaterPic;
  final bool isStatusIndicator;
  final bool avaterBorder;

  const CircleProfile({
    required this.isStatusIndicator,
    required this.avaterSize,
    required this.avaterPic,
     required this.avaterBorder,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
          Container(
            decoration:  BoxDecoration(
              shape: BoxShape.circle,
              border:avaterBorder? Border.all(width: 3, color: Colors.blue): Border(),


            ) ,
            child: CircleAvatar(
         radius: avaterSize,
              backgroundImage: AssetImage(avaterPic),
            ),
          ),
        isStatusIndicator
            ? Positioned(
                left: 33,
                top: 33,
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(width: 2, color: Colors.white)
                  ),
                  width: 19,
                  height: 19,
                )):Text(''),
      ],
    );
  }
}
