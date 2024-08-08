import 'package:flutter/material.dart';
class Bmi extends StatefulWidget {
  const Bmi({super.key});

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  var weightController =TextEditingController();
  var heightController =TextEditingController();
  double result=0;
  String? Description;
  bool showResult=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("App Fit",
              textAlign: TextAlign.center,
              style:TextStyle(
                fontSize: 30,
                fontWeight:FontWeight.bold,
                color: Colors.blue
              ),
            ),
          ),
          backgroundColor:Color.fromARGB(255, 4, 46,46)
        ),
          backgroundColor:Color.fromARGB(255, 244, 245, 220),
        body: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              width:400,
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: weightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.black,
                    ),
                  ),
                      labelText: "Enter Your Weight In Kgs",
                      prefixIcon: const Icon(Icons.person),

        ),
            ),
            ),
            Container(
              width:400,
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: heightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  labelText: "Enter Your Height In Metres",
                  prefixIcon: const Icon(Icons.person),

                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                if (weightController.text.isEmpty ||
                    heightController.text.isEmpty) {
                  Description = "Please enter both height and weight";
                  result = 0;
                  showResult = true;
                }
                else {
                  double Weight = double.parse(weightController.text);
                  double Height = double.parse(heightController.text);
                  result = (Weight / (Height * Height));

                  if (result <= 18.50) {
                    Description = "You are Underweight";
                  }

                  else if (result >=24.90) {
                    Description = "You are Overweight";
                  }
                  else if (result>18.50 && result<24.90) {
                    Description = "You are Healthy";
                  }

                  else if (result > 30) {
                    Description = "You are Obese";
                  }
                }

              }

              );
              showResult=true;
            },
                child:Text("Calculate BMI")
            ),
          Visibility(
            visible: showResult,
              child: Container(
                margin: const EdgeInsets.only(left:10,top:50),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  color: Colors.blue
                ),
                child: Text(
                  'BMI:${result.toStringAsFixed(2)}',
                    style:const TextStyle(
                      fontSize:25,
                      color: Colors.white,
                    ),

              ),
          ),
          ),
            Visibility(
              visible: showResult,
              child: Container(
                margin: const EdgeInsets.only(left:10,top:50),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(300),
                  color: result<10 || result>25? Colors.red:Colors.green,
                ),
                child: Text(
                  'Note:${Description}',
                  style:const TextStyle(
                    fontSize:25,
                    color: Colors.black
                  ),

                ),
              ),
            ),


          ],
        ),
      )
    );
  }
}
