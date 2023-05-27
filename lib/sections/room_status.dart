import 'package:facebook_clone/widgets/circle_profile.dart';
import 'package:flutter/material.dart';

import '../sections/room.dart';

class RoomStatus extends StatelessWidget {
  const RoomStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          Room(),
          CircleProfile(
            isStatusIndicator:true,
            avaterSize: 25,
            avaterPic: 'images/b.jpg',
            avaterBorder: false,
          ),
          SizedBox(width: 10),
          CircleProfile(
            isStatusIndicator:true,
            avaterSize: 25,
            avaterPic: 'images/c.jpg',
            avaterBorder: false,
          ),
          SizedBox(width: 10),
          CircleProfile(
            isStatusIndicator:true,
            avaterSize: 25,
            avaterPic: 'images/d.jpg',
            avaterBorder: false,
          ),
          SizedBox(width: 10),
          CircleProfile(
            isStatusIndicator: false,
            avaterSize: 25,
            avaterPic: 'images/e.jpg',
            avaterBorder: false,
          ),
          SizedBox(width: 10),
          CircleProfile(
            isStatusIndicator:false,
            avaterSize: 25,
            avaterPic: 'images/f.jpg',
            avaterBorder: false
          ),
          SizedBox(width: 10),
          CircleProfile(
            isStatusIndicator:false,
            avaterSize: 25,
            avaterPic: 'images/i.jpg',
            avaterBorder: false,
          )
        ],
      ),
    );
  }
}
