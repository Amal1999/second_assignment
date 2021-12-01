import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:second_assignment/CustomizedWidgets/QuizButton.dart';
import 'package:second_assignment/Pages/firstQ.dart';
import 'CustomizedWidgets/CustomizedTitle.dart';
import 'Pages/resultPage.dart';
import 'Pages/secondQ.dart';
import 'Pages/thirdQ.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) =>
  runApp(MyApp())
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: (settings){
        int score;
        switch (settings.name){
          case "firstQ" : return MaterialPageRoute(builder: (context)=> firstQ());
          case "secondQ": score = settings.arguments as int;
          return MaterialPageRoute(builder: (context)=> secondQ(score));
          case "thirdQ": score = settings.arguments as int;
          return MaterialPageRoute(builder: (context)=> thirdQ(score));
          case "resultPage": score = settings.arguments as int;
          return MaterialPageRoute(builder: (context)=> resultPage(score));
        }
      },

      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              customizedTitle("IT'S QUIZ TIME"),
              QuizButton((){
                Navigator.pushReplacementNamed(context, "firstQ");
              }," Start !"),
              SizedBox(height: MediaQuery.of(context).size.height*0.05,),
            ],
          ),
        )  ,
      ) );
  }
}
