import 'package:flutter/material.dart';

class MQ1 extends StatelessWidget {
  var size,height,width;

   MQ1({super.key});

  @override
  Widget build(BuildContext context) {
    size=MediaQuery.of(context).size;
    height=size.height;
    width=size.width;
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text( "Media Query Example"),
          backgroundColor: Colors.greenAccent,
        ),
            body: Container(
              color: Colors.blueGrey,
              height: height/2,
              width: width/2,

      ),
        ),

      );

  }
}
