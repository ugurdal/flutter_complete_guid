import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  const Result(this.resultScore, this.resetHandler, {Key? key})
      : super(key: key);

  String get resultText {
    return resultScore > 10
        ? "You did it but score isnt enough"
        : "You did it!";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultText,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.blueGrey[200],
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            resultScore.toString(),
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                backgroundColor: Colors.red[600]),
          ),
          ElevatedButton(
            onPressed: resetHandler,
            child: const Text("Reset Quiz"),
          )
        ],
      ),
    );
    // return Column(children: const <Widget>[
    //   Text('Deliver features faster'),
    //   Text('Craft beatiful UIs'),
    //   Expanded(
    //       child: FittedBox(
    //     fit: BoxFit.contain, //otherwise the logo will be tiny,
    //     child: FlutterLogo(),
    //   ))
    // ]);
  }
}
