import 'package:app_stage_project/modules/language/cross/crossplatforme-screene_choices.dart';
import 'package:app_stage_project/modules/language/cross/examples_screene.dart';
import 'package:app_stage_project/shared/components/components.dart';
import 'package:flutter/material.dart';

class CrossDesadvantage extends StatelessWidget {
  const CrossDesadvantage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>CrossScrenneChoices(),),);
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,

        ),
        centerTitle: true,
        title: Text('Desadvantages',
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
                text: 'Cross Platforme desadvantages: \n',
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
                        'Performance challenges: Cross-platform apps have integration challenges '
                            'with their target operating systems. It is because of inconsistent'
                            ' communication between the device\'s native and non-native components. '
                            'It affects the optimum performance of applications.',
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CrossExample(),),);
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
