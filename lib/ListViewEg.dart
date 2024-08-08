import 'package:flutter/material.dart';

class ListViewEg extends StatefulWidget {
  const ListViewEg({super.key});

  @override
  State<ListViewEg> createState() => _ListViewEgState();
}

class _ListViewEgState extends State<ListViewEg> {
String? msg="No Message";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar:AppBar(
            backgroundColor:Colors.teal[200],

          ),
          body: ListView(
            scrollDirection:Axis.vertical,
            children: [
              Container(
          color: Colors.red[200],
           height: 100,
           width: 350,
           child:Center(
           child: Text('Yellow',
           style:TextStyle(
           fontWeight:FontWeight.bold,
           color:Colors.black
           ),
           ),
           ),

              ),
              Container(
                color: Colors.yellow,
                height: 100,
                width: 350,
                child:Center(
                  child: Text('Yellow',
                    style:TextStyle(
                        fontWeight:FontWeight.bold,
                        color:Colors.black
                    ),
                  ),
                ),

              ),
              Container(
                color: Colors.yellow,
                height: 100,
                width: 350,
                child:Center(
                  child: Text('Yellow',
                    style:TextStyle(
                        fontWeight:FontWeight.bold,
                        color:Colors.black
                    ),
                  ),
                ),

              ),
              Container(
                color: Colors.yellow,
                height: 100,
                width: 350,
                child:Center(
                  child: Text('Yellow',
                    style:TextStyle(
                        fontWeight:FontWeight.bold,
                        color:Colors.black
                    ),
                  ),
                ),

              ),
              Container(
                color: Colors.yellow,
                height: 100,
                width: 350,
                child:Center(
                  child: Text('Yellow',
                    style:TextStyle(
                        fontWeight:FontWeight.bold,
                        color:Colors.black
                    ),
                  ),
                ),

              ),
              Container(
                color: Colors.yellow,
                height: 100,
                width: 350,
                child:Center(
                  child: Text('Yellow',
                    style:TextStyle(
                        fontWeight:FontWeight.bold,
                        color:Colors.black
                    ),
                  ),
                ),

              ),
              Container(
                color: Colors.yellow,
                height: 100,
                width: 350,
                child:Center(
                  child: Text('Yellow',
                    style:TextStyle(
                        fontWeight:FontWeight.bold,
                        color:Colors.black
                    ),
                  ),
                ),

              ),
              Container(
                color: Colors.yellow,
                height: 100,
                width: 350,
                child:Center(
                  child: Text('Yellow',
                    style:TextStyle(
                        fontWeight:FontWeight.bold,
                        color:Colors.black
                    ),
                  ),
                ),

              ),
              Container(
                color: Colors.yellow,
                height: 100,
                width: 350,
                child:Center(
                  child: Text('Yellow',
                    style:TextStyle(
                        fontWeight:FontWeight.bold,
                        color:Colors.black
                    ),
                  ),
                ),

              ),
              Container(
                color: Colors.yellow,
                height: 100,
                width: 350,
                child:Center(
                  child: Text('Yellow',
                    style:TextStyle(
                        fontWeight:FontWeight.bold,
                        color:Colors.black
                    ),
                  ),
                ),

              ),
              Container(
                color: Colors.yellow,
                height: 100,
                width: 350,
                child:Center(
                  child: Text('Yellow',
                    style:TextStyle(
                        fontWeight:FontWeight.bold,
                        color:Colors.black
                    ),
                  ),
                ),

              ),
              InkWell(
                onLongPress: (){
                  setState(() {

                    msg="Container Tapped";
                    print("Inkwell Example Used");
                  });
                },
                child: Container(
                  color: Colors.yellow,
                  height: 100,
                  width: 350,
                  child:Center(
                    child: Text('${msg}',
                      style:TextStyle(
                          fontWeight:FontWeight.bold,
                          color:Colors.black
                      ),
                    ),
                  ),

                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
