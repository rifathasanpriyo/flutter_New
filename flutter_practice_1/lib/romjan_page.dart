

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_practice_1/shari_iftar.dart';

class RomjanPage extends StatefulWidget {
  final int? newindex;

  const RomjanPage({required this.newindex});

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

 var date= DateTime.now();
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column( 
       children: [ 
        Expanded(
          child: RefreshIndicator(
            onRefresh: ()=>Future.delayed(Duration(seconds: 3),
            (){
               setState(() {
                  date = DateTime.now();
               });
            }
            ),
            
            child: ListView.builder(
              itemCount: romjan_count.length,
              itemBuilder: (context,index){
               return InkWell(
                onTap: () {
                  print(widget.newindex);
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ShariIftar(newindex: index, oldindex: widget.newindex)));
                },
                 child: Card(
                 
                   child: Container( 
                    height: date.day-13==index-1?70:50,
                    width: 20,
                    decoration: BoxDecoration( 
                      color: date.day-13 >=index?Colors.green:Color.fromARGB(179, 227, 223, 223),
                      borderRadius: BorderRadius.circular(8),
                      
                            boxShadow: [
                             date.day-13==index-1?BoxShadow( 
                                color: Color.fromARGB(255, 227, 110, 110),
                                offset: Offset(4, 4),
                                blurRadius: 5,
                                spreadRadius: 5
                              ):BoxShadow( 
                                color: Colors.grey,
                                
                              )
                            ]
                    ),
                    child: Center(child: Text(romjan_count[index].toString(),style: TextStyle(
                     fontSize: 17,
                     fontWeight: FontWeight.bold  
                    ),
                    )
                    ),
                   ),
                 ),
               );
            
              }
              
              
              ),
          ),
        )
       ],

      ),

    );
  }
}