import 'package:flutter/material.dart';

class QuizButton extends StatelessWidget {

  void Function() _onPressed;
  String content;
  double size;
  QuizButton(this._onPressed,this.content,{this.size=0});
  @override
  Widget build(BuildContext context) {
    size=MediaQuery.of(context).size.height>MediaQuery.of(context).size.width?MediaQuery.of(context).size.height:MediaQuery.of(context).size.width;
    return FlatButton(onPressed: _onPressed , child:Container(
      width: size*0.4,
      height: size*0.08,
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(50))
      ),
      child: Center(
        child: Text(content,style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w300
        ),),
      ),
    ),);
  }
}
