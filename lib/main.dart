import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: QuizPage(),
  ));
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}
Random rand= Random();
int x;
int y;
String userInput;
int score=0;
class _QuizPageState extends State<QuizPage> {
  final myController = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }
  updateScore(){
    int answer=int.parse(userInput);
    if(answer==x+y)
      {
        score=score+10;
      }
    else{
      score=score-5;

    }

  }


  @override
  Widget build(BuildContext context) {
    x=rand.nextInt(99);
    y=rand.nextInt(99);

    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('MathWiz'),
        centerTitle: true,
      ),
      body: Container(
        child:
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
           // crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('$x',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 60,color: Colors.blue,)),
                  Text('+',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 60,color: Colors.blue,)),
                  Text('$y',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 60,color: Colors.blue,)),
                  Text('=',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 60,color: Colors.blue,)),
                  Container(
                    color: Colors.white,
                    width: 50,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder()
                      ),
                      controller: myController,
                      keyboardType:TextInputType.number,
                    ),
                  ),

                          ]


              ),
              FlatButton(
                color: Colors.green,

                onPressed: () {
                   userInput=myController.text;
                   print(userInput);
                   myController.clear();
                   setState(() {
                     updateScore();
                   });
                },
                child: Container(
                  width: 100,
                  height: 50,
                  child: Text(
                      "CHECK",textAlign:TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white70,)
                  ),
                ),
              ),
              SizedBox(height: 05,),
              FlatButton(
                color: Colors.blue,

                onPressed: () {
                  setState(() {
                    x=rand.nextInt(99);
                    y=rand.nextInt(99);
                  });

                },
                child: Container(
                  width: 100,
                  height: 50,
                  child: Text(
                      "SKIP",textAlign:TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white70,)
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Score :",textAlign:TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 60,color: Colors.green,),),
                  SizedBox(width: 10,),
                  Container(

                      child: Text("$score",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.green),)),
                ],
              )
            ],
          )

      ),
    );
  }
}


