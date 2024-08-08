import 'package:flutter/material.dart';

class DictionaryTask extends StatefulWidget {
  const DictionaryTask({super.key});

  @override
  State<DictionaryTask> createState() => _DictionaryTaskState();
}

class _DictionaryTaskState extends State<DictionaryTask> {
      List<Map<String,dynamic>> Cars=[
        {"CarName":"Cheverolet", "Year":2000, "Color":"Red",'imagePath': 'images/car.png'
        },
        {"CarName":"BMW", "Year":1998, "Color":"Blue",'imagePath': 'images/car.png'}
      ];

   @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:Colors.white,
          title: Center(
            child: Text(
                "CARS",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.teal[400]
              ),
            ),
          )

        ),
        body: Column(
          children: [
            Container(
              height: 10,
            ),
            SizedBox(
              height: 750,
              child:ListView.builder(itemBuilder: (context,index){
                return Column(
                  children: [
                    Image(image: AssetImage("${Cars[index]["imagePath"]}")),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color:Colors.teal[400],

                      ),
                      child:Center(
                        child: Text(
                            textAlign:TextAlign.center,
                                          '${Cars[index]["CarName"]}\nYear:${Cars[index]["Year"]}\nColor:${Cars[index]["Color"]}',
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight:FontWeight.bold,
                                            color: Colors.white
                                          )

                                        ),
                      ),
                      margin:EdgeInsets.all(20),
                      height: 200,
                    ),
                  ],
                );



            },
            itemCount: Cars.length,
            ),
            ),
          ],
        ),
      ),

    );
  }
}
