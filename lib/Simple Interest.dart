import 'package:flutter/material.dart';

class SimpleInterest extends StatefulWidget {
  const SimpleInterest({super.key});

  @override
  State<SimpleInterest> createState() => _SimpleInterestState();
}

class _SimpleInterestState extends State<SimpleInterest> {
  var principleAmountController= TextEditingController();
  var annualRateController=TextEditingController();
  var tenureController=TextEditingController();
  double result=0;
  double totalAmount=0;
  String? Description;

  bool showResult=false;


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Center(
              child: Text("Simple Interest Calculator",
                textAlign: TextAlign.center,
                style:TextStyle(
                    fontSize: 25,
                    fontWeight:FontWeight.bold,
                    color: Colors.white
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
              width: 400,
              padding: EdgeInsets.all(20),
              child: TextFormField(
                controller: principleAmountController,
                keyboardType: TextInputType.number,
                 decoration: InputDecoration(
                 border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                   borderSide: const BorderSide(
                   color: Colors.black,
                   ),
                 ),
                   labelText: "Enter the Principal Amount",
                   prefixIcon: const Icon(Icons.attach_money),

                 ),
              ),
            ),
            Container(
              width:400,
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: annualRateController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  labelText: "Enter the annual rate of interest",
                  prefixIcon: const Icon(Icons.percent_rounded),

                ),
              ),
            ),
            Container(
              width:400,
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: tenureController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  labelText: "Enter the tenure in years",
                  prefixIcon: const Icon(Icons.timer),
                ),
              ),
            ),
            ElevatedButton(child: Text("Calculate Simple Interest"),
                onPressed:(){
              setState(() {
                if(principleAmountController.text.isEmpty||annualRateController.text.isEmpty||tenureController.text.isEmpty){
                  Description=" Please Enter all the fields";
                  result=0;
                  showResult=true;
                }
                else{
                  double principle= double.parse(principleAmountController.text);
                  double tenure=double.parse(tenureController.text);
                  double rateOfInterest=double.parse(annualRateController.text);
                  result=(principle*tenure*rateOfInterest)/100;
                  totalAmount= result+principle;
                  Description="Make sure you have entered all fields";
                }


              });
              showResult=true;
            },
            ),
            Visibility(
                visible:showResult,
                child:Container(
                  padding: EdgeInsets.all((10)),
                  margin:  EdgeInsets.only(left:3,top:15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color:Colors.green,
                  ),
                  child: Text("SimpleInterest: $result"),
                ),


            ),
            Visibility(
                visible:showResult,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.only(left: 1,top:15),
                      color: Colors.orange,
                      child: Text(
                        "Note:Total Amount: ${totalAmount}",
                      ),
                    ),

            )

          ],
        ),

      ),
  
    );
  }
}


