import 'package:flutter/material.dart';

class  Orient extends StatelessWidget {
  var orientation,size,height,width;

  Orient({super.key});

  @override
  Widget build(BuildContext context) {
    orientation = MediaQuery.of(context).orientation;
    size=MediaQuery.of(context).size;
    height=size.height;
    width=size.width;
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text( "MQ Orientation"),
          backgroundColor: Colors.greenAccent,
        ),
        body: orientation == Orientation.landscape
            ?Container(
          color: Colors.black,
          height: height,
          width: width,
        )
        :
            Container(
              height: height,
              width: width,
              color: Colors.white,

            )
      ),

    );

  }
}
