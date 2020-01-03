import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  var totalscore;
  final Function resetHandler;
  Result(this.totalscore, this.resetHandler);
  String get resultPhrase {
    String resultText;
    if (totalscore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (totalscore <= 12) {
      resultText = 'Pretty Likeable!';
    } else if (totalscore <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart quiz'),
            textColor: Colors.blue,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
