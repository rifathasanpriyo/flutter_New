import 'package:flutter/material.dart';
import 'package:flutter_practice_1/quiz/answer_card.dart';
import 'package:flutter_practice_1/quiz/question_model.dart';

class QuizeScreen extends StatefulWidget {
  const QuizeScreen({super.key});

  @override
  State<QuizeScreen> createState() => _QuizeScreenState();
}

int? seletectedAnswerIndex;
int questionindex=0;
int score=0;




class _QuizeScreenState extends State<QuizeScreen> {
  @override
  final question=questions[questionindex];
  
  void pickanswer(int value){
 setState(() {
   seletectedAnswerIndex=value;
    final question=questions[questionindex];
    if(seletectedAnswerIndex==question.correctanswer)
    {

      score++;
    }


 });

  }
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar( 
          title: Text('Quiz'),
          
        ),  
      body: Column( 
        children: [ 
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(question.questions,style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800
            ),),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: question.options.length,
            itemBuilder: (context,index){
               return InkWell(
                onTap: seletectedAnswerIndex==null?()=>pickanswer(index):null,
                 child: AnswerCard(
                  currentIndex: index,
                  question:question.options[index],
                  isSelected:seletectedAnswerIndex==index,
                  seletectedAnswerIndex:seletectedAnswerIndex,
                  correctanswerIndex:question.correctanswer,
                 
                 
                 ),
               );

            }
          
          
          )
        ],
      ),
      );
    
  }
}