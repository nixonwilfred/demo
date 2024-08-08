import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  const Second({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          backgroundColor:Colors.green ,
          centerTitle:true,
          title: Center(
            child: Text('Adil',
            style:TextStyle(
              fontStyle: FontStyle.normal,
              fontSize: 40,
                color:Colors.white,
              fontFamily:"GaMaamli"
            ),
            ),
          ),
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.yellow,
                  height: 100,
                  width: 250,
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
                  color: Colors.red,
                  height: 100,
                  width: 200,

                  child:Center(
                    child: Text('Red',
                      style:TextStyle(
                          fontWeight:FontWeight.bold,
                          color:Colors.black

                      ),
                    ),
                  ),

                ),


                Container(
                  color: Colors.green,
                  height: 180,
                  width: 200,

                  child:Center(
                    child:Image(
                        image:NetworkImage("https://blog.hahnemuehle.com/en/wp-content/uploads/sites/12/2015/07/Benedict-Cumberbatch-C-Mark-Mann.jpg")
                    )
                  ),

                ),

                Container(
                  color: Colors.blue,
                  height: 300,
                  width: 200,


                  child:Center(
                    child: Image(
                      image:AssetImage("images/Male Portraits.jfif"),
                ),
                  ),

                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
}

