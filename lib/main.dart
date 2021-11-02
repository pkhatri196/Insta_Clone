import 'package:flutter/material.dart';
import 'package:insta/Circle/user_posts.dart';
import './loginScreen.dart';
import './homepage.dart';
import './splashscreen.dart';
import './homepage.dart';
import './Circle/user_posts.dart';
import './profile.dart';
import './search.dart';
import './feed.dart';
import './reels.dart';
import './activity.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner:false,
        home: Profile(),
      routes:{
          './feed':(context)=> Feed(),
        './search':(context)=> Search(),
        './reels':(context)=> Reels(),
        './activity':(context)=> Activity(),
        './profile':(context)=> Profile(),
      }
    );
  }
}