import 'package:app_stage_project/layout/home_layout.dart';
import 'package:app_stage_project/modules/language/java/history_screen.dart';
import 'package:app_stage_project/modules/language/java/java_screene_choices.dart';
import 'package:app_stage_project/shared/components/components.dart';
import 'package:flutter/material.dart';

class JavaDescreption extends StatelessWidget {
  const JavaDescreption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>JavaScreeneChoises(),),);
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,

        ),
        centerTitle: true,
        title: Text('Descreption',
          style: TextStyle(
            fontSize:30,
            color: Colors.black,

          ),
        ),
      ),
      body:

      Padding(
        padding: const EdgeInsets.only(
          top: 20,
          bottom: 20,
          left: 10,
          right: 10,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              textOfIndexPages(
                text: 'Java : \n',
                size: 25,
                weight: FontWeight.w600,
                color: Colors.black,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      textOfIndexPages(
                        text:
                        'Java is an object-oriented programming language '
                            'that produces software for multiple platforms.'
                            ' When a programmer writes a Java application, '
                            'the compiled code (known as bytecode) runs on most'
                            ' operating systems (OS), including Windows, Linux and '
                            'Mac OS. Java derives much of its syntax from the C and '
                            'C++ programming languages.'
                        ,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          color: Colors.blue,
          child: MaterialButton(
            height: 50,
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HistoryScreen(),),);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('History',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white
                  ),
                ),SizedBox(
                  width: 20,
                ),
                Icon(Icons.arrow_forward_ios,
                  color: Colors.white,

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
