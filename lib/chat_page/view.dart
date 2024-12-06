import 'package:chatbox/call/view.dart';
import 'package:chatbox/util/colors.dart';
import 'package:chatbox/util/string.dart';
import 'package:flutter/material.dart';

class ChatMessage extends StatefulWidget {
   var messageIndex;
   ChatMessage({super.key,required this.messageIndex});

  @override
  State<ChatMessage> createState() => _ChatMessageState();
}

class _ChatMessageState extends State<ChatMessage> {

  bool textSand = true ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Row(
              children: [
                Stack(
                  children: [
                      CircleAvatar(
                      child: Image(image: AssetImage("${widget.messageIndex["Image"]}"),),),
                    Positioned(
                      top: 25,
                      left: 27,
                      child: Container(
                        height: 13,
                        width: 13,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                          color: Mycolors.chatActiveSymbol,),

                      ),
                    )
                    ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${widget.messageIndex["Name"]}",style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),),
                      Text(MyString.chatSubMessage,style: TextStyle(
                        fontSize: 15
                      ),),
                    ],
                  ),
                ),
              ],
            ),

          ],
        ),
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Call(),));
          }, icon: Icon(Icons.call)),
          IconButton(onPressed: () {

          }, icon: Icon(Icons.emergency_recording))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 690,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {
                  showModalBottomSheet(
                    elevation: 5,
                    context: context, builder: (context) {
                    return Container(
                      height: 300,
                      width: double.maxFinite,
                      color: Mycolors.chatBox2,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                backgroundColor: Mycolors.chatBox,
                                child: IconButton(onPressed: () {

                                }, icon: Icon(Icons.book_outlined,color: Mycolors.fount,)),
                              ),
                              CircleAvatar(
                                backgroundColor: Mycolors.backgroundIcon,
                                child: IconButton(onPressed: () {

                                }, icon: Icon(Icons.camera_alt,color: Mycolors.fount)),
                              ),
                              CircleAvatar(
                                backgroundColor: Mycolors.chatBox.withOpacity(0.5),
                                child: IconButton(onPressed: () {

                                }, icon: Icon(Icons.browse_gallery,color: Mycolors.fount)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(width: 40,),
                              Text(MyString.chatOption,style: TextStyle(color: Mycolors.fount),),
                              SizedBox(width: 80,),
                              Text(MyString.chatOption1,style: TextStyle(color: Mycolors.fount),),
                              SizedBox(width: 85,),
                              Text(MyString.chatOption2,style: TextStyle(color: Mycolors.fount),),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                backgroundColor: Mycolors.messageColors,
                                child: IconButton(onPressed: () {

                                }, icon: Icon(Icons.audiotrack,color: Mycolors.fount,)),
                              ),
                              CircleAvatar(
                                backgroundColor: Mycolors.chatActiveSymbol,
                                child: IconButton(onPressed: () {

                                }, icon: Icon(Icons.location_on,color: Mycolors.fount)),
                              ),
                              CircleAvatar(
                                backgroundColor: Mycolors.sellectedColors,
                                child: IconButton(onPressed: () {

                                }, icon: Icon(Icons.payment_outlined,color: Mycolors.fount)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(width: 50,),
                              Text(MyString.chatOption3,style: TextStyle(color: Mycolors.fount),),
                              SizedBox(width: 95,),
                              Text(MyString.chatOption4,style: TextStyle(color: Mycolors.fount),),
                              SizedBox(width: 80,),
                              Text(MyString.chatOption5,style: TextStyle(color: Mycolors.fount),),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                backgroundColor: Mycolors.backgroundIcon6,
                                child: IconButton(onPressed: () {

                                }, icon: Icon(Icons.perm_contact_cal,color: Mycolors.fount,)),
                              ),
                              CircleAvatar(
                                backgroundColor: Mycolors.backgroundIcon7.withOpacity(0.5),
                                child: IconButton(onPressed: () {

                                }, icon: Icon(Icons.poll_outlined,color: Mycolors.fount)),
                              ),
                              CircleAvatar(
                                backgroundColor: Mycolors.backgroundIcon8,
                                child: IconButton(onPressed: () {

                                }, icon: Icon(Icons.note_alt_outlined,color: Mycolors.fount)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(width: 45,),
                              Text(MyString.chatOption6,style: TextStyle(color: Mycolors.fount),),
                              SizedBox(width: 100,),
                              Text(MyString.chatOption7,style: TextStyle(color: Mycolors.fount),),
                              SizedBox(width: 100,),
                              Text(MyString.chatOption8,style: TextStyle(color: Mycolors.fount),),
                            ],
                          ),
                        ],
                      ),
                    );
                   },
                  );
        
                }, icon: Icon(Icons.currency_lira_sharp,size: 30,)),
                Container(
                  width: 250,
                  child: TextField(
                    decoration: InputDecoration(

                      hintText: "write you message",
                      suffixIcon: IconButton(onPressed: () {

                      }, icon: Icon(Icons.book)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                      )
                    ),

                  ),
                ),
                IconButton(onPressed: () {

                }, icon: Icon(Icons.camera_alt,size: 30,)),
                IconButton(onPressed: () {
        
                }, icon: Icon(Icons.mic,size: 30,)),
              ],
            ),
        
          ],
        ),
      ),

    );
  }
}
