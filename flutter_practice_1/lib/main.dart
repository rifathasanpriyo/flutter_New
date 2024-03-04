import 'package:flutter/material.dart';
import 'package:flutter_practice_1/devision.dart';
import 'package:flutter_practice_1/romjan_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Day',
      //theme: ThemeData(primarySwatch: Colors.blue,brightness: Brightness.dark),
      home: Devison(),
      routes: {
       '/devison':(context) => Devison(),
      //  '/romajan':(context) => RomjanPage(),

      },
      initialRoute: '/devison',
    );
  }
}


