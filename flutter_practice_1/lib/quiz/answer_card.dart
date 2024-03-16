import 'package:flutter/material.dart';
import 'package:flutter_practice_1/quiz/question_model.dart';

class AnswerCard extends StatefulWidget {
  

  AnswerCard({
    
    required this.question,
    required this.correctanswerIndex,
    required this.currentIndex,
    required this.isSelected,
    required this.seletectedAnswerIndex,
    
    });
    final String question;
  final bool isSelected;
  final int currentIndex;
  final int? correctanswerIndex;
  final int? seletectedAnswerIndex;

  @override
 
  State<AnswerCard> createState() => _AnswerCardState();
}

class _AnswerCardState extends State<AnswerCard> {
  @override
 late bool isCorrectAnswer;
 late bool isWorrngAnswer;
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
     isCorrectAnswer= widget.currentIndex==widget.correctanswerIndex;
     isWorrngAnswer=!isCorrectAnswer && widget.isSelected;
  }
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
          
          child: 
          widget.seletectedAnswerIndex!=null ?
          Container( 
           width: 10,
          height: 60,
           padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
           color: Color.fromARGB(171, 255, 236, 236),
           borderRadius: BorderRadius.circular(10),
           border: Border.all( 
            width: 2,
            color: isCorrectAnswer?Colors.green:
            (isWorrngAnswer?Colors.red:Colors.red)
           )
          ),
          child: Row( 
           children: [ 
            Text(widget.question,style: TextStyle(
             fontWeight: FontWeight.w600

            ),),

           ],

          ),
                ) : Container( 
           width: 10,
          height: 60,
           padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
           color: Color.fromARGB(171, 255, 236, 236),
           borderRadius: BorderRadius.circular(10),
           border: Border.all( 
            width: 2,
           )
          ),
          child: Row( 
           children: [ 
            Text(widget.question,style: TextStyle(
             fontWeight: FontWeight.w600

            ),),

           ],

          ),
                ),
        );

    
  }
}