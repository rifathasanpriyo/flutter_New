import 'package:flutter/material.dart';
import 'package:flutter_practice_1/yes_button.dart';

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
 var gender=['Male','Female','Baal'];
  var index='Male';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("Flutter"),
        backgroundColor: Colors.red,
       ),
       body: DropdownButton(
        value: index,
        items: gender.map(
          (value) {
            return DropdownMenuItem(
              value:value,
              child: Text(value,style: TextStyle(color: Colors.black),));
          }
          
          ).toList(),
          
           
        onChanged: (value){
          setState(() {
            index=value!;
          });
          

        }
        ),
      
      
      
       
   );
  }
}
