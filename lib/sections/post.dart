import 'package:facebook_clone/widgets/post_card.dart';
import 'package:flutter/material.dart';

import '../widgets/post_title.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          PostCard(
            profile: 'images/i.jpg',
            name: 'anna',
            title: title1,
            time: '12 minutes ago',
            isVerified: true,
            post: 'images/p2.jpg',
            likeCount: '12K',
            commentCount: '66K',
            shareCount: '10',
            profleSize: 30,
          ),
          Divider(thickness: 7, color: Colors.grey[300],),
          PostCard(
            profile: 'images/a.jpg',
            name: 'amal',
            title: title5,
            time: '44 minutes ago',
            isVerified: true,
            post: 'images/p3.jpg',
            likeCount: '120K',
            commentCount: '636',
            shareCount: '90',
            profleSize: 30,
          ),
          Divider(thickness: 7, color: Colors.grey[300],),
          PostCard(
            profile: 'images/d.jpg',
            name: 'gokul',
            title: title1,
            time: '20 minutes ago',
            isVerified: false,
            post: 'images/p5.jpg',
            likeCount: '12K',
            commentCount: '36',
            shareCount: '903',
            profleSize: 30,
          ),
          Divider(thickness: 7, color: Colors.grey[300],),
          PostCard(
            profile: 'images/g.jpg',
            name: 'ashiq',
            title: title3,
            time: '19 minutes ago',
            isVerified: false,
            post: 'images/p1.jpg',
            likeCount: '122K',
            commentCount: '116',
            shareCount: '90',
            profleSize: 30,
          ),
          Divider(thickness: 7, color: Colors.grey[300],),
          PostCard(
            profile: 'images/e.jpg',
            name: 'arun',
            title: title2,
            time: '1 minutes ago',
            isVerified: true,
            post: 'images/p6.jpg',
            likeCount: '99K',
            commentCount: '36',
            shareCount: '60',
            profleSize: 30,
          )
        ],
      ),
    );
  }
}
