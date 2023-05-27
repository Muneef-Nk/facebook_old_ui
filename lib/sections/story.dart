import 'package:facebook_clone/widgets/story_cards.dart';
import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  const Story({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
           StoryCards(
               label: 'muneef',
             story: 'images/g.jpg',
             avaterBorder: false,
             avater: 'images/a.jpg',
             isCreateStory: true,
           ),
          StoryCards(
            label: 'muneef',
            story: 'images/s6.jpg',
            avaterBorder: true,
            avater: 'images/i.jpg',
            isCreateStory: false,
          ),
          StoryCards(
            label: 'muneef',
            story: 'images/s2.jpg',
            avaterBorder: true,
            avater: 'images/h.jpg',
            isCreateStory: false,
          ),
          StoryCards(
            label: 'muneef',
            story: 'images/s5.jpg',
            avaterBorder: true,
            avater: 'images/b.jpg',
            isCreateStory: false,
          ),


        ],
      ),
    );
  }
}
