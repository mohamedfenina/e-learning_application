import 'package:flutter/material.dart';
import 'package:app_stage_project/modules/language/cross/examples_screene.dart';
import 'package:app_stage_project/shared/components/components.dart';


class CsharpDescreption extends StatelessWidget {
  const CsharpDescreption({Key? key}) : super(key: key);

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
                text: 'C Sharp : \n',
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
                        'C#  est un langage de'
                            ' programmation orientée objet, commercialisé par Microsoft'
                            ' depuis 2002 et destiné à développer sur la plateforme Microsoft .NET.'
                        'Il est dérivé du C++ et très proche du Java dont il reprend la syntaxe'
                            ' générale ainsi que les concepts, y ajoutant des notions telles que '
                            'la surcharge des opérateurs, les indexeurs et les délégués. Il est utilisé'
                            ' notamment pour développer des applications web sur la plateforme ASP.NET.'
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
