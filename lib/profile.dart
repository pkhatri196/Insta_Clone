import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './homepage.dart';
import './Circle/stories.dart';
import './Circle/postsgrid.dart';
import './Circle/reelsgrid.dart';
import './Circle/tagsgrid.dart';

class Profile extends StatelessWidget {
  final List highlights =['Goa Trip','Friends Forever','Kashmir Trip','Random','Birthday 2020',];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:3,
      child: Scaffold(
          body: Stack(children: [
            Container(
              color:Color(0xffe0e0e0),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:100),
              child: Container(
                decoration:BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60), bottomRight :Radius.circular(60),
                  ),
                ),

              ),
            ),
            Container(
              height: 270,
              decoration:BoxDecoration(
                color:Color(0xff123456),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60), bottomRight :Radius.circular(60),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Icon(FontAwesomeIcons.plusSquare,size: 20, color: Colors.white,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Icon(Icons.menu_outlined, size: 20, color: Colors.white,),
                        ),

                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(130,10,0,0,),
                      child: Text('Payal Khatri',
                        style: TextStyle(
                          color:Colors.white,
                          fontSize: 30,
                          fontFamily:'GreatVibes',
                          fontWeight:FontWeight.bold,
                        ),),
                    ),

                    ),

                  Align(
                    alignment:Alignment.centerRight,
                    child:Padding(
                      padding:EdgeInsets.only(right: 50.0,),

                      child:
                      Text('40             262             280',
                          style: TextStyle(
                            color:Colors.white,
                            fontFamily: 'PatrickHand',
                            fontSize:16,

                          )),
                    ),
                  ),

                  SizedBox(
                    height: 10.0,
                  ),
                  Align(
                    alignment:Alignment.centerRight,
                    child:Padding(
                      padding:EdgeInsets.only(right: 20.0, bottom:0),

                      child:
                      Text('Posts         Followers       Following',
                          style: TextStyle(
                            color:Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'PatrickHand',
                            fontSize:16,
                          )),
                    ),
                  ),

                  SizedBox(height:45,),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Container(
                      height:20,
                      width: 400,
                      color:Colors.white,
                        child:Align(
                        alignment:Alignment.center,
                          child: Text(
                            'Edit profile',
                            style:TextStyle(
                              color:Color(0xff123456),
                            fontFamily:'PatrickHand' ,
                            fontWeight: FontWeight.bold,
                            fontSize:15,
                          ),
                    ),
                        ),
                  ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 30,left:20,
              child: CircleAvatar(
                radius:50,
                backgroundImage: AssetImage('assets/girl.png'),
                )
            ),
            Padding(
              padding: const EdgeInsets.only(top:140,left:20),
              child: Column(
                     children: [
                    Text('Ex-marian',
                      style: TextStyle(
                        color:Colors.white,
                        fontFamily:'PatrickHand',
                      ),
                    ),
                    Text("DPSG'20",
                      style: TextStyle(
                        color:Colors.white,
                        fontFamily:'PatrickHand',
                      ),),
                    Text("AKGEC'24",
                      style: TextStyle(
                        color:Colors.white,
                        fontFamily:'PatrickHand',
                      ),),
                    Text('#DarshanRavalist',
                      style: TextStyle(
                        color:Colors.white,
                        fontFamily:'PatrickHand',
                      ),),
                  ],
                ),
            ),


            Align(
              alignment:Alignment.centerLeft,
              child: TabBar(
                tabs: [
                  Tab(
                    icon:Icon(FontAwesomeIcons.borderAll,color:Color(0xff123456),)
                  ),
                  Tab(
                      icon:Icon(Icons.video_call,size:40,color:Color(0xff123456),)
                  ),
                  Tab(
                      icon:Icon(FontAwesomeIcons.userTag,color:Color(0xff123456),)
                  ),
                ],
              ),
            ),
            // Expanded(
            //   child: TabBarView(children:[
            //     PostsGrid(),
            //     ReelsGrid(),
            //     TagsGrid(),
            //
            //   ],),
            // ),

            // Container(
            // height:130,
            // child: ListView.builder(
            // scrollDirection: Axis.horizontal,
            // itemCount:highlights.length,
            // itemBuilder: (context,index){
            // return Story(text: highlights[index]);
            // }
            //
            // ),
            // ),
      ],
      ),
      ),
    );





  }
}

