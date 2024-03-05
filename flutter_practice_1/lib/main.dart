import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Day',
      theme: ThemeData(primarySwatch: Colors.blue, brightness: Brightness.dark),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _controller=TextEditingController();
  final _formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Flutter',
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Form(
          key: _formkey,
          child: Column(
            children: [
              TextFormField(
                controller: _controller,
                decoration: InputDecoration(
                  icon: Icon(Icons.email),
                 hintText: "email",
                  border: OutlineInputBorder(),
                ),
                 validator: (value) {
                   if(value==null ||value.isEmpty)
                   { 
                      return "Email Not Empty";

                   }
                 }, 
              ),
              TextFormField(
                decoration: InputDecoration(
                 hintText: "password",
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  // Handle text changes here
                },
              ),
              ElevatedButton(onPressed: (){
                 if(_formkey.currentState!.validate())
                 {
                  print('successfull');
                 }

              }, child: Text('loging'))
            ],
          ),
        ),
      ),
    );
  }
}
