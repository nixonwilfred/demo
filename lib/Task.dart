import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  const Task({super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  Container buildContain(Color c,double h,double w) {
    return Container(
      margin: EdgeInsets.all(20),
      height: h,
      width: w,


      decoration: BoxDecoration(
        color: c,
        border: Border.all(
            width: 5,
            color: Colors.black
        ),
      ),


    );

  }


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            buildContain(Colors.orange,100,300 ),
            buildContain(Colors.red,400,300 ),
            buildContain(Colors.greenAccent,50,300 ),


          ],
        ),
      ),
    );
  }
}

