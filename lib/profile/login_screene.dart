

import 'package:app_stage_project/layout/home_layout.dart';
import 'package:app_stage_project/modules/git_module/git_repository.dart';
import 'package:app_stage_project/modules/language/oop/oop_screene_choices.dart';
import 'package:app_stage_project/profile/register_screene.dart';

import 'package:app_stage_project/shared/components/components.dart';
import 'package:app_stage_project/test.dart';
import 'package:flutter/material.dart';

class LoginScreene extends StatefulWidget {

  @override
  _LoginScreeneState createState() => _LoginScreeneState();
}

class _LoginScreeneState extends State<LoginScreene> {
  var EmailController = TextEditingController();
  var PasswordController = TextEditingController();
  bool isPassword = true ;
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[200],
        centerTitle: true,
        leading: Text(''),
        title: Text('New Account',
          style: TextStyle(
              fontSize: 25,
              color: Colors.black
          ),
        ),
      ),
      body:



      Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
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

                SizedBox(
                  height: 20,
                ),

                defaultFormField(
                  contoller: EmailController ,
                  type: TextInputType.emailAddress,
                  prefix: Icons.email,
                  validate: (String value){
                    if(value.isEmpty){
                      return'Please check your email';
                    }

                  },
                  label: 'Email',


                ),
                SizedBox(height: 20,),
                defaultFormField(

                    contoller: PasswordController,
                    type: TextInputType.visiblePassword,
                    validate: (String value){
                      if(value.isEmpty){
                        return'Your password is missing';
                      }

                    },
                    label: 'Password',

                    isPassword: isPassword,
                    prefix: Icons.lock,
                    suffix: isPassword ? Icons.visibility : Icons.visibility_off,
                    suffixPressed: (){
                      setState(() {
                        isPassword = !isPassword;
                      });

                    }
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
                    if(formKey.currentState!.validate()){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> HomeLayout(

                      )) );

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
                    Text('Dont have an account?',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight:FontWeight.w700,
                      ),
                    ),
                    SizedBox(width: 10,),
                    TextButton(onPressed: ()
                    {
                      Navigator.push(context,
                        MaterialPageRoute(builder:(context) =>RegisterScreene(

                        ),
                        ),
                      );
                    },
                      child: Text('Sign Up',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.blue,
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
}
