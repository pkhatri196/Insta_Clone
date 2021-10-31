import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './homepage.dart';
import './loginScreen.dart';
import './feed.dart';
import './search.dart';
import'./reels.dart';
import'./activity.dart';
import'./profile.dart';



class feed extends StatefulWidget {
  const feed({Key? key}) : super(key: key);

  @override
  State<feed> createState() => _feedState();
}

class _feedState extends State<feed> {

  int _selectedIndex =0;
  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children =[
    // Login(),
    Feed(),
    // Search(),
    // Reels(),
    // Activity(),
    // Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_children[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.video_call),label: 'Reels'),
            BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.heart),label: 'Activity'),
            BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.userCircle),label: 'Profile'),


          ]
      )
    );

  }
}
