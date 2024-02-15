import 'package:flutter/material.dart';
class yes_buttom extends StatefulWidget {
  const yes_buttom({super.key});

  @override
  State<yes_buttom> createState() => _yes_buttomState();
}

class _yes_buttomState extends State<yes_buttom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [Image.asset('asset/images/sumi1.png'),
      Text('Ok yay!!!',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
      ]),



    );
  }
}