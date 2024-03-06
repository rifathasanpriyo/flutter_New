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

buttom_sheet(){
  showModalBottomSheet(context: context, builder: (_){
    
    return ListView( 
      children: [
        //SizedBox(height: 15,) ,
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text('نَوَيْتُ اَنْ اُصُوْمَ غَدًا مِّنْ شَهْرِ رَمْضَانَ الْمُبَارَكِ فَرْضَا لَكَ يَا اللهُ فَتَقَبَّل مِنِّى اِنَّكَ اَنْتَ السَّمِيْعُ الْعَلِيْم',style: 
             TextStyle( 
              fontSize: 18,
              fontWeight: FontWeight.w700
             )
            
             ,),
             
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text('বাংলা উচ্চারণ:  নাওয়াইতু আন আছুমা গাদাম, মিন শাহরি রমাদানাল মুবারাক; ফারদাল্লাকা ইয়া আল্লাহু, ফাতাকাব্বাল মিন্নি ইন্নিকা আনতাস সামিউল আলিম।',style: 
             
             TextStyle(
              fontSize: 17,

             )
             ,),
           ),

           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text('অর্থ : হে আল্লাহ! আমি আগামীকাল পবিত্র রমজানের তোমার পক্ষ থেকে নির্ধারিত ফরজ রোজা রাখার ইচ্ছা পোষণ (নিয়্যত) করলাম। অতএব তুমি আমার পক্ষ থেকে (আমার রোযা তথা পানাহার থেকে বিরত থাকাকে) কবুল কর, নিশ্চয়ই তুমি সর্বশ্রোতা ও সর্বজ্ঞানী।',style: 
             
             TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w700
             )
             ,),
           ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom( 
                backgroundColor: Colors.blue,
               
              ),
              onPressed: (){
             Navigator.of(context).pop();
            
            }, child: Text('Close',style: TextStyle(
              color: Colors.white,

            ),),
            
            ),
          )
      ],

    );
  }
  
  );  

}


