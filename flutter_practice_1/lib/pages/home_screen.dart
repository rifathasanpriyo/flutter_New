import 'package:flutter/material.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        
        backgroundColor: Colors.amber,
        appBar: AppBar(bottom:
        TabBar(
          tabs: [
            Tab(
              text: 'One',
            ),
            Tab(
              text: 'two',
            ),
            Tab(
              text: 'three',
            ),
          ],
          ),
          ),
          body: TabBarView(children: 
          [
            Container(
              color: Colors.blue,
            ),
             Container(
              color: Colors.red,
            ),
             Container(
              color: Colors.green,
            ),
          ],
          ),
        
      
      ),
    );
  }
}