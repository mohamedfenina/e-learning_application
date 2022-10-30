import 'package:app_stage_project/layout/home_layout.dart';
import 'package:app_stage_project/modules/language/java/descreption_screene.dart';
import 'package:app_stage_project/modules/language/java/history_screen.dart';
import 'package:app_stage_project/shared/components/components.dart';
import 'package:flutter/material.dart';

class JavaScreeneChoises extends StatelessWidget {


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
        title: Text('Java',
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>JavaDescreption(),),);
              },
                  text: 'Description',
                  image: 'assets/images/descreption.png'),
              SizedBox(height: 25,),
              buttonDetails(pressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HistoryScreen(),),);

              }
              , text: 'History',
                  image: 'assets/images/history.png'
              ),


            ],
          ),
        ),
      )
      ,
    );
  }
}
