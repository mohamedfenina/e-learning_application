import 'package:app_stage_project/data/question_list.dart';
import 'package:app_stage_project/layout/home_layout.dart';
import 'package:app_stage_project/modules/courses/courses_screene.dart';
import 'package:app_stage_project/modules/quiz/result_screene.dart';
import 'package:flutter/material.dart';

class FlutterQuiz extends StatefulWidget {
  const FlutterQuiz({Key? key}) : super(key: key);

  @override
  _FlutterQuizState createState() => _FlutterQuizState();
}

class _FlutterQuizState extends State<FlutterQuiz> {
  Color mainColor = Color(0xFF252c4a);
  Color secondColor = Color(0xFF117eeb);

  PageController? controller = PageController(initialPage: 0);

  bool isPressed = false ;
  Color isTrue = Colors.green;
  Color isFalse = Colors.red;
  Color btnColor = Color(0xFF117eeb);
  int score = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainColor,
        body:
        Padding(
          padding: EdgeInsets.all(18),
          child: PageView.builder(
              physics: NeverScrollableScrollPhysics() ,
              controller: controller,
              onPageChanged: (page){
                setState(() {
                  isPressed=false;
                });

              },
              itemCount: FlutterQuestion.length,
              itemBuilder:(context,index){
                return SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 20
                        ,),
                      SizedBox(

                        width: double.infinity,
                        child: Row(
                          children: [
                            Text('Question ${index+1}/${FlutterQuestion.length}',
                              style:const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  fontSize:30
                              ),
                            ),
                            SizedBox(
                              width: 120,
                            ),
                            IconButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(
                                builder:(context)=>
                                    HomeLayout(),

                              ));
                            }, icon: Icon(Icons.cancel_outlined,color: Colors.white,size: 35,)),
                          ],
                        ),
                      ),
                      Divider(
                        height: 5,
                        thickness:1,
                        color: Colors.white,

                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        FlutterQuestion[index].question!,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                        ),

                      ),
                      SizedBox(
                        height: 35,
                      ),
                      for(int i = 0 ; i<FlutterQuestion[index].answers!.length ;i++)
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(bottom: 20),
                          child: MaterialButton(
                            height: 50,
                            shape: StadiumBorder(),

                            padding: EdgeInsets.symmetric(vertical: 18),

                            color: isPressed?
                            FlutterQuestion[index]
                                .answers!
                                .entries
                                .toList()[i]
                                .value?
                            isTrue : isFalse :secondColor,
                            onPressed: isPressed?(){} : (){
                              setState(() {
                                isPressed = true;
                              });
                              if(FlutterQuestion[index]
                                  .answers!
                                  .entries
                                  .toList()[i]
                                  .value){
                                score+=10;
                                print(score);
                              }



                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: Text(FlutterQuestion[index].answers!.keys.toList()[i],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,

                                ),
                              ),
                            ),
                          ),
                        ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: StadiumBorder(),
                              side: BorderSide(color: Colors.orange,width: 1),



                            ),

                            // controller!.nextPage(duration: Duration(milliseconds: 500),
                            //     curve: Curves.linear,
                            // )
                            onPressed:isPressed ?
                            index + 1 == FlutterQuestion.length?
                                (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder:(context)=>
                                      ResultScreene(score) ));

                            }:
                                (){
                              controller!.nextPage(duration: Duration(milliseconds: 500),
                                curve: Curves.linear,
                              );
                              setState(() {
                                isPressed = false;
                              });

                            }:null,
                            child:Row(
                              children: [
                                Text(index +1 ==FlutterQuestion.length ?"See Result" : "Next Page",
                                  style: TextStyle(
                                    color: Colors.white,

                                  ),
                                ),
                                Icon(Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )



                    ],
                  ),
                );
              }
          ),
        ),

      ),
    );
  }
}
