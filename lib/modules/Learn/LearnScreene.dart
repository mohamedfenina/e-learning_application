

import 'package:app_stage_project/modules/language/algorithm/algorithm_screene_choices.dart';
import 'package:app_stage_project/modules/language/cross/crossplatforme-screene_choices.dart';
import 'package:app_stage_project/modules/language/data%20structurs/data_screene_choices.dart';
import 'package:app_stage_project/modules/language/git/git_screene_choices.dart';
import 'package:app_stage_project/modules/language/java/java_screene_choices.dart';
import 'package:app_stage_project/modules/language/kotlin/kotlin_screnne_choices.dart';
import 'package:app_stage_project/modules/language/oop/oop_screene_choices.dart';
import 'package:app_stage_project/modules/language/swift/swift_screene_choises.dart';

import 'package:app_stage_project/shared/components/components.dart';
import 'package:flutter/material.dart';

class LearnScreene extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.grey[200],

        body:
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              Row(

                  children: [

                    SizedBox(width: 15,),
                    textTitle(text: 'start',),
                  ],
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    languageButton(
                      pressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder:(context) =>OopScreeneChoices(),),);

                      },
                        image: 'assets/images/oop.png',
                        text: 'OOP',
                      h: 15,

                    ),

                    languageButton(
                      pressed: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder:(context) =>AlgorithScrreeneChoices(),),);

                      },
                      image: 'assets/images/algorithm.PNG',
                      text: 'Algorithms',
                      h: 15,
                    ),

                    languageButton(
                      pressed: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder:(context) =>DataScreene(),),);

                      },
                      image: 'assets/images/data.png',
                      text: 'Data Structurs',
                    ),

                    languageButton(
                      pressed: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder:(context) =>GitScreene(),),);

                      },
                      image: 'assets/images/git.jpg',
                      text: 'Git',
                      h: 15,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  SizedBox(width: 15,),
                  textTitle(text: 'Developpement Mobile',),


                ],

              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    languageButton(
                      pressed: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder:(context) =>JavaScreeneChoises(),),);

                      },
                      image: 'assets/images/java.jpg',
                      text: 'Java',
                      h: 15,
                    ),

                    languageButton(
                      pressed: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder:(context) =>KotlinScreenChoices(),),);

                      },
                      image: 'assets/images/kotlin.png',
                      text: 'Kotlin',
                      h: 15,
                    ),

                    languageButton(
                      pressed: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder:(context) =>SwiftScrenneChoices(),),);

                      },
                      image: 'assets/images/swift.png',
                      text: 'Swift',
                      h: 15,
                    ),


                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(

                children: [
                  SizedBox(width: 15,),
                  textTitle(text: 'New Technologie',),
                ],

              ),
              SizedBox(
                height: 10,
              ),
              languageButton(
                pressed: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder:(context) =>CrossScrenneChoices(),),);

                },
                  image: 'assets/images/cross.png',
                  text: 'Cross Platforme',
                height: 260,
                width: 250,
                imageheight: 200,
                alignment: CrossAxisAlignment.center,
                h: 15
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
    );
  }
}
