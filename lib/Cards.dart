import 'package:flutter/material.dart';

class Cards extends StatefulWidget {
  const Cards({super.key});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(


        ),
        body: Center(
          child: Column(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    color: Colors.pinkAccent,
                        width:4,
                  ),
                  borderRadius: BorderRadius.circular(20.0)
                ),
               //color: Colors.blue,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                        color:Colors.green
                  ),
                  child: const Text(
                    'RoundedRectangleBorder',
                        style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold)
                  ),

                ),
              ),
              Card(
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: Colors.yellow,
                child: Container(
                  height: 200,
                  width: 200,
                  padding: EdgeInsets.all(40),
                  child:Text('Beveled Rectangle Border',
                  style:TextStyle(
                    fontSize: 20,
                    color: Colors.green,
                  )
                ),
              ),
              ),
              Card(
                shape:  const StadiumBorder(
                  side: BorderSide(
                    color: Colors.pinkAccent,
                    width: 2.0,
                  ),
                ),
                color: Colors.red,

                child: Container(
                  padding: const EdgeInsets.all(16),
                  child: const Text(
                    'Stadium Border',
                    style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold ),
                  ),
                ) ,
              )
            ],
          ),
        ),

      ),
    );
  }
}
