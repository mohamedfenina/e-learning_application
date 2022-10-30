import 'package:app_stage_project/layout/home_layout.dart';
import 'package:app_stage_project/modules/language/kotlin/kotlin_screnne_choices.dart';
import 'package:app_stage_project/shared/components/components.dart';
import 'package:flutter/material.dart';

class KotlinDescreptionScreen extends StatelessWidget {
  const KotlinDescreptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>KotlinScreenChoices(),),);
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
                text: 'Kotlin : \n',
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
                        'Kotlin is an open-source, statically-typed programming language '
                            'that supports both object-oriented and functional programming.'
                            ' Kotlin provides similar syntax and concepts from other '
                            'languages, including C#, Java, and Scala, among many others.'
                            ' Kotlin does not aim to be unique—instead, it draws'
                            ' inspiration from decades of language development. '
                            'It exists in variants that target the JVM (Kotlin/JVM),'
                            ' JavaScript (Kotlin/JS), and native code (Kotlin/Native).'
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

    );
  }
}
