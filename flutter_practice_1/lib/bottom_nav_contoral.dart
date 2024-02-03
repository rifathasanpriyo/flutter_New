import 'package:flutter/material.dart';
import 'package:flutter_practice_1/pages/chat_screen.dart';
import 'package:flutter_practice_1/pages/home_screen.dart';
import 'package:flutter_practice_1/pages/search_screen.dart';

class bottom_nav_contoral extends StatefulWidget {
  const bottom_nav_contoral({super.key});

  @override
  State<bottom_nav_contoral> createState() => _bottom_nav_contoralState();
}

class _bottom_nav_contoralState extends State<bottom_nav_contoral> {
  int _currentindex=0;
  final page=[
   home_screen(),
   search_screen(),
   chat_screen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        onTap:(int index){
          _currentindex=index;
          setState(() {
            
          });
        } ,
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'home',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: 'search'),
        BottomNavigationBarItem(icon: Icon(Icons.chat),label: 'chat'),
      ]
      ),
      body: page[_currentindex],
    );
  }
}
