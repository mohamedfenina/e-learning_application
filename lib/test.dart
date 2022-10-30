import 'package:app_stage_project/shared/components/components.dart';
import 'package:app_stage_project/shared/components/constants.dart';
import 'package:flutter/material.dart';

class NewTasks extends StatelessWidget {
  const NewTasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context,index) => buildTasksItem(tasks[index]),
      separatorBuilder: (context,index) => Container(height: 2,width: double.infinity,color: Colors.black,),
      itemCount: tasks.length,
    );
  }
}
