import 'dart:async';

import 'package:chatbox/util/colors.dart';
import 'package:chatbox/util/comman_widget.dart';
import 'package:chatbox/util/string.dart';
import 'package:flutter/material.dart';

class chatbox extends StatefulWidget {
  const chatbox({super.key});

  @override
  State<chatbox> createState() => _chatboxState();
}

class _chatboxState extends State<chatbox> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.maxFinite,
                height: 843,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Mycolors.chatBox2,Mycolors.chatBox,Mycolors.chatBox1],
                    begin: Alignment.topLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 35,
                              width: 35,
                            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("Asset/Image/spashscreen.png"))),
                              ),
                          Text(MyString.heading,style: TextStyle(color: Mycolors.fount,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(MyString.fount,
                        style: TextStyle(color: Mycolors.fount,fontSize: 50),
                        ),
                      Text(MyString.fount1,
                        style: TextStyle(color: Mycolors.fount,fontSize: 50),
                      ),
                      Text(MyString.fount2,
                        style: TextStyle(color: Mycolors.fount,fontSize: 50,
                        fontWeight: FontWeight.bold),
                      ),
                      Text(MyString.fount3,
                        style: TextStyle(color: Mycolors.fount,fontSize: 50,
                        fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(MyString.discription,style: TextStyle(color: Mycolors.fount,
                      fontSize: 16),),
                      Text(MyString.discription1,style: TextStyle(color: Mycolors.fount,
                          fontSize: 16),),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                                border: Border.all(width: 1)),
                            child: CircleAvatar(
                              radius: 23,
                              backgroundColor: Mycolors.fount.withOpacity(0.1),
                              child: Container(
                                child: Icon(Icons.facebook,color: Mycolors.facebook,),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                                border: Border.all(width: 1)),
                            child: CircleAvatar(
                              radius: 23,
                              backgroundColor: Mycolors.fount.withOpacity(0.1),
                              child: Container(
                                  width: 23,
                                  height: 23,
                                  child: Image.asset("Asset/Image/google.png")
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                                border: Border.all(width: 1)),
                            child: CircleAvatar(
                              radius: 23,
                              backgroundColor: Mycolors.fount.withOpacity(0.1),
                              child: Container(
                                child: Icon(Icons.apple,color: Mycolors.apple,),
                              ),
                            ),
                          ),

                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 1,
                            width: 150,
                            color: Mycolors.apple,
                          ),
                          Text(MyString.flaxFount,style: TextStyle(color: Mycolors.fount),),
                          Container(
                            height: 1,
                            width: 150,
                            color: Mycolors.apple,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          fun(name: MyString.container, color: Mycolors.fount, h: 48, w: 350,fountColor: Colors.black)
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text(MyString.confirmLine,style: TextStyle(color: Mycolors.fount),),
                          Text(MyString.confirmLine1,style: TextStyle(color: Mycolors.fount,
                          fontWeight: FontWeight.bold),)
                        ],
                      ),



                    ],
                  ),
                ),
              ),

            ],



          ),
        ],
      ),

    );
  }
}
