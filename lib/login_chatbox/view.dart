import 'package:chatbox/util/colors.dart';
import 'package:chatbox/util/comman_widget.dart';
import 'package:chatbox/util/string.dart';
import 'package:flutter/material.dart';

class LoginChackbox extends StatefulWidget {
  const LoginChackbox({super.key});

  @override
  State<LoginChackbox> createState() => _LoginChackboxState();
}

class _LoginChackboxState extends State<LoginChackbox> {
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
                  Text(MyString.loginTitle,style: TextStyle(color: Mycolors.chatBox2,
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
                  Text(MyString.loginDescription,style: TextStyle(color: Mycolors.chatBox2,
                      ),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(MyString.loginDescription1,style: TextStyle(color: Mycolors.chatBox2,
                  ),),
                ],
              ),
              SizedBox(
                height: 35,
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
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        height: 1,
                        color: Mycolors.apple,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(MyString.flaxFount,style: TextStyle(color: Mycolors.apple),),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        height: 1,
                        color: Mycolors.apple,
                      ),
                    ),
                  ],
                ),
              ),
              Text(MyString.textFildEmail,style: TextStyle(color: Mycolors.Email,
              fontWeight: FontWeight.bold),),
              TextField(
                decoration: InputDecoration(),
              ),
              SizedBox(
                height: 20,
              ),
              Text(MyString.textFildPassword,style: TextStyle(color: Mycolors.Email,
                  fontWeight: FontWeight.bold),),
              TextField(
                obscureText: true,
                decoration: InputDecoration(),
              ),
              SizedBox(
                height: 250,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  fun(name: "Log in", color: Mycolors.Email, h: 48, w: 350,fountColor: Colors.white)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(MyString.varification,style: TextStyle(color: Mycolors.Email,
                  fontWeight: FontWeight.bold),)
                ],
              )
        
        
        
            ],
          ),
        ),
      ),
    );
  }
}
