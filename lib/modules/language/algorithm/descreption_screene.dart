import 'package:app_stage_project/modules/language/algorithm/advantage_screene.dart';
import 'package:app_stage_project/modules/language/algorithm/algorithm_screene_choices.dart';
import 'package:app_stage_project/modules/language/oop/examples_screene.dart';
import 'package:app_stage_project/shared/components/components.dart';
import 'package:flutter/material.dart';

class DescreptionScreene extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>AlgorithScrreeneChoices(),),);
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
                text: 'Algorithms : \n',
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

                        'An algorithm is a set of instructions'
                            ' for solving a problem or accomplishing a task.'
                            ' One common example of an algorithm is a recipe,'
                            ' which consists of specific instructions for'
                            ' preparing a dish or meal. '
                            'Every computerized device '
                            'uses algorithms to perform '
                            'its functions.',
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AlgorithmAdvantageScreene(),),);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Advatages',
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
