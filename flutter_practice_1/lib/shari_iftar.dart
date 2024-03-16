import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter_practice_1/quiz/quiz_screen.dart';

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
  
  ),
);

}
);

}


buttom_sheet3(){
showModalBottomSheet(context: context, builder: (_){

return Padding(
  padding: const EdgeInsets.all(8.0),
  child: ListView(
    children: [ 
   
    Text('রোজা রাখার ৫ ফজিলত',style: 
    TextStyle( 
      fontSize: 20,
      fontWeight: FontWeight.w700
    ),
    
    
    ),
   SizedBox(height: 5,),
  Text('হুজুর সাল্লাল্লাহু তাআলা আলাইহি ওয়া সাল্লাম বিভিন্ন হাদিসে রোজা রাখার ফজিলত ঘোষণা করেছেন। সেসব ফজিলতের হাদিস অসংখ্য। এখানে কয়েকটি ফজিলতের কথা উল্লেখ করা হলো।',style: 
  TextStyle( 
    fontSize: 15,
  ),
  
  
  ),
  SizedBox(height: 5,),
  Text('১. হযরত আবু হুরাইরা রাজিয়াল্লাহু তায়ালা আনহু থেকে বর্ণিত। হুজুর সাল্লাল্লাহু তাআলা আলাইহি ওয়া সাল্লাম ইরশাদ করেন,রোজা হলো ঢাল। (অর্থাৎ জাহান্নামের আগুন থেকে বাঁচার ঢাল) সুতরাং কেউ যেনো নির্লজ্জ কাজ ও মূর্খপনা কথা না বলে। যদি কেউ তার সাথে ঝগড়া করতে আসে বা তাকে গালি দেয়, তখন যেনো সে বলে দেয় আমি রোজাদার। আমার সত্তার কসম! রোজাদারের মুখের দুর্গন্ধ আল্লাহ তাআলার কাছে মেশকের সুঘ্রাণ থেকেও বেশি উৎকৃষ্ট। কারণ, সে আমার জন্য তার খাবার, পানীয় ও শারীরিক চাহিদা ছেড়ে দিয়েছে। (সুতরাং) রোজা আমার জন্য আর আমিই সেটির প্রতিদান দেবো। (বুখারি শরিফ: হাদিস- ১৭৯৫)',style: 
  TextStyle( 
    fontSize: 15,
  ),
  
  
  ),
  SizedBox(height: 5,),
  Text('২. হযরত সাহল রাজিয়াল্লাহু তাআলা আনহু থেকে বর্ণিত। হুজুর সাল্লাল্লাহু তাআলা আলাইহি ওয়া সাল্লাম বলেন, জান্নাতে রায়য়ান নামে একটি দরজা আছে। কেয়ামতের দিন রোজাদাররা উক্ত দরজা দিয়ে (জান্নাতে) প্রবেশ করবে। তারা ছাড়া অন্য কেউ উক্ত দরজা দিয়ে (জান্নাতে) প্রবেশ করতে পারবে না। (কেয়ামতের দিন) রোজাদাররা কোথায় এই বলে ডাকা হবে। রোজাদাররা দাঁড়াবে। তারা ছাড়া অন্য কেউ উক্ত দরজা দিয়ে প্রবেশ করতে পারবে না। যখন তারা উক্ত দরজা দিয়ে (জান্নাতে) প্রবেশ করবে, তখন সেটিকে বন্ধ করে দেয়া হবে। কিছুতেই অন্য কেউ আর প্রবেশ করতে পারবে না। (বুখারি শরিফ: হাদিস- ১৭৯৭)',style: 
  TextStyle( 
    fontSize: 15,
  ),
  
  
  ),
  SizedBox(height: 5,),
  Text('৩. হযরত আবু হুরাইরা রাজিয়াল্লাহু তাআলা আনহু থেকে বর্ণিত। হুজুর সাল্লাল্লাহু তাআলা আলাইহি ওয়া সাল্লাম ইরশাদ করেন, রোজাদারদের দুটি আনন্দের সময় আছে যে দুটি সময়ে তারা আনন্দ করবে। একটি হলো, ইফতারের সময়। অপরটি হলো, (পরকালে) আল্লাহ তাআলার সাথে সাক্ষাতের সময়। (মুসলিম শরিফ: হাদিস- ১১৫১)',style: 
  TextStyle( 
    fontSize: 15,
  ),
  
  
  ),

  SizedBox(height: 5,),
  Text('৪. হযরত আবু হুরাইরা রাজিয়াল্লাহু তাআলা আনহু থেকে বর্ণিত। হুজুর সাল্লাল্লাহু তাআলা আলাইহি ওয়া সাল্লাম ইরশাদ করেন, যে ব্যক্তি ঈমান অবস্থায় আল্লাহ তাআলার সন্তুষ্টি ও সওয়াবের নিয়তে রমজানের রোজা রাখবে, তার অতীতের সমস্ত গুনাহ মাফ করে দেয়া হবে। (বুখারি শরিফ: হাদিস- ১৮০২)',style: 
  TextStyle( 
    fontSize: 15,
  ),
  
  
  ),

  SizedBox(height: 5,),
  Text('৫. হযরত আবু হুরাইরা রাজিয়াল্লাহু তাআলা আনহু থেকে বর্ণিত। হুজুর সাল্লাল্লাহু তাআলা আলাইহি ওয়া সাল্লাম ইরশাদ করেন, ‘পাঁচ ওয়াক্ত নামাজ, এক জুমা থেকে অপর জুমা, এক রমজান থেকে অপর রমজান (অর্থাৎ যারা পাঁচ ওয়াক্ত নামাজ আদায় করবে, জুমার নামাজ আদায় করবে, রমজানের রোজা রাখবে) মধ্যবর্তী সময়ের (গুনাহের) জন্য কাফ্ফারা হয়ে যাবে। শর্ত হলো, (উক্ত সময়গুলোতে) কবিরা গুনাহসমূহ থেকে বিরত থাকতে হবে।’ (মুসলিম শরিফ: হাদিস- ২৩৩)',style: 
  TextStyle( 
    fontSize: 15,
  ),
  
  
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
  ),
);

});

}

buttom_sheet4(){
showModalBottomSheet(context: context, builder: (_){
    
    return ListView( 
      children: [
        //SizedBox(height: 15,) ,
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text('بِسْمِ الله - اَللَّهُمَّ لَكَ صُمْتُ وَ عَلَى رِزْقِكَ اَفْطَرْتُ',style: 
             TextStyle( 
              fontSize: 18,
              fontWeight: FontWeight.w700
             )
            
             ,),
             
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text('বাংলা উচ্চারণ : ‘বিসমিল্লাহি আল্লাহুম্মা লাকা সুমতু, ওয়া আ’লা রিযক্বিকা আফত্বারতু।',style: 
             
             TextStyle(
              fontSize: 17,

             )
             ,),
           ),

           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text('অর্থ : ‘আল্লাহর নামে (শুরু করছি); হে আল্লাহ! আমি তোমারই জন্যে রোজা রেখেছি এবং তোমারই দেওয়া রিজিক দ্বারা ইফতার করছি। (আবু দাউদ মুরসাল, মিশকাত)',style: 
             
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
 buttom_sheet5(){
showModalBottomSheet(context: context, builder: (_){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ListView(
      children: [ 
         Text('** প্রশ্ন : কত হিজরীতে সিয়াম ফরজ হয় ?',style: 
               TextStyle( 
                fontSize: 18,
                fontWeight: FontWeight.w700
               )
               ,),
               Text('উত্তর : দ্বিতীয় হিজরিতে।',style: 
               TextStyle( 
                fontSize: 18,
                fontWeight: FontWeight.w700,color: Color.fromARGB(255, 71, 200, 76)
               )
               ,),
               SizedBox(height: 5,),
               Text('** প্রশ্ন : সিয়াম ইসলামের কত নম্বর স্তম্ভ ?',style: 
               TextStyle( 
                fontSize: 18,
                fontWeight: FontWeight.w700
               )
               ,),
               Text('উত্তর : চতুর্থ।',style: 
               TextStyle( 
                fontSize: 18,
                fontWeight: FontWeight.w700,color: Color.fromARGB(255, 71, 200, 76)
               )
               ,),
                SizedBox(height: 5,),
               Text('** প্রশ্ন : মাহে রমজানের পর সর্বোত্তম নফল সিয়াম কোনটি ?',style: 
               TextStyle( 
                fontSize: 18,
                fontWeight: FontWeight.w700
               )
               ,),
               Text('উত্তর : আশুরার রোজা।',style: 
               TextStyle( 
                fontSize: 18,
                fontWeight: FontWeight.w700,color: Color.fromARGB(255, 71, 200, 76)
               )
               ,),
                SizedBox(height: 5,),
               Text('** প্রশ্ন : লাইলাতুল কদর কখন হয় ?',style: 
               TextStyle( 
                fontSize: 18,
                fontWeight: FontWeight.w700
               )
               ,),
               Text('উত্তর : রমজানের শেষ দশকের যে কোন বিজোড় রাতে।',style: 
               TextStyle( 
                fontSize: 18,
                fontWeight: FontWeight.w700,color: Color.fromARGB(255, 71, 200, 76)
               )
               ,),
                SizedBox(height: 5,),
               Text('** প্রশ্ন : তারাবির নামাজ আদায় হুকুম কি ?',style: 
               TextStyle( 
                fontSize: 18,
                fontWeight: FontWeight.w700
               )
               ,),
               Text('উত্তর : সুন্নতে মুয়াক্কাদা।',style: 
               TextStyle( 
                fontSize: 18,
                fontWeight: FontWeight.w700,color: Color.fromARGB(255, 71, 200, 76)
               )
               ,),
                SizedBox(height: 5,),
               Text('** প্রশ্ন : সপ্তাহে কোন কোন দিন রোজা রাখা সুন্নত ?',style: 
               TextStyle( 
                fontSize: 18,
                fontWeight: FontWeight.w700
               )
               ,),
               Text('উত্তর : সোমবার ও বৃহস্পতিবার।',style: 
               TextStyle( 
                fontSize: 18,
                fontWeight: FontWeight.w700,color: Color.fromARGB(255, 71, 200, 76)
               )
               ,),
                SizedBox(height: 5,),
               Text('** প্রশ্ন : রোজাদারের মেসওয়াক করার হুকুম কি ?',style: 
               TextStyle( 
                fontSize: 18,
                fontWeight: FontWeight.w700
               )
               ,),
               Text('উওর : সুন্নাহ্।',style: 
               TextStyle( 
                fontSize: 18,
                fontWeight: FontWeight.w700,color: Color.fromARGB(255, 71, 200, 76)
               )
               ,),
      ],
    ),
  );
}
);
 }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration( 
          image: DecorationImage(image: AssetImage('asset/images/RamdanBackground2.png'),
          fit:BoxFit.cover,
          // colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), 
          // BlendMode.darken
          // )
          ),
          
        ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
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
                      
                        Text(mydata["times"][widget.newindex]["tarik"],style:  TextStyle( 
      
                          fontSize: 20,
                        ),),
                       SizedBox(height: 7,),
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
                           child: InkWell(
                            onTap: () {
                              buttom_sheet3();
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
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top: 30),
                           child: InkWell(
                            onTap: () {
                              buttom_sheet4();
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
                                    Image.asset('asset/images/star_icon.png',width: 100,height: 75,),
                                    Text('ইফতারের দোয়া',style: TextStyle( 
                                
                                      fontSize: 18,
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
                      SizedBox(height: 30,),
      
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            buttom_sheet5();
                          },
                          splashColor: const Color.fromARGB(255, 140, 136, 136),
                          child: Ink( 
                             height: 50,
                               width: 210,
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
                            Text('ইসলামিক প্রশ্ন ও উত্তর',style:  TextStyle( 
                          
                              color: Colors.white,
                               fontSize: 20,
                               fontWeight: FontWeight.bold
                            ),)
                           ],
                          
                             ),
                          ),
                        ),
                      )
                    ],
                    
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}

