import 'package:app_stage_project/layout/home_layout.dart';
import 'package:app_stage_project/modules/quiz/algorithm_quiz.dart';
import 'package:app_stage_project/profile/register_screene.dart';
import 'package:app_stage_project/tasks/tasks_screene.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: RegisterScreene(),
    );
  }
}
