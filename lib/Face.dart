import 'package:flutter/material.dart';

class Face extends StatefulWidget {
  const Face({super.key});

  @override
  State<Face> createState() => _FaceState();
}

class _FaceState extends State<Face> {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:Colors.white,
        ),
        backgroundColor:Colors.white,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 150,
                  color: Colors.black,
                ),

                Container(
                  height: 50,
                  width: 150,
                  color: Colors.black,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.black,
                ),

                Container(
                  height: 50,
                  width: 50,
                  color: Colors.black,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 50,
                  color: Colors.black,
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.orange,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.red,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.green,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.teal,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.yellow,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.orange,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.red,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.green,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.teal,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.yellow,
                    ),
                  ],
                ),

              ],
            ),



          ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        ),
      ),


    );
  }
}
