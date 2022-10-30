import 'package:app_stage_project/shared/components/components.dart';
import 'package:app_stage_project/shared/components/constants.dart';
import 'package:app_stage_project/test.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class TasksScreene extends StatefulWidget {


  @override
  _TasksScreeneState createState() => _TasksScreeneState();
}

class _TasksScreeneState extends State<TasksScreene> {

  late Database database;
  var scaffoldKEy =GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();
  IconData icon = Icons.edit;
  bool isBottonSheatShown = false ;
  int currentIndex = 0;

  var titleControler = TextEditingController();
  var descreptionControler = TextEditingController();
  var dateContoller = TextEditingController();

  List<Widget> screens = [
    NewTasks()
  ];

  @override
  void initState() {

    super.initState();
    creatDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKEy,
      body:
      tasks.length ==0 ? Center(child: CircularProgressIndicator()):screens[currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if(isBottonSheatShown ) {
            if(formKey.currentState!.validate()){
              insertDatabase(
                title: titleControler.text,

                descreption: descreptionControler.text,
              ).then((value) {
                Navigator.pop(context);
                isBottonSheatShown = false;
                setState(() {
                  icon = Icons.edit;
                });

              });

            }

          }
          else{
            scaffoldKEy.currentState!.showBottomSheet((context) =>
                Container(
                  color:Colors.grey[200] ,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Form(
                      key: formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          defaultFormField(
                            contoller: titleControler,
                            type: TextInputType.text,
                            change: (value){
                              return null;
                            },
                            validate: (String value){
                              if(value.isEmpty){
                                return'title can t be empty';
                              }
                              return null;
                            },
                            label: 'Title',
                            prefix: Icons.title,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          defaultFormField(
                            contoller: descreptionControler,
                            type: TextInputType.text,
                            change: (value){
                              return null;
                            },
                            validate: (String value){
                              if(value.isEmpty){
                                return'title can t be empty';
                              }
                              return null;
                            },
                            label: 'Descreption',
                            prefix: Icons.description,
                          ),


                          // defaultFormField(
                          //
                          //   contoller: timeControler,
                          //   type: TextInputType.datetime,
                          //
                          //   change: (value){
                          //     return null;
                          //   },
                          //   tab: (){
                          //     showTimePicker(context: context,
                          //         initialTime: TimeOfDay.now()).then((value){
                          //
                          //       timeControler.text = value!.format(context);
                          //     });
                          //   },
                          //   validate: (String value){
                          //     if(value.isEmpty){
                          //       return'Time can t be empty';
                          //     }
                          //     return null;
                          //   },
                          //   label: 'Time',
                          //   prefix: Icons.watch_later_outlined,
                          // ),

                          //
                                defaultFormField(
                                    contoller: dateContoller,

                                    type: TextInputType.datetime,
                                    validate: (String value){
                          if(value.isEmpty){
                          return'date can t be empty';
                          }
                          return null;
                          },
                                    label:'Date',
                                  tab: (){
                                      showDatePicker(
                                        context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime.now(),
                                          lastDate: DateTime.now(),
                                      ).then((value){
                                        print(value.toString());
                                      });
                                  },
                                  prefix: Icons.calendar_today,
                                ),
                        ],

                      ),
                    ),
                  ),
                ),
            );
            isBottonSheatShown = true;
            setState(() {
              icon = Icons.add;
            });
          }

        },
        child: Icon(icon),
      ),

    );
  }
  void creatDatabase() async
  {
    database = await openDatabase(
      'TASKS.db',
      version: 1,
      onCreate: (database, version)
      {
        database.execute(
            'CREATE TABLE tasks(id INTEGER PRIMARY KEY,title TEXT,descreption TEXT,status TEXT)'
        ).then((value) {
          print('table created');
        }
        ).catchError((error){
          print('error in creating table  ${error.toString()}');
        });
        print('database was created');

      },
      onOpen: (database){
        getDataFromDatabase(database).then((value) {
          tasks = value;
          print(tasks);

        });
        print('datbase opned');

      },

    );
  }
  Future insertDatabase({
    required String title,
    required String descreption,
  })async
  {
    return await database.transaction((txn)
    {
      txn.rawInsert('INSERT INTO tasks(title,descreption,status) VALUES("$title","$descreption","new")')
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
    return await  database.rawQuery('SELECT * FROM tasks');


  }
}