button_sheet2(){

showModalBottomSheet(context: context, builder: (_){
return Padding(
  padding: const EdgeInsets.all(10.0),
  child: ListView(
  children: [ 
  Text('১. ইচ্ছা করে বমি করা',style: 
  TextStyle( 
    fontSize: 18,
  ),
  
  
  ),
  SizedBox(height: 5,),
  Text('২. বমির বেশির ভাগ মুখে আসার পর তা গিলে ফেলা',style: 
  TextStyle( 
    fontSize: 18,
  ),
  
  
  ),
  SizedBox(height: 5,),
  Text('৩. মেয়েদের মাসিক ও সন্তান প্রসবের পর ঋতুস্রাব',style: 
  TextStyle( 
    fontSize: 18,
  ),
  
  
  ),
  SizedBox(height: 5,),
  Text('৪. ইসলাম ত্যাগ করলে',style: 
  TextStyle( 
    fontSize: 18,
  ),
  
  
  ),
  SizedBox(height: 5,),
  Text('৫. গ্লুকোজ বা শক্তিবর্ধক ইনজেকশন বা সেলাইন দিলে',style: 
  TextStyle( 
    fontSize: 18,
  ),
  
  
  ),
  SizedBox(height: 5,),
  Text('৬. প্রস্রাব-পায়খানার রাস্তা দিয়ে ওষুধ বা অন্য কিছু শরীরে প্রবেশ করালে',style: 
  TextStyle( 
    fontSize: 18,
  ),
  
  
  ),
SizedBox(height: 5,),
  Text('৭. রোজাদারকে জোর করে কেউ কিছু খাওয়ালে',style: 
  TextStyle( 
    fontSize: 18,
  ),
  
  
  ),
  SizedBox(height: 5,),
  Text('৮. ইফতারের সময় হয়েছে ভেবে সূর্যাস্তের আগে ইফতার করলে',style: 
  TextStyle( 
    fontSize: 18,
  ),
  
  
  ),
  SizedBox(height: 5,),
  Text('৯. মুখ ভরে বমি করলে',style: 
  TextStyle( 
    fontSize: 18,
  ),
  
  
  ),
  SizedBox(height: 5,),
  Text('১০. ভুলবশত কোনো কিছু খেয়ে, রোজা ভেঙে গেছে ভেবে ইচ্ছা করে আরও কিছু খেলে',style: 
  TextStyle( 
    fontSize: 18,
  ),
  
  ),
SizedBox(height: 5,),
  Text('১১. বৃষ্টির পানি মুখে পড়ার পর তা খেয়ে ফেললে',style: 
  TextStyle( 
    fontSize: 18,
  ),
  
  
  ),
  SizedBox(height: 5,),
  Text('১২. কান বা নাক দিয়ে ওষুধ প্রবেশ করালে',style: 
  TextStyle( 
    fontSize: 18,
  ),
  
  
  ),
  SizedBox(height: 5,),
  Text('১৩. জিহ্বা দিয়ে দাঁতের ফাঁক থেকে ছোলা পরিমাণ কোনো কিছু বের করে খেয়ে ফেললে',style: 
  TextStyle( 
    fontSize: 18,
  ),
  
  
  ),
  SizedBox(height: 5,),
  Text('১৪. অল্প বমি মুখে আসার পর ইচ্ছাকৃতভাবে তা গিলে ফেললে',style: 
  TextStyle( 
    fontSize: 18,
  ),
  
  
  ),
  SizedBox(height: 5,),
  Text('১৫. রোজা স্মরণ থাকা অবস্থায় অজুতে কুলি বা নাকে পানি দেয়ার সময় ভেতরে পানি চলে গেলে।',style: 
  TextStyle( 
    fontSize: 18,
  ),
  
  
  ),
  ],
  
  ),
);

}
);

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
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Column(
                  
                  mainAxisAlignment: MainAxisAlignment.start,
                  
                  children: [ 
                    
                      
                     
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [ 
                          
                          Text('সাহরীর শেষ সময়',style: TextStyle( 
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 17, 0)
                          ),
                          ),
                          Text('ইফতারের সময়',style: TextStyle( 
                          fontSize: 22,
                           fontWeight: FontWeight.bold,
                           color: const Color.fromARGB(255, 0, 255, 8),
                          ),),
                        ],
                       ),
                
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                          
                        children: [ 
                            
                            Text(mydata["times"][widget.newindex]["sahri"],
                            style:
                            TextStyle( 
                              fontSize: 19,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                            Text(mydata["times"][widget.newindex]["ifter"],
                            style:
                            TextStyle( 
                              fontSize: 19,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                        ],
                      ),
                    ),
                    Row( 
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [ 
                  
                       Padding(
                         padding: const EdgeInsets.only(top: 100),
                         child: InkWell(
                          onTap: () {
                            buttom_sheet();
                          },
                          splashColor: const Color.fromARGB(255, 140, 136, 136),
                           child: Ink(
                           height: 130,
                           width: 150,
                           decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow( 
                                color: Colors.grey,
                                offset: Offset(4, 4),
                                blurRadius: 5,
                                spreadRadius: 5
                              )
                            ]
                           
                            
                           ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [ 
                                  Image.asset('asset/images/moon_icon.png',width: 100,height: 70,),
                                  Text('রোজার নিয়ত',style: TextStyle( 
                              
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                  ),)
                                ],
                              
                              ),
                            )
                           ),
                         ),
                       ),





                       Padding(
                         padding: const EdgeInsets.only(top: 100),
                         child: InkWell(
                          onTap: () {
                            button_sheet2();
                          },
                          splashColor: const Color.fromARGB(255, 140, 136, 136),
                           child: Ink(
                           height: 130,
                           width: 150,
                           decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow( 
                                color: Colors.grey,
                                offset: Offset(4, 4),
                                blurRadius: 5,
                                spreadRadius: 5
                              )
                            ]
                           
                            
                           ),
                            child: Padding(
                              padding: const EdgeInsets.all(9),
                              child: Column(
                                children: [ 
                                  Image.asset('asset/images/alert_icon.png',width: 100,height: 60,),
                                  Text('রোজা ভাঙ্গার',style: TextStyle( 
                              
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                  ),),
                                  Text('কারন',style: TextStyle( 
                              
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                  ),),
                                ],
                              
                              ),
                            )
                           ),
                         ),
                       )
                      ],
                    ),

                   
                    /*


 //2nd row
 //2nd row
                   //2nd row



                    */
                     Row( 
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [ 
                  
                       Padding(
                         padding: const EdgeInsets.only(top: 30),
                         child: Container(
                         height: 130,
                         width: 150,
                         decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow( 
                              color: Colors.grey,
                              offset: Offset(4, 4),
                              blurRadius: 5,
                              spreadRadius: 5
                            )
                          ]
                         
                          
                         ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [ 
                                Image.asset('asset/images/mosjid_icon.png',width: 100,height: 70,),
                                SizedBox(height: 5,),
                                Text('রোজার ফজিলত',style: TextStyle( 
                            
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                                ),)
                              ],
                            
                            ),
                          )
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top: 30),
                         child: Container(
                         height: 130,
                         width: 150,
                         decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow( 
                              color: Colors.grey,
                              offset: Offset(4, 4),
                              blurRadius: 5,
                              spreadRadius: 5
                            )
                          ]
                         
                          
                         ),
                          child: Padding(
                            padding: const EdgeInsets.all(9),
                            child: Column(
                              children: [ 
                                Image.asset('asset/images/star_icon.png',width: 100,height: 75,),
                                Text('ইফতারের দোয়া',style: TextStyle( 
                            
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                                ),),
                                
                              ],
                            
                            ),
                          )
                         ),
                       )
                      ],
                    ),
                    SizedBox(height: 30,),
                    Container( 
                       height: 50,
                         width: 200,
                         decoration: BoxDecoration(
                          color: Color.fromARGB(255, 47, 118, 224),
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow( 
                              color: Colors.grey,
                              offset: Offset(4, 4),
                              blurRadius: 5,
                              spreadRadius: 5
                            )
                          ]
                         
                          
                         ),
                       child: Column( 
                     children: [ 
                      SizedBox(height: 8,),
                      Text('ইসলামিক কুইজ',style:  TextStyle( 

                        color: Colors.white,
                         fontSize: 20,
                         fontWeight: FontWeight.bold
                      ),)
                     ],

                       ),
                    )
                  ],
                  
                ),
              ),
            );
          }
        },
      ),
    );
  }
}

