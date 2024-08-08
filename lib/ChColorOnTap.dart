import 'package:flutter/material.dart';

class ChColorOnTap extends StatefulWidget {
  const ChColorOnTap({super.key});

  @override
  State<ChColorOnTap> createState() => _ChColorOnTapState();
}

class _ChColorOnTapState extends State<ChColorOnTap> {
  int x=0;
  Color y=Colors.blueAccent;
  List<Color> clr=[Colors.red,Colors.yellow,Colors.black];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Center(
              child: Text("Gesture Detector",
                textAlign: TextAlign.center,
                style:TextStyle(
                    fontSize: 25,
                    fontWeight:FontWeight.bold,
                    color: Colors.white
                ),
              ),
            ),
            backgroundColor:Color.fromARGB(255, 4, 46,46)
        ),
         body: GestureDetector(
           child: Container(
             height: 200,
             width: 350,
             color: y,
           ),
           onTap: (){
             setState(() {
               if(x<clr.length){
                 y=clr[x];
                 x++;
               }
               else{
                 x=0;
                 y=clr[x];
                 x++;
               }
             });
           },
         ),

        ),

    );
  }
}
