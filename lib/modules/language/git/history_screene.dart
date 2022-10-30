import 'package:app_stage_project/layout/home_layout.dart';
import 'package:app_stage_project/modules/language/git/git_screene_choices.dart';
import 'package:app_stage_project/shared/components/components.dart';
import 'package:flutter/material.dart';

class GitHistory extends StatelessWidget {
  const GitHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>GitScreene(),),);
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
                text: 'Algorithms : \n',
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
                        'Git was created by Linus Torvalds in 2005 for development'
                            ' of the Linux kernel, with other kernel developers'
                            ' contributing to its initial development. Since 2005,'
                            ' Junio Hamano has been the core maintainer. As with most'
                            ' other distributed version control systems, and unlike '
                            'most client–server systems, every Git directory on every '
                            'computer is a full-fledged repository with complete history'
                            ' and full version-tracking abilities, independent of '
                            'network access or a central server.'
                            ' Git is free and open-source software '
                            'distributed under GNU General Public License Version 2.',
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeLayout(),),);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Advatages',
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
