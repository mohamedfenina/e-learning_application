import 'package:app_stage_project/layout/home_layout.dart';
import 'package:app_stage_project/modules/language/algorithm/advantage_screene.dart';
import 'package:app_stage_project/modules/language/algorithm/characteristics_screene.dart';
import 'package:app_stage_project/modules/language/algorithm/desadvantage_screene.dart';
import 'package:app_stage_project/modules/language/algorithm/descreption_screene.dart';
import 'package:app_stage_project/modules/language/oop/advantages_screene.dart';
import 'package:app_stage_project/modules/language/oop/examples_screene.dart';
import 'package:app_stage_project/modules/language/oop/oop_description_screene.dart';
import 'package:app_stage_project/shared/components/components.dart';
import 'package:flutter/material.dart';

class AlgorithScrreeneChoices extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,

        centerTitle: true,
        backgroundColor: Colors.grey[200],
        leading:
        IconButton(

          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeLayout(),),);
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        title: Text('Algorithms',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 25
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buttonDetails(pressed: (){
                Navigator.push(context,
                  MaterialPageRoute(builder:(context) =>DescreptionScreene(),),);
              },
                  text: 'Description',
                  image: 'assets/images/descreption.png'
              ),
              SizedBox(height: 25,),

              buttonDetails(
                pressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AlgorithmAdvantageScreene(),),);
                },
                text: 'Advantages',
                  image: 'assets/images/advantage.png'
              ),
              SizedBox(
                height: 25,
              ),

              buttonDetails(
                pressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DesadvantageAlgorithmScreene(),),);
                },
                text: 'Disdvantages',
                  image: 'assets/images/disadvantage.png'
              ),
              SizedBox(
                height: 25,
              ),
              buttonDetails(
                pressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AlgorithmCharacteristicsScreene(),),);
                },
                text: 'characteristics',
                  image: 'assets/images/characteristics.png'
              ),
            ],
          ),
        ),
      ),

    );
  }
}
