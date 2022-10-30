import 'package:app_stage_project/modules/language/cross/examples_screene.dart';
import 'package:app_stage_project/shared/components/components.dart';
import 'package:flutter/material.dart';

class DartDescreption extends StatelessWidget {
  const DartDescreption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>CrossExample(),),);
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
                text: 'Dart : \n',
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
                        'Dart est un langage de programmation optimisé '
                            'pour les applications sur plusieurs plateformes. '
                            'Il est développé par Google et est utilisé pour'
                            ' créer des applications mobiles, de bureau, '
                            'de serveur et web.'
                        'Dart est un langage orienté objet, '
                            'basé sur la classe, récupérateur de mémoire avec'
                            ' une syntaxe de type C. Dart peut se compiler en'
                            ' code natif ou en JavaScript. Il prend en charge '
                            'les interfaces, les mixins, les classes abstraites,'
                            ' les génériques réifiés et l\'inférence de type.'
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

      ),

    );
  }
}
