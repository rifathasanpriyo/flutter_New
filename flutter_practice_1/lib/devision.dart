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

       
      body: 
      
      Container(
        decoration: BoxDecoration( 
          image: DecorationImage(image: AssetImage('asset/images/ramdanbg.png'),
          fit:BoxFit.cover,
          // colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), 
          // BlendMode.darken
          // )
          ),
          
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 140),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(' আপনার বিভাগ নির্বাচন করুন',style: TextStyle(
                  
                  fontSize: 28,fontWeight: FontWeight.w500),),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () { 
                    
                      Navigator.push(context, MaterialPageRoute(builder: ((context) => RomjanPage(newindex: 0))));
                    
                    
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
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => RomjanPage(newindex: 1))));
                },
                child: Text('চট্টগ্রাম ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 33, 116, 184),
                  fixedSize: Size(120, 50), 
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => RomjanPage(newindex: 2))));
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
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: ((context) => RomjanPage(newindex: 3))));},
                child: Text('রাজশাহী ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 33, 116, 184), 
                  fixedSize: Size(120, 50),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => RomjanPage(newindex: 4))));
                  
                  },
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
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => RomjanPage(newindex: 5))));
                  
                  },
                child: Text('রংপুর ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 33, 116, 184), 
                  fixedSize: Size(120, 50),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => RomjanPage(newindex: 6))));
                  },
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
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => RomjanPage(newindex: 7))));
                  },
                child: Text('ময়মনসিংহ ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 33, 116, 184),
                  fixedSize: Size(120, 50), 
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => RomjanPage(newindex: 8))));
                  },
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
        ),
      ),


    );
  }
}