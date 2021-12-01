import 'package:flutter/material.dart';
import 'package:second_assignment/CustomizedWidgets/CustomizedTitle.dart';
import 'package:second_assignment/CustomizedWidgets/QuizButton.dart';
import 'package:second_assignment/classes/question.dart';
import 'package:second_assignment/classes/response.dart';


class thirdQ extends StatelessWidget {
  int score;
  thirdQ(this.score);
  Question q=Question(responses:[
    Response(content:"réponse 1",value: false),
    Response(content:"réponse 2",value: false),
    Response(content:"réponse 3 (right one)",value: true ),
    Response(content:"réponse 4",value: false),
  ],content: "question 3");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  customizedTitle(q.content),
                  SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                  for (int i=0;i<q.responses.length;i++)
                    Center(
                      child: Column(
                        children: [
                          SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                          QuizButton((){
                            Navigator.pushNamed(context,"resultPage",arguments:q.responses[i].value?score+1:score);
                          },q.responses[i].content),
                        ],
                      ),
                    ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.05,),

                ],
              ),
            )
        )
    );
  }
}
