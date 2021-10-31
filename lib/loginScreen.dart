import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './feed.dart';

// class Login extends StatefulWidget {
//   const Login({Key? key}) : super(key: key);
//
//   @override
//   _LoginState createState() => _LoginState();
// }

 class Login extends StatefulWidget {
   Login({Key? key}) : super(key: key);

  // bool _secureText = true;

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    Text('Instagram',
                           style:TextStyle(
                             fontFamily: 'Festive',
                             fontWeight: FontWeight.bold,
                             fontSize: 50,
                           ),),
                          SizedBox(height: 50),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration:InputDecoration(
                              hintText: 'Phone number,email or username',
                              border: OutlineInputBorder(),
                            ) ,
                          ),
              SizedBox(height: 40),
                          TextFormField(
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                            decoration:InputDecoration(
                              hintText: 'Password',
                              border: OutlineInputBorder(),
                              suffixIcon:
                                Icon( Icons.security),
                                // onPressed: (){
                                //   setSate(
                                //       () {
                                //         _secureText = !_secureText;
                                //       }
                                //   );
                                // },
                              ),
                            ) ,

                    SizedBox(height: 40),
                      Container(
                        width: 100,
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Feed(),),
                              );
                            },
                            color: Colors.blueAccent,
                         child: Text('Log in',
                       style:TextStyle(
                         color:Colors.white,
                       // ),)
                       ),
      ),
                          ),

                  ),
                    SizedBox(height:270,),
                    Divider( height:10,),

                    Container(
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:<Widget> [
                            Text('Do not have an account?'),
                            Text('Sign up',
                              style:TextStyle(
                                fontWeight: FontWeight.bold,
                                color:Colors.blueAccent,
                              ),
                            )
                          ]
                        )

                    )



              ],),

        ),
    ),
    );






  }
}
