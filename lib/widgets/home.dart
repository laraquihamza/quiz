import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'custom_text.dart';
import "page_quiz.dart";
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Card(elevation: 10.0,
              child: new Container(
                height: MediaQuery.of(context).size.width*0.8,
                width: MediaQuery.of(context).size.width*0.8,
                child: new Image.asset("assets/cover.jpg",
                  fit: BoxFit.cover,
                ),
              )
            ),
            new RaisedButton(
              color: Colors.blue,
                elevation: 10.0,
                onPressed: (){
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context){
                            return new PageQuiz();
                          }
                      )
                  );
                },
                child: CustomText("Commencer le quiz",color: Colors.white, factor:2.0)
            )
          ],
        ),
      ),
    );
  }
}
