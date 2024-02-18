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
  double rr=20;
  double yy=20;
  
  int u=0;
   no_button()
   {
      setState(() {
        rr=rr+20;
        yy=yy+20;
        u=1;
      });
      
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         //title: Text("Flutter"),
        // backgroundColor: Colors.red,
       ),
     body: Center(child: ExpansionTile(
      title: Text('Today News'),
      subtitle: Text('My name is Rifat Hasan'),
      leading: CircleAvatar(backgroundColor: Colors.black,),
      children: [
         Container(
          height: 100,
          width: 500,
          color: Colors.blue,

         )

      ],
      )
      )
      
      
       
   );
  }
}
