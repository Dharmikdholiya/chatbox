import 'package:chatbox/util/colors.dart';
import 'package:chatbox/util/string.dart';
import 'package:flutter/material.dart';

class CommanWidget extends StatefulWidget {
  const CommanWidget({super.key});

  @override
  State<CommanWidget> createState() => _CommanWidgetState();
}

class _CommanWidgetState extends State<CommanWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          fun(name: MyString.container, color: Mycolors.fount, h: 48, w: 250,fountColor: Colors.black)
        ],
      ),
    );
  }
}
fun({required String name,required Color color,required double h,required double w,required Color fountColor})
{
  return Container(
    height: h,
    width: w,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
    color: color
    ),
    child: Center(child: Text(name,style: TextStyle(color: fountColor,fontSize: 16,fontWeight: FontWeight.bold),)),
  );
}
