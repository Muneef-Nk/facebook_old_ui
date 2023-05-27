import 'package:facebook_clone/widgets/circle_profile.dart';
import 'package:flutter/material.dart';

class PostFooter extends StatelessWidget {

  final String likeCount;
  final String commentCount;
  final String shareCount;
  final String pic;
  final double avaterSize;

  PostFooter({
    required this.shareCount,
    required this.likeCount,
    required this.commentCount,
    required this.pic,
    required this.avaterSize

});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                  width: 25,
                  height: 25,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 15,
                  )),
              SizedBox(
                width: 3,
              ),
              Text(
                likeCount,
                style: TextStyle(color: Colors.grey[800]),
              ),
            ],
          ),
          Text(
            '$commentCount Comments',
            style: TextStyle(color: Colors.grey[800]),
          ),
          SizedBox(
            width: 3,
          ),

          Row(
            children: [
              Text(
                '$shareCount Share',
                style: TextStyle(color: Colors.grey[800]),
              ),
              CircleProfile(
                isStatusIndicator: false,
                avaterSize: avaterSize,
                avaterPic: pic,
                avaterBorder: false,
              ),
              Icon(Icons.arrow_drop_down)
            ],
          )

        ],
      ),
    );
  }
}
