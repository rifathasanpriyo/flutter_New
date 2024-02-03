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
      title: 'Flutter Day',
      theme: ThemeData(primarySwatch: Colors.blue,brightness: Brightness.dark),
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
  int _myindex=0;
  final _Pages=[
      Container(color: Colors.amber,),
      Container(color: Colors.white,),
      Container(color: Colors.red,),



  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Flutter',style: TextStyle(color: Colors.white),)),
          backgroundColor: Colors.blue,
          ),
       body: Row(
         children: [
           NavigationRail(
            onDestinationSelected: (int index)
            {
             setState(() {
               _myindex=index;
             });
            },
            labelType: NavigationRailLabelType.all,
            elevation: 10,
            backgroundColor: Colors.grey,
           
            destinations: [
              NavigationRailDestination(icon: Icon(Icons.home), label: Text('Home')),
              NavigationRailDestination(icon: Icon(Icons.add), label: Text('Add')),
              NavigationRailDestination(icon: Icon(Icons.search), label: Text('Search')),
            ],
           selectedIndex: _myindex),
           Expanded(child: _Pages[_myindex]),
         ],
       ),
      ),
    );
  }
}


