import 'package:app_stage_project/modules/language/algorithm/algorithm_screene_choices.dart';
import 'package:app_stage_project/shared/components/components.dart';
import 'package:flutter/material.dart';

class AlgorithmCharacteristicsScreene extends StatelessWidget {
  const AlgorithmCharacteristicsScreene({Key? key}) : super(key: key);

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
        title: Text('Characteristics',
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
                text: 'Characteristics of Algorithms : \n',
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

                       '1. Precision – the steps are precisely stated(defined).\n'

                       '2. Uniqueness – results of each step are uniquely definedand only depend on the input and the result of the precedingsteps.\n'

                       '3. Finiteness – the algorithm stops after a finite number ofinstructions are executed.\n'

                      '4. Input – the algorithm receives input.\n'

                        '5. Output – the algorithm produces output.\n'

                        '6. Generality – the algorithm applies to a set ofinputs.\n',
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
