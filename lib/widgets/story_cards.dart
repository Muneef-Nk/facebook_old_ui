import 'package:facebook_clone/widgets/circle_button.dart';
import 'package:flutter/material.dart';

import 'circle_profile.dart';

class StoryCards extends StatelessWidget {
  final String avater;
  final String label;
  final String story;
  final bool isCreateStory;
  final bool avaterBorder;

  const StoryCards({
      required this.avater,
      required this.label,
      required this.story,
      required this.isCreateStory,
      required this.avaterBorder
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image:  DecorationImage(
              image: AssetImage(story),
              fit: BoxFit.cover
          )),
      child: Stack(
        children: [
          isCreateStory
              ? Positioned(
                  top: 7,
                  left: 7,
                  child: CircleButton(
                    buttonIcon: Icons.add,
                    iconColor: Colors.blue,

                  ))
              : Positioned(
                  top: 7,
                  left: 7,
                  child: CircleProfile(
                    isStatusIndicator: false,
                    avaterSize: 24,
                    avaterPic: avater,
                    avaterBorder: avaterBorder,
                  ),
                ),
          isCreateStory
              ? Positioned(
                  left: 15,
                  bottom: 15,
                  child: Text(
                    'Create Story',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                )
              : Positioned(
                  left: 15,
                  bottom: 15,
                  child: Text(
                    label,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                )
        ],
      ),
    );
  }
}
