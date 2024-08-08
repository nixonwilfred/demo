import 'package:adil/Bmi.dart';
import 'package:adil/Face.dart';
import 'package:adil/Quiz.dart';
import 'package:flutter/material.dart';
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<Widget> bottomtab=[
    Bmi(),
    Face(),
    Quiz()
  ];
  var index=0;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: bottomtab[index],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(
              Icons.fitness_center_rounded
            ),
              label: "Appfit"
            ),
            BottomNavigationBarItem(icon: Icon(
                Icons.face
            ),
                label: "Face"
            ),
            BottomNavigationBarItem(icon: Icon(
                Icons.quiz
            ),
                label: "Quiz"
            ),
          ],
          backgroundColor:Colors.white,
          selectedItemColor: Colors.green,
          onTap: (x){
            setState(() {
              index=x;
            }
            );
          },
          currentIndex: index,
        ),
      ),
    );
  }
}
