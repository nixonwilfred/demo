import 'package:flutter/material.dart';

class ExpandedWidgetExample extends StatefulWidget {
  const ExpandedWidgetExample({super.key});

  @override
  State<ExpandedWidgetExample> createState() => _ExpandedWidgetExampleState();
}

class _ExpandedWidgetExampleState extends State<ExpandedWidgetExample> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'EXPANDED WIDGET EXAMPLE',
            style: TextStyle(
                color: Colors.black
            ),
          ),
        ),
        body: Row(
          children: [
            InkWell(
              onTap:()
              {
                print('CONTAINER TAPPED');
              },
              child: Container(
                height: 100,
                width: 100,
                color: Colors.orange,
              ),
            ),
            Expanded(
              child: Container(
                child: Text('Expanded',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),
                ),
                height: 100,
                color: Colors.blue,
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  'Third widget',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              color: Colors.orange,
              height: 100,
              width: 200,
            ),


          ],
        ),
      ),
    );
  }
}