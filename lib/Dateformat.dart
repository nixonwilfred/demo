import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class Dateformat extends StatelessWidget {
  const Dateformat({super.key});

  @override

  Widget build(BuildContext context) {

    DateTime now =DateTime.now();
    String formattedDate=DateFormat('yyyy-MM-dd - kk:mm:ss').format(now);

    return MaterialApp(
      home: Scaffold(
        body: Container(
          height:  400,
          child:Center(
            child: Text(
                    'Formatted Date:$formattedDate',
                    style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'ArBlack',
                    ),
                  ),
          ),

    ),

      ),
    );
  }
}

