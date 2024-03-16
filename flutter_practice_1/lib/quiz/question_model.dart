class QuestionModel
{
final String questions;
final List<String>options;
final int correctanswer;
const QuestionModel({
 required this.questions,
 required this.options,
 required this.correctanswer,

});

}

const List<QuestionModel>questions=[
QuestionModel(
  questions: '১. প্রশ্ন : কত হিজরীতে সিয়াম ফরজ হয় ?', 
  options: [
   'প্রথম হিজরিতে',
   ' দ্বিতীয় হিজরিতে',
   ' তৃতীয় হিজরিতে',
   ' চতুর্থ হিজরিতে'

  ], 
  correctanswer: 1,
  ),
  QuestionModel(
  questions: '২. প্রশ্ন : মাহে রমজানের পর সর্বোত্তম নফল সিয়াম কোনটি ?', 
  options: [
   'প্রফেত মুহাম্মদ( সা:) এর জন্য সুন্নত সিয়াম',
   ' ইতিকাফের সময়ের সিয়াম',
   ' আশুরার রোজা',
   ' ষড়ের সোমের সিয়াম'

  ], 
  correctanswer: 2,
  )

];