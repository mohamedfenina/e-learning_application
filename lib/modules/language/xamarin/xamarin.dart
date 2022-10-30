import 'package:flutter/material.dart';
import 'package:app_stage_project/modules/language/cross/examples_screene.dart';
import 'package:app_stage_project/shared/components/components.dart';

class XamarinDescreption extends StatelessWidget {
  const XamarinDescreption({Key? key}) : super(key: key);

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
                text: 'Xamarin : \n',
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
                        'Xamarin is a Microsoft-owned San Francisco-based software company '
                            'founded in May 2011 by the engineers that created Mono,'
                            ' Xamarin.Android (formerly Mono for Android) and Xamarin.iOS '
                            '(formerly MonoTouch), which are cross-platform implementations'
                            ' of the Common Language Infrastructure (CLI) and Common Language'
                            ' Specifications (often called Microsoft .NET).'
                        'With a C#-shared codebase, developers can use Xamarin tools to write '
                            'native Android, iOS, and Windows apps with native user interfaces '
                            'and share code across multiple platforms, including Windows, macOS,'
                            ' and Linux. According to Xamarin, over 1.4 million developers '
                            'were using Xamarin\'s products in 120 countries around the world as of April 2017.'
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
