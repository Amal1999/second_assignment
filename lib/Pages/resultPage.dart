import 'package:flutter/material.dart';
import 'package:second_assignment/CustomizedWidgets/CustomizedTitle.dart';
import 'package:second_assignment/CustomizedWidgets/QuizButton.dart';

class resultPage extends StatelessWidget {
  int result;
  resultPage(this.result);
  @override
  Widget build(BuildContext context) {
    double size=MediaQuery.of(context).size.height>MediaQuery.of(context).size.width?MediaQuery.of(context).size.height:MediaQuery.of(context).size.width;
    return Scaffold(
        body:SafeArea(
            child: SingleChildScrollView(
              child:
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   customizedTitle("Your Score"),
                   SizedBox(height:size*0.2),
                   customizedTitle(result.toString()+"/3"),
                   SizedBox(height:size*0.2),
                   QuizButton((){
                     Navigator.of(context).pushNamedAndRemoveUntil("firstQ", (route) => false);
                   }, 'restart'),
                   SizedBox(height:size*0.05),
                 ],
                ),
              )
            )
        ),
    );
  }
}
