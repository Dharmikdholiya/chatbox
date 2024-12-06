import 'package:chatbox/homescreen/view.dart';
import 'package:chatbox/util/colors.dart';
import 'package:chatbox/util/comman_widget.dart';
import 'package:chatbox/util/string.dart';
import 'package:flutter/material.dart';

class EmailChatbox extends StatefulWidget {
  const EmailChatbox({super.key});

  @override
  State<EmailChatbox> createState() => _EmailChatboxState();
}

class _EmailChatboxState extends State<EmailChatbox> {

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              IconButton(onPressed: () {

              }, icon: Icon(Icons.arrow_back)),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(MyString.titleEmail,style: TextStyle(color: Mycolors.chatBox2,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(MyString.titleEmailDiscription,style: TextStyle(color: Mycolors.chatBox2,
                  ),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(MyString.titleEmailDiscription1,style: TextStyle(color: Mycolors.chatBox2,
                  ),),
                ],
              ),
              SizedBox(
                height: 50,
              ),



              //textformfild
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(MyString.textFildUserName,style: TextStyle(color: Mycolors.Email,
                        fontWeight: FontWeight.bold),),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter The Name",
                      ),
                      validator: (value) {
                         if(value == null || value.isEmpty)
                          {
                            print("Enter The Name");
                          }
                         return null;
                      },
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(MyString.textFildEmail,style: TextStyle(color: Mycolors.Email,
                        fontWeight: FontWeight.bold),),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter The Name",
                      ),
                      validator: (value) {
                        if(value == null || value.isEmpty)
                        {
                          print("Enter The Email");
                        }
                        else if(!RegExp(r'^[\w-\.]+[0-9]+@([\w-]+\.)+[\w-]{2,4}$')
                            .hasMatch(value))
                        {
                          return "Enter The Valid Email Address";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(MyString.textFildPassword,style: TextStyle(color: Mycolors.Email,
                        fontWeight: FontWeight.bold),),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter The Name",
                      ),
                      validator: (value) {
                        if(value == null || value.isEmpty)
                        {
                          print("Enter The Email");
                        }
                        else if(!RegExp(r'^[\w-\.]+[0-9]+@([\w-]+\.)+[\w-]{2,4}$')
                            .hasMatch(value))
                        {
                          return "Enter The Valid Email Address";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(MyString.textFildConfirmPassword,style: TextStyle(color: Mycolors.Email,
                        fontWeight: FontWeight.bold),),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter The Name",
                      ),
                      validator: (value) {
                        if(value == null || value.isEmpty)
                        {
                          print("Enter The Email");
                        }
                        else if(!RegExp(r'^[\w-\.]+[0-9]+@([\w-]+\.)+[\w-]{2,4}$')
                            .hasMatch(value))
                        {
                          return "Enter The Valid Email Address";
                        }
                        return null;
                      },
                    ),

                  ],
                ),
              ),

              SizedBox(
                height: 160,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /*InkWell(
                    child: Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                  ),*/
                  fun(name: "Create an account", color: Mycolors.Email, h: 48, w: 350,fountColor: Colors.white)
                ],
              ),




            ],
          ),
        ),
      ),
    );
  }
}
