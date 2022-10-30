
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

import '../layout/home_layout.dart';
import '../shared/components/components.dart';
import '../shared/components/constants.dart';
import 'login_screene.dart';

class RegisterScreene extends StatefulWidget {
  @override
  _RegisterScreeneState createState() => _RegisterScreeneState();
}

class _RegisterScreeneState extends State<RegisterScreene> {
  var _value ;
  late Database database;
var Nameconroller = TextEditingController();

var LastNameController = TextEditingController();

var EmailController = TextEditingController();

var PhoneController =TextEditingController();

var ProfessionContoller = TextEditingController();

bool test = false;

bool isPassword = true ;
var formkey = GlobalKey<FormState>();

  @override
  void initState() {

    super.initState();
    creatDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[200],
        centerTitle: true,
        leading: Text(''),

        title: Text('Register',
        style: TextStyle(
          fontSize: 25,
          color: Colors.black

        ),
        ),
      ),
      body:

      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text('Set your data to make ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,

                ),
                ),
                Text('your profile',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.white,
                  ),

                  child: MaterialButton(onPressed: (){},
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Image(image: AssetImage('assets/images/facbook.png'),
                            height: 50,
                            width: 50,
                          ),
                          Text('Sign Up with Facbook',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),

                Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.white,
                  ),

                  child: MaterialButton(onPressed: (){},
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          SizedBox(width: 10,),
                          Image(image: AssetImage('assets/images/googel.png'),
                            height: 30,
                            width: 30,
                          ),
                          SizedBox(width: 10,),
                          Text('Sign Up with googel',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),

                Row(
                  children: [
                    Expanded(
                      child: defaultFormField(
                        contoller: Nameconroller,
                        type: TextInputType.text,
                        validate: (String value){
                        if (value.isEmpty){
                          return'Your name is missing';
                       }
                        },
                        label: 'Name',

                      ),
                    ),
                    SizedBox(width: 30,),
                    Expanded(
                      child: defaultFormField(
                        contoller: LastNameController,
                          type: TextInputType.text,
                          validate: (String value){
                          if(value.isEmpty){
                            return'Your last name is missing';
                          }
                          },
                          label: 'Last Name',

                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                defaultFormField(
                  contoller: EmailController ,
                    type: TextInputType.emailAddress,
                    prefix: Icons.email,
                    validate: (String value){
                    if(value.isEmpty){
                      return'Your email is missing ';
                    }

                    },
                    label: 'Email',


                ),
                SizedBox(height: 20,),
                defaultFormField(
                  prefix: Icons.phone_android_outlined,
                  contoller: PhoneController,
                    type: TextInputType.numberWithOptions(),
                    validate: (String value){
                      if(value.isEmpty){
                        return'Your phone number is missing';
                      }
                    },
                    label: 'Phone Number',
                ),
                SizedBox(height: 20,),

              defaultFormField(
                prefix: Icons.person,
                  contoller: ProfessionContoller,
                  type: TextInputType.text,
                  validate: (String value){
                    if(value.isEmpty){
                      return "Profession is empty";
                    }
                  },
                  label: 'Profession',
              ),
                SizedBox(height: 20,),


              Row(
                children: [
                  Text('Level in programming',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800
                  ),),
                  SizedBox(
                    width: 10,
                  ),
                  DropdownButton(
                      value: _value,
                      items: [
                        DropdownMenuItem(
                          child: Text("Beginner"),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text("Intermediate"),
                          value: 2,
                        ),
                        DropdownMenuItem(
                            child: Text("Expert"),
                          value: 3,
                        ),
                      ],


                      onChanged: (value){
                        setState(() {
                          _value=value;
                        });


                      },


                      hint:Text("Select item")
                  ),
                ],
              ),
                SizedBox(height: 20,),


                Container(
                  width: 250,
                  height: 45,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue,
                  ),
                  child: TextButton(onPressed: (){
                    if(formkey.currentState!.validate()){
                      setState(() {
                        insertDatabase(
                          firstName:Nameconroller.text ,
                            lastName: LastNameController.text,
                            email: EmailController.text,
                            phone: PhoneController.text,
                            profession: ProfessionContoller.text,
                          level: _value,
                        ).then((value){
                          getDataFromDatabase(database).then((value) {
                            setState(() {
                              register = value;
                              print(register);
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeLayout()));

                            });


                          });

                        });

                      });


                    }
                  },
                    child:
                    Text('Sign In',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Already have an account?',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(width: 10,),
                    TextButton(onPressed: ()
                    {
                      Navigator.push(context,
                        MaterialPageRoute(builder:(context) =>LoginScreene(

                        ),
                        ),
                      );

                    },
                      child: Text('Sign In',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.blue,
                      ),
                    ),
                    ),
                  ],
                ),
                Text(
                  'By signing up you agree to our',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(onPressed: (){},
                      child:Text(
                      'Terms of use',
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                        ),
                    ),
                    ),
                    Text('and',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),

                    ),
                    TextButton(onPressed: (){},
                      child:Text(
                        'Privacy Policy.',
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),

    );

  }
void creatDatabase() async
{
  database = await openDatabase(
    'REGISTER3.db',
    version: 1,
    onCreate: (database, version)
    {
      database.execute(
          'CREATE TABLE register(id INTEGER PRIMARY KEY,firstName TEXT,lastName TEXT,email TEXT,phone TEXT,profession TEXT,level INTEGER)'
      ).then((value) {
        print('table created');
      }
      ).catchError((error){
        print('error in creating table  ${error.toString()}');
      });
      print('database was created');

    },
    onOpen: (database){

      print('datbase opned');

    },

  );
}
Future insertDatabase({
  required String firstName,
  required String lastName,
  required String email,
  required String phone,
  required String profession,
  required int level,
})async
{
  return await database.transaction((txn)
  {
    txn.rawInsert('INSERT INTO register(firstName,lastName,email,phone,profession,level) VALUES("$firstName","$lastName","$email","$phone","$profession","$level")')
        .then((value)
    {
      print('$value insert seccefuly');
    }).catchError((error){
      print(' error when insert in table ${error.toString()}');
    });
    return null;
  }
  );

}
  Future<List<Map>> getDataFromDatabase(database)async
  {
    return await  database.rawQuery('SELECT * FROM register');


  }

}



