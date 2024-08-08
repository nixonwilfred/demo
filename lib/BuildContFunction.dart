import 'package:flutter/material.dart';

class Buildcontfunction extends StatefulWidget {
  const Buildcontfunction({super.key});

  @override
  State<Buildcontfunction> createState() => _BuildcontfunctionState();
}

class _BuildcontfunctionState extends State<Buildcontfunction> {
  Container BuildCont(Color c){
    return Container(
      height: 100,
      margin:EdgeInsets.all(20) ,
      decoration: BoxDecoration(
      color: c,
      border:Border.all(
        width: 10,
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
            BuildCont(Colors.black),
            BuildCont(Colors.orange),
            BuildCont(Colors.white)

          ],
        ),
      ),
    );
  }
}
