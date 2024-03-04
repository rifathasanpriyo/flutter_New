import 'package:flutter/material.dart';
import 'dart:convert';

class ShariIftar extends StatefulWidget {
  final int? newindex;
  final int? oldindex;
  const ShariIftar({required this.newindex,required this.oldindex});

 @override
  State<ShariIftar> createState() => _ShariIftarState();
}

class _ShariIftarState extends State<ShariIftar> {
  String _get_jsonfile()
{
  if(widget.oldindex == 1)
  {
      return "assets/chottagram.json";
  }
  else
  {
    return "assets/schidul.json";
  }
  
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString(_get_jsonfile()),
        
        builder: (context, snapshot) {
          var mydata=json.decode(snapshot.data.toString());
          if(mydata==null)
          {
            return Center(child: Text('loading'));
          }
          else{
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: [ 
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [ 
                     Center(child: Text(mydata["times"][widget.newindex]["sahri"])),
                     Center(child: Text(mydata["times"][widget.newindex]["ifter"])),
                  ],
                )
              ],
              
            );
          }
        },
      ),
    );
  }
}

