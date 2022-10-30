import 'package:app_stage_project/modules/language/oop/examples_screene.dart';
import 'package:app_stage_project/modules/language/oop/oop_screene_choices.dart';
import 'package:app_stage_project/shared/components/components.dart';
import 'package:flutter/material.dart';

class OopDescreptionScreene extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>OopScreeneChoices(),),);
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
                  text: 'Object-oriented programming : \n',
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
                          text: 'OOP is a programming paradigm based'
                              ' on the concept of "objects", which'
                              ' can contain data and code :\n'
                              '-data in the form of fields'
                              ' (often known as attributes'
                              ' or properties),\n'
                              '-and code,'
                              ' in the form of procedures'
                              ' (often known as methods).\n\n'
                              'A feature of objects is that an object\'s'
                              ' own procedures can access and often'
                              ' modify the data fields of itself\n'
                              '(objects have a notion of this or self).\n'
                              'In OOP, computer programs are designed'
                              ' by making them out of objects that interact'
                              ' with one another.\n'
                              'OOP languages are diverse,'
                              ' but the most popular ones are class-based,'
                              ' meaning that objects are instances of classes,'
                              ' which also determine their types.',
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ExamplesScreene(),),);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Examples',
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
