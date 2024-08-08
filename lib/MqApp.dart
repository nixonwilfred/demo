import 'package:flutter/material.dart';

class MqApp extends StatelessWidget {
  const MqApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Text("Mq app ",
          ),

        ),
        body: Container(
          color: MediaQuery.of(context).size.width>310 ? Colors.blue : Colors.redAccent,
        padding:EdgeInsets.all(20),
          child:Text(
            "This Container will be blue if the screen width is greater than 200 otherwise it will be red",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
