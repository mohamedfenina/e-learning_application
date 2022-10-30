import 'package:app_stage_project/modules/language/cross/crossplatforme-screene_choices.dart';
import 'package:app_stage_project/modules/language/cross/desadvantage_screene.dart';
import 'package:app_stage_project/shared/components/components.dart';
import 'package:flutter/material.dart';

class CrossAdvantage extends StatelessWidget {
  const CrossAdvantage({Key? key}) : super(key: key);

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
        title: Text('Advantages',
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
                text: 'Cross Platforme Advantages : \n',
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

                        'The benefit of a cross-platform software app or'
                            ' program is that you can use the same program,'
                            ' whether on a Windows PC or logging in from your laptop or smartphone.'
                            ' The Microsoft Office suite of applications, including Word, Excel, '
                            'and PowerPoint, is available on Windows, Mac OS, iOS (iPhone/iPad),'
                            ' and Android. While there are differences based on how the platforms work,'
                            ' you\'ll have a similar experience within the application between all of your devices.',
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CrossDesadvantage(),),);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Desadvantages',
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
