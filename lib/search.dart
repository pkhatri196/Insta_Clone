import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:Container(
          padding: EdgeInsets.all(8),
          color:Colors.grey[400],
          child:Row(
            children:[
              Icon(Icons.search),
              Container(
                child: Text('Search'),
              )
            ]
          )
        )
      ),

      body:Center(child:
      Text('Search'))
    );
  }
}
