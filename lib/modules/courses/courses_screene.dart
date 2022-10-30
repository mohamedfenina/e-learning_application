import 'package:app_stage_project/modules/quiz/algorithm_quiz.dart';
import 'package:app_stage_project/modules/quiz/flutter_quiz.dart';
import 'package:app_stage_project/modules/quiz/oop_quiz.dart';
import 'package:app_stage_project/modules/quiz/swift-quiz.dart';
import 'package:app_stage_project/modules/quiz/xamarin_qwuiz.dart';

import 'package:app_stage_project/shared/components/components.dart';
import 'package:flutter/material.dart';

class CoursesScreene extends StatelessWidget {
  int scoore = 10;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),

           QuizButton(
              image: 'assets/images/flutter.png',
              title: 'Flutter',
              status: 'New Quiz',
              done: "Easy",
              pressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>FlutterQuiz(),),);
              }
            ),
            SizedBox(
              height: 20,
            ),
            QuizButton(
             image: 'assets/images/algorithm.PNG',
               title: 'Algorithm',
               status: 'New Quiz',
               done: 'Hard',
             color: Colors.red,
             pressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>AlgorithmQuiz(),),);
             }
           ),
            SizedBox(
              height: 20,
            ),
            QuizButton(
              image: 'assets/images/oop.png',
              title: 'OOP',
              status: 'New Quiz',
              done: "Medium",
              color: Colors.orange,
              pressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>OopQuiz(),),);
              }
            ),
            SizedBox(
              height: 20,
            ),
            QuizButton(
              image: 'assets/images/swift.png',
                title: 'Swift',
                status: 'New Quiz',
                done: "Easy",
              pressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SwiftQuiz(),),);

              }
            ),
            SizedBox(
              height: 20,
            ),

            QuizButton(
                image: 'assets/images/xamarin.png',
                title: 'Xamarin',
                status: 'New Quiz',
                done: "Easy",
                pressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>XamarinQuiz(),),);
                }
            ),
            SizedBox(
              height: 20,
            ),

          ],

        ),
      ),
    );
  }
}
