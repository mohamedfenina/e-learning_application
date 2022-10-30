import 'package:app_stage_project/modules/language/cross/crossplatforme-screene_choices.dart';
import 'package:app_stage_project/modules/language/flutter/dart_descreption.dart';
import 'package:app_stage_project/modules/language/flutter/flutter_descreption.dart';
import 'package:app_stage_project/modules/language/oop/oop_screene_choices.dart';
import 'package:app_stage_project/modules/language/react_native/java_script.dart';
import 'package:app_stage_project/modules/language/react_native/react.dart';
import 'package:app_stage_project/modules/language/xamarin/csharp.dart';
import 'package:app_stage_project/modules/language/xamarin/xamarin.dart';
import 'package:app_stage_project/shared/components/components.dart';
import 'package:flutter/material.dart';

class CrossExample extends StatelessWidget {
  const CrossExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,

        centerTitle: true,
        backgroundColor: Colors.grey[200],
        leading:
        IconButton(

          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>CrossScrenneChoices()),);
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        title: Text('Cross Platforme',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body:
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
            
              ],
            ),
            Row(
              children: [
              Expanded(child: Container(
              width: double.infinity,
              height: 5,
                color: Colors.black,
              ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image(
                  image: AssetImage('assets/images/GoogelImage.png'),
                  width: 100,
                  height: 40,
                ),
              ),
                Expanded(child: Container(
                  width: double.infinity,
                  height: 5,
                  color: Colors.black,
                ),
                ),
              ],
            ),

            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: languageButton(
                    pressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder:(context) =>FlutterDescreption(),),);

                    },
                    image: 'assets/images/flutter.png',
                    text: 'Flutter',
                    h: 15,

                  ),
                ),
                Expanded(
                  child: languageButton(
                    pressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder:(context) =>DartDescreption(),),);

                    },
                    image: 'assets/images/dart.jpg',
                    text: 'Dart',
                    h: 15,

                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(child: Container(
                  width: double.infinity,
                  height: 5,
                  color: Colors.black,
                ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image(
                    image: AssetImage('assets/images/MicrosoftImage.png'),
                    width: 100,
                    height: 40,
                  ),
                ),
                Expanded(child: Container(
                  width: double.infinity,
                  height: 5,
                  color: Colors.black,
                ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: languageButton(
                    pressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder:(context) =>XamarinDescreption(),),);

                    },
                    image: 'assets/images/xamarin.png',
                    text: 'Xamarin',
                    h: 15,

                  ),
                ),
                Expanded(
                  child: languageButton(
                    pressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder:(context) =>CsharpDescreption(),),);

                    },
                    image: 'assets/images/CSharp.png',
                    text: 'C Sharp',
                    h: 15,

                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(child: Container(
                  width: double.infinity,
                  height: 5,
                  color: Colors.black,
                ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image(
                    image: AssetImage('assets/images/FacbookImage.png'),
                    width: 100,
                    height: 40,
                  ),
                ),
                Expanded(child: Container(
                  width: double.infinity,
                  height: 5,
                  color: Colors.black,
                ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: languageButton(
                    pressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder:(context) =>ReactDescreption(),),);

                    },
                    image: 'assets/images/ReactNative.png',
                    text: 'React Native',
                    h: 15,

                  ),
                ),
                Expanded(
                  child: languageButton(
                    pressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder:(context) =>JavaScriptDescreption(),),);

                    },
                    image: 'assets/images/JavaScript.png',
                    text: 'Java Script',
                    h: 15,

                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),

          ],
        ),
      ),
    );
  }
}
