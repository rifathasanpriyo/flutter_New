import 'package:flutter/material.dart';
import 'package:flutter_practice_1/romjan_page.dart';

class Devison extends StatefulWidget {
  const Devison({super.key});

  @override
  State<Devison> createState() => _DevisonState();
}

class _DevisonState extends State<Devison> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       appBar: AppBar(
        title: Text('Ramadan 2024 '),
      ),
      body: 
      
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('আপনার বিভাগ নির্বাচন করুন',style: TextStyle(fontSize: 28,fontWeight: FontWeight.w300),),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () { 
                
                  Navigator.pushNamed(context,'/romajan');
                
                
              },
              child: Text('ঢাকা ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 33, 116, 184),
                fixedSize: Size(120, 50), 
              ),
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [ 
               
            ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context,'/romajan');
            },
            child: Text('চট্টগ্রাম ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 33, 116, 184),
              fixedSize: Size(120, 50), 
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context,'/romajan');
            },
            
            child: Text('সিলেট ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 33, 116, 184), 
              fixedSize: Size(120, 50),
            ),
          ),
           ],

          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [ 
               
            ElevatedButton(
            onPressed: () {Navigator.pushNamed(context,'/romajan');},
            child: Text('রাজশাহী ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 33, 116, 184), 
              fixedSize: Size(120, 50),
            ),
          ),
          ElevatedButton(
            onPressed: () {Navigator.pushNamed(context,'/romajan');},
            child: Text('বরিশাল ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 33, 116, 184), 
              fixedSize: Size(120, 50),
            ),
          ),
           ],

          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [ 
               
            ElevatedButton(
            onPressed: () {Navigator.pushNamed(context,'/romajan');},
            child: Text('রংপুর ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 33, 116, 184), 
              fixedSize: Size(120, 50),
            ),
          ),
          ElevatedButton(
            onPressed: () {Navigator.pushNamed(context,'/romajan');},
            child: Text('খুলনা ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 33, 116, 184), 
              fixedSize: Size(120, 50),
            ),
          ),
           ],

          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [ 
               
            ElevatedButton(
            onPressed: () {Navigator.pushNamed(context,'/romajan');},
            child: Text('ময়মনসিংহ ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 33, 116, 184),
              fixedSize: Size(120, 50), 
            ),
          ),
          ElevatedButton(
            onPressed: () {Navigator.pushNamed(context,'/romajan');},
            child: Text('অনান্য ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 33, 116, 184), 
              fixedSize: Size(120, 50),
            ),
          ),
           ],

          ),
        ],
      ),


    );
  }
}