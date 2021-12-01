import 'package:flutter/material.dart';
import 'package:second_assignment/CustomizedWidgets/CustomizedTitle.dart';
import 'package:second_assignment/CustomizedWidgets/QuizButton.dart';
import 'package:second_assignment/classes/question.dart';
import 'package:second_assignment/classes/response.dart';

class firstQ extends StatelessWidget {
  Question q=Question(responses:[
    Response(content:"réponse 1 (right one) ",value: true ),
    Response(content:"réponse 2",value: false),
    Response(content:"réponse 3",value: false),
    Response(content:"réponse 4",value: false),
  ],content: "question 1");
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
                        Navigator.pushNamed(context,"secondQ",arguments:q.responses[i].value?1:0);
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
