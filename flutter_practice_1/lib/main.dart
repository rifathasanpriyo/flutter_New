<<<<<<< Updated upstream
=======
import 'dart:io';

import 'package:flutter/cupertino.dart';
>>>>>>> Stashed changes
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
<<<<<<< Updated upstream
  int _myindex=0;
  final _Pages=[
      Container(color: Colors.amber,),
      Container(color: Colors.white,),
      Container(color: Colors.red,),
=======
  getoutfromapp(){
     if(Platform.isIOS)
     {
      try{
        exit(0);
      }
      catch(e){
      print(e);
      }
      
     }
     else{
      try{
        SystemNavigator.pop();
      }
      catch(e)
      {
        print(e);
      }
     }
 
  }
 alertDialog()
 {
       showDialog(context: context, builder: (_){
         return CupertinoAlertDialog(
          title: Text('exit dialog'),
          content: Row(
            children: [
              ElevatedButton(onPressed: ()=>getoutfromapp(), child: Text('YES'),),
              SizedBox(width: 10,),
             ElevatedButton(onPressed: ()=>Navigator.pop(context), child: Text('NO'),),
        
            
            
            ],
          ),
         );

       }
       );   
 }

 bottomSheet()
 {
   return  showModalBottomSheet(context: context, builder: (_){
       
       return Container(
        height: 200,
       
       );
   });
>>>>>>> Stashed changes



  ];
  @override
  Widget build(BuildContext context) {
<<<<<<< Updated upstream
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
=======
    return WillPopScope(
      onWillPop: (){
        alertDialog();
        return Future.value(false);
      },
      child: Scaffold(
         
          appBar: AppBar(
            title: Text("Flutter"),
            backgroundColor: Colors.red,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              ElevatedButton(
                  onPressed: ()=>alertDialog()
              , child: Text("alert_dialog"),
              
              ),
             ElevatedButton(
                  onPressed: ()=>bottomSheet()
              , child: Text("Bottom_Sheet"),
              
              ),
            
              ],
            ),
          ),
      
>>>>>>> Stashed changes
      ),
    );
  }
}


