import 'package:flutter/material.dart';

import '../widgets/circle_profile.dart';

class ProfileTextField extends StatelessWidget {
  const ProfileTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: CircleProfile(
          avaterSize: 25,
          avaterPic: 'images/g.jpg',
          isStatusIndicator: false,
          avaterBorder: false,
        ),
        title: TextField(
          decoration: InputDecoration(
              hintText: 'Add some text here', border: InputBorder.none),
        ),
      ),
    );
  }
}
