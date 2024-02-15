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
     body:  Center(
       child: SingleChildScrollView(
         child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Image(image: NetworkImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Fm.timesofindia.com%2Flife-style%2Fevents%2Fhappy-propose-day-2022-images-quotes-wishes-messages-cards-greetings-pictures-and-gifs%2Farticleshow%2F89412187.cms&psig=AOvVaw37FrNz4CMj3F09cyv7PJLe&ust=1708074465490000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCLiiirD_rIQDFQAAAAAdAAAAABAb'),),
            Image.asset('asset/images/Screenshot_38.png',height: 150,width: 150,),
            SizedBox(height: 10,),
            Text('will you be my valentine?',style: TextStyle(
               fontSize: 25,
               fontWeight: FontWeight.bold
            ),
            ),
            //Divider(height: 10,),
            SizedBox(height: 30,),
            Center(
              child: SafeArea(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      
                      ElevatedButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => yes_buttom(),));

                      }, child: Text('YES',style: TextStyle(color: Colors.black),),
                        style: ElevatedButton.styleFrom( primary: const Color.fromARGB(255, 6, 245, 14),
                      minimumSize: u == 0 ? Size(20, 50) : Size(rr, yy),
                        
                      ),
                      ),
                      SizedBox(width: 30,),
                      ElevatedButton(onPressed: (){no_button();}, child: Text('NO',style: TextStyle(color: Colors.black),),
                      style: ElevatedButton.styleFrom( primary:Colors.red,
                      minimumSize: Size(20, 50)
                       ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            ]
          
          ),
       ),
     ),
      
      
       
   );
  }
}
