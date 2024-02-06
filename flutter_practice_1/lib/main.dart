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
  bool _check_box = false;
  bool _switch_box = false;
  int _group_radio = 1;
  List<bool> is_selected=[false,true];
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
          children: [
            Checkbox(
                value: _check_box,
                onChanged: (value) {
                  setState(() {
                    _check_box = value!;
                  });
                }),
            Divider(
              height: 10,
              color: Colors.blue,
            ),
            Switch(
                value: _switch_box,
                onChanged: (value) {
                  setState(() {
                    _switch_box = value!;
                  });
                }),
            Divider(
              height: 10,
              color: Colors.blue,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio(
                        value: 1,
                        groupValue: _group_radio,
                        onChanged: (value) {
                          setState(() {
                            _group_radio = value!;
                          });
                        }),
                    Text('Male'),
                  ],
                  
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio(
                        value: 2,
                        groupValue: _group_radio,
                        onChanged: (value) {
                          setState(() {
                            _group_radio = value!;
                          });
                        }),
                    Text('Female'),
                  ],
                  
                ),
              ],
            ),
            Divider(
              height: 10,
              color: Colors.blue,
            ),
              ToggleButtons(
                children:<Widget> [
                Icon(Icons.wifi),
                Icon(Icons.bluetooth),
                ],
                 isSelected: is_selected,
                 onPressed: (int index){
                  setState(() {
                    is_selected[index]=!is_selected[index];
                    
                  });
                  
                 },
                         

                 ),

          ],
        ),
      ),
    );
  }
}
