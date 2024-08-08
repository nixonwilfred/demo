import 'package:adil/Buttons.dart';
import 'package:flutter/material.dart';

var message= "no button";
var items=[
  'item 1',
  'item 2',
  'item 3',
  'item 4',
];
String  dropdownvalue ="item 1";

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(

        ),
        body: Column(
          children: [
            Container(
              child: Center(
                child:Text(
                  "You Clicked:$message ",
                  style: TextStyle(
                    color:Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),

              ),
            ),

            Container(
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.deepPurpleAccent)

                ),

                child: Text(
                  'Text Button',
                  style: TextStyle(fontSize: 20.0,color: Colors.white),
                ),
                onPressed: () {
                  setState(() {
                    message="Text Button";
                  });
                },
              ),
            ),


            Container(
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.deepPurpleAccent)

                ),

                child: Text(
                  'Elevated Button',
                  style: TextStyle(fontSize: 20.0,color: Colors.white),
                ),
                onPressed: () {
                  setState(() {
                    message="Text Button";
                  });
                },
              ),

            ),



            Container(
              child: FloatingActionButton(
                backgroundColor: Colors.green.shade50,
                splashColor: Colors.white,
                onPressed:(){
                  setState(() {
                    message="Floating action button";
                  });
                },
                child: Icon(Icons.add),
              ),
            ),

            Container(
              child: DropdownButton(

                value: dropdownvalue,

                  icon: Icon(Icons.keyboard_arrow_down),
                  items: items.map((String items){
                  return DropdownMenuItem(
                  value: items,
                  child: Text(items,
                  style: TextStyle(
                  fontSize: 30
                  ) ,

                  ),

                  );

                  }
                ).toList(),

                onChanged: (String ? value){
                  setState(() {
                    dropdownvalue=value!;
                    message="$value from drop down";

                  });
            },
              ),
            ),
            Container(
              child: PopupMenuButton(
                itemBuilder:(context) => [
                  const PopupMenuItem(
                  child:Text("First"
                  ),
                  value: 1,
                  ),
                  const PopupMenuItem(
                  child:Text("Second"
                   ),
                  value: 2,
                  ),
                  const PopupMenuItem(
                    child:Text("Third"
                    ),
                    value: 3,
                  ),
                ],
                onSelected: (value){
                  setState(() {
                    message=" $value";
                  });
                }

              ),
            )
          ],
        ),
      ),
    );
  }
}
