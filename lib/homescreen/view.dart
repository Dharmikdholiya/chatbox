import 'dart:convert';

import 'package:chatbox/chat_page/view.dart';
import 'package:chatbox/homescreen/search_screen.dart';
import 'package:chatbox/util/colors.dart';
import 'package:chatbox/util/list_jason.dart';
import 'package:chatbox/util/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int bottomIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolors.chatBox2,
      appBar: AppBar(
        backgroundColor: Mycolors.chatBox1,
        leading: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),border: Border.all(width: 1,color: Mycolors.roundBorder)),
            child: CircleAvatar(
              backgroundColor: Mycolors.fount,
              child: IconButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SearchScreen(),));
              }, icon: Icon(Icons.search)),),
          ),
        ),
        title: Center(child: Text(MyString.homeScreenTitle,style: TextStyle(color: Mycolors.fount),)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(image: AssetImage("Asset/Image/Ellipse 307.png")),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 30,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: jason.length,
              itemBuilder: (context, index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: jason[index]["colors"],
                      radius: 30,
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                        border: Border.all(width: 2)),
                        child: CircleAvatar(
                          radius: 25,
                          child: Image(image: AssetImage("${jason[index]["Image"]}")),
                        ),
                      )
                    ),
                  ),
                  Text(jason[index]["name"],style: TextStyle(color: Colors.white),)
                ],
              );
            },),
          ),
       Expanded(
           flex: 70,
           child: SizedBox()),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          selectedItemColor: Mycolors.sellectedColors,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedFontSize: 18,
          unselectedItemColor: Mycolors.unsellectedColors,
          selectedIconTheme: IconThemeData(color: Colors.teal),
          unselectedFontSize: 15,
          onTap: (value) {
            setState(() {
              bottomIndex = value;
            });
          },
          currentIndex: bottomIndex,
          items: [

            //meaasage
            BottomNavigationBarItem(icon: IconButton(onPressed: () {
              showModalBottomSheet(context: context, builder: (context) {
                return Container(
                  height: 500,
                  width: double.maxFinite,
                  decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(50),
                  topRight: Radius.circular(50)),
                    color: Mycolors.fount,),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 40,
                            height: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Mycolors.popButtonColors,
                            ),

                          ),
                        ),
                      ),
                      Expanded(
                        flex: 100,
                        child: ListView.builder(
                          itemCount: messageData.length,
                          itemBuilder: (context, index) {
                          return InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ChatMessage(messageIndex: messageData[index],),));

                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 60,
                                width: 20,
                                color: Mycolors.fount,
                                child: ListTile(
                                  leading: CircleAvatar(
                                    child: Image.asset("${messageData[index]["Image"]}"),
                                  ),
                                  title: Text("${messageData[index]["Name"]}",
                                  style: TextStyle(
                                      fontSize: 18,
                                  fontWeight: FontWeight.bold),),
                                  subtitle: Text("${messageData[index]["SubName"]}"),
                                  trailing: Column(
                                    children: [
                                      Text("${messageData[index]["Time"]}"),
                                      CircleAvatar(
                                        radius: 10,
                                        backgroundColor: Mycolors.messageColors,
                                        child: Center(
                                          child: Text("${messageData[index]["MessageCount"]}",
                                          style: TextStyle(color: Mycolors.fount),),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ),
                            ),
                          );
                        },),
                      ),
                      
                    ],
                  ),
                );
              },);
            }, icon: Icon(Icons.message)),label: "Message",),

            //calls
            BottomNavigationBarItem(
                icon: IconButton(onPressed: () {
              showModalBottomSheet(context: context, builder: (context) {
                return Container(
                  width: double.maxFinite,
                  height: 500,
                  child: Column(
                    children: [
                      Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 40,
                              height: 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Mycolors.popButtonColors,
                              ),
                            ),
                          ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(MyString.callHeader,style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16
                                    ),)
                                  ],
                                ),
                              ),
                      Expanded(
                        flex: 100,
                        child: ListView.builder(
                          itemCount: callDetail.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => ChatMessage(messageIndex: messageData[index],),));

                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    height: 60,
                                    width: 20,
                                    color: Mycolors.fount,
                                    child: ListTile(
                                      leading: CircleAvatar(
                                        child: Image.asset("${callDetail[index]["Image"]}"),
                                      ),
                                      title: Text("${callDetail[index]["Name"]}",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),),
                                      subtitle: Row(
                                        children: [
                                          Icon(Icons.call,color: Mycolors.chatActiveSymbol,size: 15,),
                                          Text("${callDetail[index]["SubName"]}"),
                                        ],
                                      ),
                                        trailing: Container(
                                          width: 100,
                                          child: Row(
                                            children: [
                                              IconButton(onPressed: () {
                                                
                                              }, icon: Icon(Icons.call,color: Mycolors.apple,)),
                                              IconButton(onPressed: () {

                                              }, icon: Icon(Icons.video_call,color: Mycolors.apple,)),
                                            ],
                                          )

                                        )
                                    ),
                                ),
                              ),
                            );
                          },),
                      ),



                    ],
                  ),

                );
              },);
            }, icon: Icon(Icons.call)),label: "calls"),

            //contact
            BottomNavigationBarItem(icon: IconButton(onPressed: () {
              showModalBottomSheet(
                context: context, builder: (context) {
                return Container(
                  width: double.maxFinite,
                  height: 500,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 40,
                          height: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Mycolors.popButtonColors,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(MyString.contactHeader,style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                            ),)
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 100,
                        child: ListView.builder(
                          itemCount: contactDetail.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => ChatMessage(messageIndex: messageData[index],),));

                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 60,
                                  width: 20,
                                  color: Mycolors.fount,
                                  child: ListTile(
                                      leading: CircleAvatar(
                                        child: Image.asset("${contactDetail[index]["Image"]}"),
                                      ),
                                      title: Text("${contactDetail[index]["Name"]}",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),),
                                      subtitle: Text("${contactDetail[index]["SubName"]}"),

                                  ),
                                ),
                              ),
                            );
                          },),
                      ),



                    ],
                  ),

                );
              },);
            },
                icon: Icon(Icons.perm_contact_cal_rounded)),label: "Contact"),

            //setting
            BottomNavigationBarItem(icon: IconButton(onPressed: () {
              showModalBottomSheet(
                context: context, builder: (context) {
                return Container(
                  width: double.maxFinite,
                  height: 500,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 40,
                            height: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Mycolors.popButtonColors,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                );
              },);
            }, icon: Icon(Icons.settings)),label: "Setting")
          ]),

    );
  }
}
