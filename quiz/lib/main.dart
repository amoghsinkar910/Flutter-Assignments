import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'UseClas.dart';
import 'CreateClas.dart';

UseClas qb=UseClas();
void main() {
  runApp(Quiz());
}
class Quiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple[800],
        body: SafeArea(
          child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QA(),),
        ),
      ),
    );
  }
}

class QA extends StatefulWidget {
  @override
  _OopsConceptState createState() => _OopsConceptState();
}

class _OopsConceptState extends State<QA> {
  List<Widget> score=[];
  List<bool> ans=[true,false,true];

  void check(bool yourAnswer){
    bool correctAns=qb.getAnswer();
    setState(() {
      if(qb.isFinished()==true){
        Alert(
          context: context,
          title: 'The End!',
          desc: 'You\'ve finished the the quiz.',
        ).show();
        qb.reset();
        score = [];
      }
      else{
      if (yourAnswer==correctAns) {
        score.add(Icon(
          Icons.check, color: Colors.lightGreen,
        )
        );
      }else{
        score.add(
          Icon(
            Icons.close,color: Colors.redAccent,
          ),
        );
      }
      qb.next();
    }});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 5,
          child:Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(qb.getQuestion(),textAlign: TextAlign.center,style: TextStyle(fontSize: 25.0,color: Colors.white),),
            ),
            
          ),
        ),
        Expanded(
          child:Padding(
            padding: EdgeInsets.all(10.0),
            child: FlatButton(color: Colors.green,
              child: Text("True",textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0,color: Colors.white),
              ),
              shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(40.0)),
              onPressed: (){
              check(true);
              },
            ),
          ),
        ),
        Expanded(
          child:Padding(
            padding: EdgeInsets.all(10.0),
            child: FlatButton(
              color: Colors.red,
              child: Text("False",
                textAlign: TextAlign.center,style: TextStyle(fontSize: 20.0,color: Colors.white),
              ),
              shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(40.0)),
              onPressed: (){
                check(false);
              },
            ),
          ),
        ),
        Row(
          children: score,
        )
      ],
    );
  }
}