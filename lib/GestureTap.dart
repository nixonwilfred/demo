import 'package:flutter/material.dart';

class GestureEg extends StatefulWidget {
  const GestureEg({super.key});

  @override
  State<GestureEg> createState() => _GestureEgState();
}

class _GestureEgState extends State<GestureEg> {
  bool execution=false;

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
          onTap: (){
            setState(() {
              if(execution== false){
                execution =true;
              }
              else{
                execution=false;

              }

            });
          },
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                color: execution==false? Colors.yellow:Colors.red,
                width: 450,
                padding: EdgeInsets.all(40),


              ),
            ],
          ),
        ),
      ),
    );
  }
}
