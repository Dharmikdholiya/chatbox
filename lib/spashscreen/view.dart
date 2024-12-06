import 'dart:async';

import 'package:flutter/material.dart';

class spashscreen extends StatefulWidget {
  const spashscreen({super.key});

  @override
  State<spashscreen> createState() => _spashscreenState();
}

class _spashscreenState extends State<spashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), () {
      //Navigator.push(context, MaterialPageRoute(builder: (context) => ,));
    },);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage("Asset/Image/spashscreen.png")),
            ],
          )


        ],
      ),

    );
  }
}
