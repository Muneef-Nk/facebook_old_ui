import 'package:flutter/material.dart';

class Room extends StatelessWidget {
  const Room({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.only(left: 10, right: 8),
      padding:  EdgeInsets.all(2),
      child: TextButton.icon(
        style:  ButtonStyle(
          side: MaterialStatePropertyAll(
            BorderSide(color: Colors.blue, width: 1),
          ),
          shape: MaterialStatePropertyAll(StadiumBorder())
        ),
        onPressed: () {},
        icon:  Icon(
          Icons.video_call,
          color: Colors.pink,
        ),
        label:  Text(
          'Create \nRoom',
        ),
      ),
    );
  }
}
