import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './Circle/stories.dart';
import './Circle/user_posts.dart';
import './homepage.dart';

class Feed extends StatelessWidget {
  final List people =['Your Story','khushi_ch','yuktaraghav','kiara_minime','soulfulsinger','_shruti','heyitsme','blackPanther'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
         mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Instagram',style:TextStyle(color: Colors.black,
            fontFamily: 'Festive',
            fontWeight: FontWeight.bold,
            fontSize: 30),),
            Padding(
              padding: const EdgeInsets.only(left:250),
              child: Icon(FontAwesomeIcons.plusSquare,color: Colors.black),
            ),
            Icon(FontAwesomeIcons.paperPlane,color: Colors.black),
          ]
        )
      ),
      
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: ScrollPhysics(),
            child: Column(
              //Stories
              children:[
                Container(
                  height:130,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                      itemCount:people.length,
                      itemBuilder: (context,index){
                    return Story(text: people[index]);
                  }

            ),
                ),
                //POSTS

                UserPosts(
                  name:'khushi_ch',
                )
                //
                // ListView.builder(itemCount:people.length,itemBuilder: (context,index){
                //   return UserPosts(
                //     name: people[index],
                //   );
                // }),
            ],
            ),
          ),
          // body:Center(child:Text)
    );
  }
}
