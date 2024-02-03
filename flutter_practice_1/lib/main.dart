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
 alertDialog()
 {
       showDialog(context: context, builder: (_){
         return CupertinoAlertDialog(
          title: Text('exit dialog'),
          content: Row(
            children: [
              ElevatedButton(onPressed: (){}, child: Text('YES'),),
              SizedBox(width: 10,),
             ElevatedButton(onPressed: (){}, child: Text('NO'),),

            
            
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


 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
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

    );
  }
}


