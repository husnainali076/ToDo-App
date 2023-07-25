import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class listTile extends StatelessWidget {


  final String taskname;
  final bool isdone;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteTile;

  listTile(
  {
    super.key,
    required this.taskname,
    required this.onChanged,
    required this.isdone,
    required this.deleteTile
  }
      );

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 25,left: 25,right: 25,bottom: 14),
    child: Slidable(
      endActionPane: ActionPane(

      motion: StretchMotion(),
        children: [
          SlidableAction(onPressed: deleteTile,
          icon: Icons.delete,
           backgroundColor: Colors.red,
          borderRadius: BorderRadius.circular(14),)
        ],
      ),

      child: Container(
        padding: EdgeInsets.all(23),
        child: Row(
            children: [
              Checkbox(value: isdone, onChanged: onChanged,activeColor: Colors.black,),
              Text(taskname,
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w500,
                decoration: isdone? TextDecoration.lineThrough:
                    TextDecoration.none

              ),),

          ],
        ),
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(14),

        ),
      ),
    ),

    );
  }
}
