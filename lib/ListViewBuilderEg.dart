import 'package:flutter/material.dart';

class ListViewBuilderEg extends StatefulWidget {
  const ListViewBuilderEg({super.key});

  @override
  State<ListViewBuilderEg> createState() => _ListViewBuilderEgState();
}

class _ListViewBuilderEgState extends State<ListViewBuilderEg> {

  List <String> Cars=["BMW","TATA","TOYOTA","VOLKSWAGEN","MARUKI","SUZUKI","CHEVROLET","MAHINDRA","FIAT","FORD","FERRARI","LAMBORGHINI","KOENIGSEGG","HONDA","RENAULT","CITROEN","KIA","MG","BENZ","AUDI","SKODA"];

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar:AppBar(
            backgroundColor: Colors.teal[300],
        ) ,
        body: Column(
          children: [
            Container(
              height: 20,
            ),
            SizedBox(
              child:ListView.builder(itemBuilder:(context,index){
                return Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                        color: Colors.teal[100]
                      ),
                      height: 80,
                      width:350,
                      margin:EdgeInsets.all(8),
                      child: Text(
                        textAlign:TextAlign.center,
                        'cars:${Cars[index]}',
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                    )
                  ],
                );

              },
              itemCount:Cars.length,
              ),
              height:700
            )
          ],

        ),
      ),
    );
  }
}
