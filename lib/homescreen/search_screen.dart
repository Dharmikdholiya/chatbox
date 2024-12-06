import 'package:chatbox/util/colors.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 380,
                // decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                color: Mycolors.fount.withOpacity(0.1),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "search",
                    prefixIcon: IconButton(onPressed: () {
                      
                    }, icon: Icon(Icons.search)),
                    suffixIcon: IconButton(onPressed: () {
                      Navigator.pop(context);
                    }, icon: Icon(Icons.cancel)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                ),
              ),
            ],
          )

        ],
      ),
    );
  }
}
