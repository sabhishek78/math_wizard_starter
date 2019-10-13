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
class _QuizPageState extends State<QuizPage> {

int x=rand.nextInt(99);
int y=rand.nextInt(99);

  @override
  Widget build(BuildContext context) {
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
            //mainAxisAlignment: MainAxisAlignment.,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text('$x'),
                  Text('+'),
                  Text('$y'),
                  Text('='),
                  Container(

                    decoration: BoxDecoration(
                      color: Colors.white,
                      border:Border.all(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                    child:GestureDetector(
                        onTap: (){

                        },
                    ),
                  )
              ]


              ),
              FlatButton(
                color: Colors.green,

                onPressed: () {
                  /*...*/
                },
                child: Container(
                  width: 150,
                  height: 50,
                  child: Text(
                      "CHECK",textAlign:TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.white70,)
                  ),
                ),
              ),
              SizedBox(height: 50,),
              FlatButton(
                color: Colors.blue,

                onPressed: () {
                  /*...*/
                },
                child: Container(
                  width: 150,
                  height: 50,
                  child: Text(
                      "SKIP",textAlign:TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.white70,)
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Text("Score"),
                  Text("XX"),
                ],
              )
            ],
          )

      ),
    );
  }
}


