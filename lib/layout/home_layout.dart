import 'package:app_stage_project/modules/Learn/LearnScreene.dart';
import 'package:app_stage_project/modules/courses/courses_screene.dart';
import 'package:app_stage_project/modules/git_module/git_screeene.dart';
import 'package:app_stage_project/modules/language/git/git_screene_choices.dart';
import 'package:app_stage_project/shared/components/components.dart';
import 'package:app_stage_project/shared/components/constants.dart';
import 'package:app_stage_project/tasks/tasks_screene.dart';
import 'package:flutter/material.dart';

import '../profile/profile_screene.dart';

class HomeLayout extends StatefulWidget {

  const HomeLayout({Key? key}) : super(key: key);

  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {

Color learnIconColor = Colors.blue ;
Color coursesIconColor = Colors.black;
Color profilIconColor = Colors.black;

int currentIndex = 0;
var scaffoldKey = GlobalKey<ScaffoldState>();
var formKey = GlobalKey<FormState>();

List<Widget> screens = [
  LearnScreene(),
  CoursesScreene(),
  ProfileScreene(),
];

List<String> titles = [
  'Learn',
  'Courses',

  'Profile',

];
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar:AppBar(
      leading: Builder(
        builder: (context) => IconButton(
          icon: Icon(Icons.menu_book,
            size: 30,
            color: Colors.black,
          ),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
      ),


      centerTitle:true,
      elevation: 0,
      backgroundColor: Colors.grey[200],

      title: Text(titles[currentIndex],
        style:  TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    drawer:SafeArea(

      child: Drawer(

        child: Container(
          color: Colors.grey[200],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Color(0xFF252c4a),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(0xff1E3D45FF),
                        child: Icon(Icons.supervised_user_circle,
                        size: 60,)
                      ),
                      SizedBox(height: 5,),
                      Text('${name(register[register.length-1])}',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.white
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text('${email(register[register.length-1])}',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(

                color: Colors.grey[200],
                child: Column(
                  children: [
                    MaterialButton(onPressed: (){},
                      child: Row(
                        children: [
                          SizedBox(width: 15,),
                          Image(image: AssetImage('assets/images/elearning.png',),
                            height: 50,
                            width: 50,
                          ),
                          SizedBox(width: 25,),
                          Text('E-Learn',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      height: 2,
                      color: Colors.grey[400],
                      width: double.infinity,
                    ),
                    ButtonOption(
                      icon: Icons.description,
                      text: 'Information',

                    ),
                    ButtonOption(
                      icon: Icons.gite_outlined,
                      text: 'Git',
                        press: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ProjectGithub(),),);
                        }
                    ),

                    ButtonOption(
                      icon: Icons.feedback,
                      text: 'FeedBack',

                    ),



                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),

    key: scaffoldKey,

    body: screens[currentIndex],
    bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: (index){
        setState(() {
          currentIndex = index ;
          if(currentIndex == 0){
            learnIconColor = Colors.blue ;
            coursesIconColor = Colors.black;
            profilIconColor = Colors.black;
          }
          else if(currentIndex == 1){
            learnIconColor  = Colors.black ;
            coursesIconColor = Colors.blue;
            profilIconColor = Colors.black;
          }
          else {
            learnIconColor  = Colors.black ;
            coursesIconColor = Colors.black;
            profilIconColor = Colors.blue;
          }
        });
      },
      items: [
        BottomNavigationBarItem(icon : Image(image: AssetImage('assets/images/learn.png'),
          width: 30,
          height: 30,
          color: learnIconColor,
        ),
          label: 'Learn',
        ),
        BottomNavigationBarItem(icon : Image(image: AssetImage('assets/images/courses.png'),
          width: 30,
          height: 30,
          color: coursesIconColor,
        ),
          label: 'Courses',
        ),
        BottomNavigationBarItem(icon: Image(image: AssetImage('assets/images/profile.png'),
          width: 30,
          height: 25,
          color: profilIconColor,
        ),
          label: 'Profile',
        ),
      ],
    ),

  );
}
}

