import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Mybutton.dart';

class dialogtask extends StatelessWidget {

  VoidCallback onsave;
  VoidCallback oncancel;


  final tname;

  dialogtask({super.key,
  required this.tname,
  required this.onsave,
  required this.oncancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.deepPurple,
      content: Container(
        height: 120,
        child: Column(
          children: [
            TextFormField(
              controller: tname,
              decoration: InputDecoration(
                 enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(10)
                 ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(13)
                )
              ),

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Mybutton(onPressed: onsave,
                text: "Save",),
                Mybutton(onPressed: oncancel,
                  text: "Cancel",),
              ],
            )
          ],
        ),
      ),
    );
  }
}
