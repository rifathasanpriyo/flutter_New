import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Day',
      //theme: ThemeData(primarySwatch: Colors.blue,brightness: Brightness.dark),
      home: homeScreen(),
    );
  }
}

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  PageController _pageController= PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: ()
      {
          _pageController.nextPage(duration: Duration(seconds: 1), curve: Curves.bounceInOut);

      }),
      appBar: AppBar(
        title: Text("Flutter"),
        backgroundColor: Colors.red,
      ),
      body: PageView(
        controller: _pageController,
        children: [ 
          Container(
            height: 200,
            width: 200,
            color: Colors.blue,
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.yellow,
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.pink,
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.green,
          )
        ],
      ),
    );
  }
}
