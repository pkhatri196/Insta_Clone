import 'package:flutter/material.dart';
import './user_posts.dart';


class Story extends StatelessWidget {
  final String text;

  Story({required this.text});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
//profile photo
            width:60,
            height:60,
            decoration:BoxDecoration(
                shape: BoxShape.circle,
              color:Colors.grey[400],
            ),
          ),
          SizedBox(height:10,),
          Text(text),
        ],

      ),
    );
  }
}
