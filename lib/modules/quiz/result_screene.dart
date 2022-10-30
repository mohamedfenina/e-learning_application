import 'package:app_stage_project/data/question_list.dart';
import 'package:app_stage_project/layout/home_layout.dart';
import 'package:app_stage_project/modules/courses/courses_screene.dart';
import 'package:app_stage_project/modules/quiz/algorithm_quiz.dart';
import 'package:flutter/material.dart';

class ResultScreene extends StatefulWidget {
  final int score;

  const ResultScreene(this.score,{Key? key}) : super(key: key);


  @override
  _ResultScreeneState createState() => _ResultScreeneState();
}

class _ResultScreeneState extends State<ResultScreene> {
  Color mainColor = Color(0xFF252c4a);
  Color secondColor = Color(0xFF117eeb);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: mainColor,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeLayout()));
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        centerTitle: true,

      ),
      backgroundColor: mainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('congratulation',style: TextStyle(
              color: Colors.white,
              fontSize: 38,
              fontWeight: FontWeight.bold,

            ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Your Scoore is :',style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.w400,

            ),
            ),
            SizedBox(
              height: 40,
            ),
            Text('${widget.score} ',
              style:TextStyle(
                color: Colors.orange,
                fontSize: 80,
                fontWeight: FontWeight.bold
              ) ,),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 150,
              height: 40,
              child: MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context) => AlgorithmQuiz()));
              },
                elevation: 0,
                height: 40,
              color: Colors.orange,
                textColor: Colors.white,
                child: Text('Try Again',
                style: TextStyle(
                 fontSize: 20,
                ),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
