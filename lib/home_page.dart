import 'package:facebook_clone/sections/post.dart';
import 'package:facebook_clone/sections/profile_textField.dart';
import 'package:facebook_clone/sections/room.dart';
import 'package:facebook_clone/sections/room_status.dart';
import 'package:facebook_clone/sections/row_buttons.dart';
import 'package:facebook_clone/sections/story.dart';
import 'package:facebook_clone/widgets/circle_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Facebook',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
        actions: const [
          CircleButton(
            buttonIcon: Icons.search,
            iconColor: Colors.black,
          ),
          SizedBox(width: 8),
          CircleButton(
            buttonIcon: Icons.message_sharp,
            iconColor: Colors.black,
          )
        ],
      ),
      body: ListView(
        children: [
           ProfileTextField(),
           Divider(thickness: 1,),
           RowButtons(),
           Divider(thickness: 7, color: Colors.grey[300],),
           RoomStatus(),
           Divider(thickness: 7, color: Colors.grey[300],),
           Story(),
           Divider(thickness: 7, color: Colors.grey[300],),
           Post(),
        ],
      ),
    );
  }
}
