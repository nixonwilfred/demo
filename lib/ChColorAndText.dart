import 'package:flutter/material.dart';

class ChColorAndText extends StatefulWidget {
  const ChColorAndText({super.key});

  @override
  State<ChColorAndText> createState() => _ChColorAndTextState();
}

class _ChColorAndTextState extends State<ChColorAndText> {
  int x=0;
  Color y=Colors.black;
  String? t="Black";
  List <Map <String,dynamic>> clr=[{"Color":Colors.red,"Text":"Red"},{"Color":Colors.yellowAccent,"Text":"Yellow"},{"Color":Colors.blue,"Text":"blue"}];
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
            height: 300,
            width: 350,
            color: y,
            child: Center(child: Text("$t",
              style: TextStyle(
                  fontFamily: 'ArBlack',
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            ),
          ),
          onTap: (){
            setState(() {
              if(x<clr.length){
                y=clr[x]["Color"];
                t=clr[x]["Text"];
                x++;
              }
              else{
                x=0;
                y=clr [x]["Color"];
                t=clr [x] ["Text"];
              x++;
              }


            });
          },
        ),
      ),
    );
  }
}
