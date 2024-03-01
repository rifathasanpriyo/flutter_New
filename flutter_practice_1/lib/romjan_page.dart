import 'package:flutter/material.dart';

class RomjanPage extends StatefulWidget {
  const RomjanPage({super.key});

  @override
  State<RomjanPage> createState() => _RomjanPageState();
}

class _RomjanPageState extends State<RomjanPage> {
  var romjan_count=[ 
    '১ রমজান',
    '২ রমজান',
    '৩ রমজান',
    '৪ রমজান',
    '৫ রমজান',
    '৬ রমজান',
    '৭ রমজান',
    '৮ রমজান',
    '৯ রমজান',
    '১০ রমজান',
    '১১ রমজান',
    '১২ রমজান',
    '১৩ রমজান',
    '১৪ রমজান',
    '১৫ রমজান',
    '১৬ রমজান',
    '১৭ রমজান',
    '১৮ রমজান',
    '১৯ রমজান',
    '২০ রমজান',
    '২১ রমজান',
    '২২ রমজান',
    '২৩ রমজান',
    '২৪ রমজান',
    '২৫ রমজান',
    '২৬ রমজান',
    '২৭ রমজান',
    '২৮ রমজান',
    '২৯ রমজান',
    '৩০ রমজান',

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 30),
        child: Container(
        child: ListView( 
           children: romjan_count.map((value) {
            return Material( 
            child: InkWell(
              onTap: () {
                
              },
              splashColor: Colors.red,
              child: Padding(
                
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration( 
                     borderRadius: BorderRadius.circular(10),
                                         color: const Color.fromARGB(255, 136, 180, 215),  
                    ),
        
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Center(child: Text(value,style: TextStyle( fontSize: 17,fontWeight: FontWeight.bold),)),
        
                           
                         ),
                         
                  ),
                ),
              ),
            ),
        
            );
        
           }
           ).toList(),
        
        )
        
        ),
      ),

    );
  }
}