import 'package:facebook_clone/widgets/post_footer.dart';
import 'package:facebook_clone/widgets/text_icon_button.dart';
import 'package:flutter/material.dart';

import 'circle_profile.dart';

class PostCard extends StatelessWidget {
  final String profile;
  final double profleSize;
  final String name;
  final String title;
  final String time;
  final bool isVerified;
  final String post;
  final String likeCount;
  final String commentCount;
  final String shareCount;

  const PostCard({
    super.key,
    required this.profile,
    required this.name,
    required this.title,
    required this.time,
    required this.isVerified,
    required this.post,
    required this.likeCount,
    required this.commentCount,
    required this.shareCount,
    required this.profleSize,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        postHeader(),
        postTitle(),
        postImage(),
        PostFooter(
          shareCount: shareCount,
          likeCount: likeCount,
          commentCount: commentCount,
          pic: profile,
          avaterSize: profleSize,
        ),
        Divider(thickness: 1,),
        postFooterbuttons(),
      ],
    );
  }

  Widget postFooterbuttons(){
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButtons(
            buttonColor: Colors.grey,
            buttonIcon: Icons.thumb_up,
            buttonText: 'Like',
          ),
          VerticalDivider(thickness: 2,),
          IconButtons(
            buttonColor: Colors.grey,
            buttonIcon: Icons.comment,
            buttonText: 'Comments',
          ),
          VerticalDivider(thickness: 2,),
          IconButtons(
            buttonColor: Colors.grey,
            buttonIcon: Icons.share,
            buttonText: 'Share',
          ),
        ],
      ),
    );
  }

  Widget postImage() {
    return Container(
      padding: EdgeInsets.only(top: 20, bottom: 10),
      child: Image.asset(post),
    );
  }

  Widget postTitle() {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 15, right: 15),
      child: Text(title, style: TextStyle(fontSize: 18),),
    );
  }

  Widget postHeader() {
    return Container(
      child: ListTile(
        leading: CircleProfile(
          avaterBorder: false,
          isStatusIndicator: false,
          avaterPic: profile,
          avaterSize: 25,
        ),
        title: Row(
          children: [
            Text(name),
            SizedBox(width: 5),
            isVerified
                ? Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                        color: Colors.blue, shape: BoxShape.circle),
                    child: Center(
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 10,
                        weight: 200,
                      ),
                    ),
                  )
                : Text(('')),
          ],
        ),
        subtitle: Row(
          children: [
            Text(time),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.public,
              size: 20,
              color: Colors.black,
            ),
          ],
        ),
        trailing: Icon(Icons.more_vert),
      ),
    );
  }
}
