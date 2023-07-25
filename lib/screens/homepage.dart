import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/dialogtask.dart';
import '../utils/listTile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List toDo = [
    ["Sleep",false],
    ["Eat",false],
    ["Code",false],
    ["Repeat",false]
  ];
  final controller = TextEditingController();

  void checkboxChanged(bool? value, int index)
  {
    setState(() {

      toDo[index][1] = !toDo[index][1];
    });

  }
  void saveNewTask()
  {
    setState(() {
      toDo.add([controller.text,false]);
    });
    Navigator.of(context).pop();
  }


  void createNewTask()
  {
    showDialog(context: context,
        builder: (context) {


      return dialogtask(

        tname: controller,
        oncancel: () {
          Navigator.of(context).pop();
        },
       onsave: saveNewTask,

      );
        },);

  }
void deleteListTile(int index)
{
  setState(() {
toDo.removeAt(index);

  });

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade300,
      appBar: AppBar(
        title: Center(
          child: Text('ToDo List',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),),
        ),
      ),
      body: ListView.builder(
        itemCount: toDo.length,
        itemBuilder: (context, index) {
          return listTile(
            taskname: toDo[index][0],
            isdone:toDo[index][1],


            onChanged: (value)=> checkboxChanged (value, index),

              deleteTile: (context)=> deleteListTile(index),

          );



      },),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

          createNewTask();
        },
        child: Icon(Icons.add),
      ),


    );
  }
}
