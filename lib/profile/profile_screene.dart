import 'package:app_stage_project/modules/language/git/git_screene_choices.dart';

import 'package:app_stage_project/shared/components/components.dart';
import 'package:app_stage_project/shared/components/constants.dart';
import 'package:flutter/material.dart';

class ProfileScreene extends StatefulWidget {



  @override
  _ProfileScreeneState createState() => _ProfileScreeneState();
}

class _ProfileScreeneState extends State<ProfileScreene> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

       body: Column(
         children: [
           Container(
            color: Color(0xFF252c4a),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 20,),
                Center(
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[400],
                       radius: 50,
                      child:Image(image: AssetImage('assets/images/profile+.png'),
                    ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
             Text('${name(register[register.length-1])}',
               style: TextStyle(
                 fontSize: 25,
                 fontWeight: FontWeight.w700,
                 color: Colors.white,
               ),
             ),

                SizedBox(
                  height:50,
                ),

              ],
            ),

      ),
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 SizedBox(
                   height: 20,
                 ),
                 Row(
                   children: [
                     Text('Email : ',
                       style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 23,
                       ),
                     ),
                     SizedBox(
                       width: 5,
                     ),
               Text('${email(register[register.length-1])}',
                 style: TextStyle(
                     fontWeight: FontWeight.w500,
                     fontSize: 17,
                     color: Colors.grey
                 ),
               ),


                   ],
                 ),
                 SizedBox(
                   height: 20,
                 ),
                 Row(
                   children: [
                     Text('Phone : ',
                       style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 23,
                       ),
                     ),
                     SizedBox(
                       width: 5,
                     ),
                     phone(register[register.length-1]),
                   ],
                 ),
                 SizedBox(
                   height: 20,
                 ),
                 Row(
                   children: [
                     Text('Profession : ',
                       style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 23,
                       ),
                     ),
                     SizedBox(
                       width: 5,
                     ),
                     profession(register[register.length-1]),

                   ],
                 ),
                 SizedBox(
                   height: 20,
                 ),
                 Row(
                   children: [
                     Text('Level : ',
                       style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 23,
                       ),
                     ),
                     SizedBox(
                       width: 5,
                     ),
                     level(register[register.length-1]),

                   ],
                 ),

               ],
             ),
           ),
         ],
       ),





    );
  }
  Future<List<Map>> getDataFromDatabase(database)async
  {
    return await  database.rawQuery('SELECT * FROM register');


  }

}
