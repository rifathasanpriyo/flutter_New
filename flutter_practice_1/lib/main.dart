import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Flutter Day',
      //theme: ThemeData(primarySwatch: Colors.blue,brightness: Brightness.dark),
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
  bool change=false;
  final player = AudioPlayer();
  bool isPlaying=false;
  Duration duration=Duration.zero;
  Duration position=Duration.zero;
/*setaudio()async{
await player.play(AssetSource('djsong.mp3'));

  }
  @override
  void initState() {
    setaudio();
    super.initState();
  }
  @override
  void dispose() {
   player.dispose();
    super.dispose();
  }*/
   String formatTime(int seconds) {
    return '${(Duration(seconds: seconds))}'.split('.')[0].padLeft(8, '0');
  }
 
  @override
  void initState() {
    super.initState();
    player.onPlayerStateChanged.listen((state) { 
       setState(() {
         isPlaying=state==PlayerState.playing;
       });
    
    }
    );

    player.onDurationChanged.listen((newDuration) { 
    setState(() {
      duration=newDuration;
    });

    }
    );
    
   player.onPositionChanged.listen((newPosition) { 
    setState(() {
      position=newPosition;
    });
   }
   );

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue,brightness:change? Brightness.dark:Brightness.light),
      home: Scaffold(
       // backgroundColor: change ?Colors.white:Colors.black,
        
        drawer: Drawer(
           width: 170,
           
           child: ListView(
            children: [ 
              SizedBox(height:30),
              ListTile(
                title: Icon(Icons.home,),
                
              ),
              ListTile(
                title: Icon(Icons.favorite,),
                
              ),
              ListTile( 
                title: Icon(Icons.settings),
                
              ),
              Switch(value: change,onChanged: (newvalue) {
                setState(() {
                  change=newvalue;
                });
              },)
            ],
           ), 
      
        ),
        appBar: AppBar(
          title: Center(child: Text("P L A Y E R",style: TextStyle(fontWeight: FontWeight.bold),)),
          backgroundColor: Colors.grey,
        ),
         body: Center(
           child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
             children: [ 
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset('asset/images/letme.png',height: 300,),
                  ),
                ),
                //SizedBox(height: 30,),
              Slider(min:0,max: duration.inSeconds.toDouble(),
              value: position.inSeconds.toDouble(), 
              onChanged: (value){
                position = Duration(seconds: value.toInt());
                player.seek(position);
                player.resume();
              }
              ),
              Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [ 
                     Text(formatTime(position.inSeconds),style: TextStyle(fontWeight: FontWeight.bold),),
                     Text(formatTime((duration-position).inSeconds),style: TextStyle(fontWeight: FontWeight.bold),),
      
                    ],
                  ),
      
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  
                  
                ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.skip_previous_sharp), label: Text('')),
                  FloatingActionButton(onPressed: ()async{
                             
                  if(player.state==PlayerState.playing)
                  {
                    await player.pause();
                    
                    setState(() {
                      
                    });
                  }
                  else
                  {
                   await player.play(AssetSource('letmesong.mp3'));
                  
                    setState(() {
                      
                    });
                  }
                  },
                  child: player.state==PlayerState.playing ? Icon(Icons.pause_circle_rounded,size: 50,):Icon(Icons.play_circle_rounded,size: 50,),
                 
                  
                  ),
                  ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.skip_next), label: Text('')),
      
                  
                ],
              ),
              SizedBox(height: 20,),
              Text('Let Me Down Slowly',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
             ],
             
           ),
         ),
      ),
    );
  }
}
