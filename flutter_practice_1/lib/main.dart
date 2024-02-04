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
 Set<Map> language={
  {
    'language_name':'C language',
    'discription':'C is a versatile, procedural programming language known for its efficiency and portability. It widely used for system development, embedded systems, and low-level programming',

  },
{
  'language_name':'C++ language',
    'discription':'C++ is a versatile, procedural programming language known for its efficiency and portability. It widely used for system development, embedded systems, and low-level programming',

},
{
 'language_name':'Python language',
    'discription':'Python is a versatile, procedural programming language known for its efficiency and portability. It widely used for system development, embedded systems, and low-level programming',

},
{
 'language_name':'java language',
    'discription':'java is a versatile, procedural programming language known for its efficiency and portability. It widely used for system development, embedded systems, and low-level programming',

},
{
 'language_name':'Dart language',
    'discription':'Dart is a versatile, procedural programming language known for its efficiency and portability. It widely used for system development, embedded systems, and low-level programming',

},
{
 'language_name':'c# language',
    'discription':'c# is a versatile, procedural programming language known for its efficiency and portability. It widely used for system development, embedded systems, and low-level programming',

},

 };
 showsnakebar()
 {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text('Reffresh successful')),
  );
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
        appBar: AppBar(
          title: Text("Flutter"),
          backgroundColor: Colors.red,
        ),
        body:RefreshIndicator(
          onRefresh:()=> Future.delayed(Duration(seconds: 3),
          ()
          {
                language.add({
                  'language_name':'Baaler Language'
                },
                ); 
                setState(() {
                  
                }
                
                );
                showsnakebar();
                },
           
          ),
          
          child: ListView.builder(
            
            itemCount: language.length,
            itemBuilder: (context, index) {
              return Text(language.elementAt(index)['language_name']);
            },
          
          ),
        )

    );
  }
}


