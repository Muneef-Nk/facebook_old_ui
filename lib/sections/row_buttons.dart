import 'package:facebook_clone/widgets/text_icon_button.dart';
import 'package:flutter/material.dart';


class RowButtons extends StatelessWidget {
  const RowButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButtons(
              buttonColor: Colors.red,
              buttonIcon: Icons.video_camera_front,
              buttonText: 'Live'
          ),

          const VerticalDivider(thickness: 1,),

          IconButtons(
              buttonColor: Colors.green,
              buttonIcon: Icons.photo_library,
              buttonText: 'Photo'
          ),

          const VerticalDivider(thickness: 1,),

          IconButtons(
              buttonColor: Colors.pink,
              buttonIcon: Icons.video_call,
              buttonText: 'Room'
          ),

        ],
      ),
    );
  }
}
