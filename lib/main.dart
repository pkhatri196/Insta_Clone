import 'package:flutter/material.dart';
import 'package:insta/Circle/user_posts.dart';
import './loginScreen.dart';
import './homepage.dart';
import './splashscreen.dart';
import './homepage.dart';
import './Circle/user_posts.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner:false,
        home: Login(),
    );
  }
}