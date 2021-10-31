import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserPosts extends StatelessWidget {
  final String name;
  UserPosts({required this.name});

  @override

  Widget build(BuildContext context) {
    return Column(
        children:[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Container(
                  width:40,
                  height:40,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape:BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(name,
                style:TextStyle(
                  fontWeight: FontWeight.bold,
                )),
                Padding(
                  padding: const EdgeInsets.only(left:330.0),
                  child: Icon(FontAwesomeIcons.ellipsisV),
                ),
              ],
            ),
          ),
          Container(
            height: 400,
            color:Colors.grey[300],
          ),
          SizedBox(
            width: 10,
          ),

          //Icons below posts
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Row(
                  children: [
                    Icon(FontAwesomeIcons.heart),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal:12.0,)
                    ),
                    Icon(FontAwesomeIcons.comment),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal:12.0,)
                    ),
                    Icon(FontAwesomeIcons.locationArrow),
                  ],
                ),
                Icon(FontAwesomeIcons.bookmark),
              ],
            ),
          ),

          //COMMENT
          Text(
            'suhanikaushik_,soulfulsinger',
            style:TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text('and'),
          Text(
            'others',
            style:TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),

          // CAPTION
          Padding(
            padding: const EdgeInsets.only(top:8.0,left:16.0),
            child: RichText(
              text: TextSpan(
                style: TextStyle(color:Colors.black,),
                 children:[
                 TextSpan(
                 text:name,
                 style:TextStyle(
                 fontWeight: FontWeight.bold,
                 ),
                ),
               TextSpan(
                 text:'Because I wanted to.....:-)'),
              ],
              ),
            ),
          )
        ],

      );

  }
}

