import 'dart:ui';

import 'package:chatbox/util/colors.dart';
import 'package:chatbox/util/string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Call extends StatefulWidget {
  const Call({super.key});

  @override
  State<Call> createState() => _CallState();
}

class _CallState extends State<Call> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
       children: [
         Container(
           width: double.maxFinite,
           height: 865,
           decoration: BoxDecoration(
               color: Mycolors.chatBox1,
             image: DecorationImage(
               image: AssetImage("Asset/Image/man6.jpg"),fit: BoxFit.cover,
               )
           ),
           child: new BackdropFilter(
               filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
               child: new Container(
                 decoration: new BoxDecoration(color: Mycolors.fount.withOpacity(0.0)),
             child: Stack(
               children: [
                 Column(
                   children: [
                     SizedBox(
                       height: 200,
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         CircleAvatar(
                           radius: 80,
                           child: Image.asset("Asset/Image/Ellipse 307.png"),
                         ),
                       ],
                     ),
                     Text("Dharmik",style: TextStyle(color: Mycolors.fount,
                     fontSize: 25,fontWeight: FontWeight.bold),),
                     Text("Incoming call",style: TextStyle(color: Mycolors.fount),),
                      SizedBox(
                        height: 200,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(onPressed: () {
                            
                          }, icon: Icon(Icons.watch_later_outlined,color: Mycolors.fount,)),
                          IconButton(onPressed: () {

                          }, icon: Icon(Icons.message,color: Mycolors.fount,))
                        ],
                      ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         Text(MyString.callRemainderMe,style: TextStyle(color: Mycolors.fount),),
                         Text(MyString.callMessage,style: TextStyle(color: Mycolors.fount),)
                       ],
                     ),
                     SizedBox(
                       height: 50,
                     ),
                     Container(
                       height: 50,
                       width: 300,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(30),
                           color: Mycolors.fount.withOpacity(0.2),
                       ),
                       child: Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: CircleAvatar(
                               backgroundColor: Mycolors.fount,
                               child: const Icon(
                                 CupertinoIcons.phone,
                                 color: Mycolors.sellectedColors,
                                 size: 24.0,
                               ),
                             ),
                           ),
                           SizedBox(
                             width: 20,
                           ),
                           Text(MyString.call,style: TextStyle(color: Mycolors.fount),)
                         ],
                       ),
                     )
                   ],
                 ),
               ],
             ),
           )


         )
         ),
       ],

     ),

    );
  }
}
