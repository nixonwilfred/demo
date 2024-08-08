import 'package:flutter/material.dart';


class Quiz extends StatelessWidget {
  const Quiz({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home:QuizHomePage()
    );

  }
}
class QuizHomePage extends StatefulWidget {
  const QuizHomePage({super.key});

  @override
  State<QuizHomePage> createState() => _QuizHomePageState();
}

class _QuizHomePageState extends State<QuizHomePage> {
  List<String> answers =[
    "Hypertext Markup Language",
    "Hypertext Modified Language",
    "Hypertext Middle Language",
    "Hypertext Market Language",
  ];
  String correctAnswer="Hypertext Markup Language";
  String? answer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz App",
          style: TextStyle(
            fontSize: 30,
            color:Colors.white,
              backgroundColor: Colors.black
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Column(

        children: [
          SizedBox
            (
            height: 30,
          ),

          const Text(
            'Expand Html',
            style: TextStyle(
              fontFamily: "ArBlack",
              fontSize:20,
              color:Colors.black
            ),
          ),

          SizedBox(
            height: 30,
          ),

          SizedBox(
            height: 500,
            child: ListView.builder(
            itemBuilder: (context,index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    answer = answers[index];
                  });
                  Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context) =>
                            QuizSecondPage(
                              score: answer == correctAnswer ? 10 : 0,
                            ),
                      )
                  );
                },
                  child: Container(
                  height: 70,
                  width: 500,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: answer !=answers[index]
                      ? Colors.black
                        :answer == correctAnswer
                      ? Colors.green
                        :Colors.red,
                  ),
                  child: Text(
                    answers[index],
                    style: const TextStyle(
                      fontSize: 30,
                      color: Colors.white
                    ),
                    textAlign: TextAlign.center,
                  ),


                ),

              );
            },
              itemCount: answers.length,
    ),
    ),
        ],
      ),

    );
  }
}


class QuizSecondPage extends StatefulWidget {
  final int? score;
  const QuizSecondPage({super.key,required this.score});

  @override
  State<QuizSecondPage> createState() => _QuizSecondPageState();
}

class _QuizSecondPageState extends State<QuizSecondPage> {
  List<String> answers=[
    "Cascading  Side Sheet",
    "Cascading  Style Sheet",
    "Cascading  Simple Sheet",
    "Cascading  Single Sheet"
    ];
  String correctAnswer =  "Cascading  Style Sheet";
  String ? answer;


  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
          appBar: AppBar(
          title: Text("Quiz App",
          style: TextStyle(
          fontSize: 30,
          color:Colors.redAccent,
          backgroundColor: Colors.teal
      ),

      ),
      backgroundColor: Colors.black,
      centerTitle: true,
      ),
        body: Column(
          children: [
            const Text(
              'Expand CSS',
              style: TextStyle(
                  fontSize:30,
                  color:Colors.black
              ),
            ),
            SizedBox(
              height: 500,
              child: ListView.builder(
                itemBuilder: (context,index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        answer = answers[index];
                      });
                      Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ResultPage(
                                  score: answer == correctAnswer ? (widget.score!+10) : (widget.score!),
                                ),
                          )
                      );
                    },
                      child: Container(
                      height: 70,
                      width: 500,
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: answer !=answers[index]
                            ? Colors.black
                            :answer == correctAnswer
                            ? Colors.green
                            :Colors.red,
                      ),
                      child: Text(
                        answers[index],
                        style: const TextStyle(
                            fontSize: 30,
                            color: Colors.white
                        ),
                        textAlign: TextAlign.center,


                      ),


                    ),

                  );
                },
                itemCount: answers.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class ResultPage extends StatelessWidget {
  final int? score;
  const ResultPage({super.key,required this.score });

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
          appBar: AppBar(
            title: Text("Result",
              style: TextStyle(
                  fontSize: 30,
                  color:Colors.white,
                  backgroundColor: Colors.teal
              ),

            ),
            backgroundColor: Colors.black,
            centerTitle: true,
          ),
          body: Container(
            height: 800,
            width:500,
            color: Colors.white,
            child: Center(
              child: Text(
              score.toString(),
                style: const TextStyle(
                  fontFamily: "ArBlack",
                  fontSize: 50,
                  color: Colors.black
                ),
              ),
            ),
       ),

      ),
    );

  }
}



