import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

void main() => runApp(MyApp());

//class MyApp extends StatelessWidget {
class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex++;
    });
    print(questionIndex.toString());
    print('Answer chosen!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite colour?",
      "What's your favorite animal?",
      "What's your favorite vehicle?"
    ];

    return MaterialApp(
        title: 'Flutter Complete Guide',
        home: Scaffold(
            appBar: AppBar(
              title: Text('My First App'),
            ),
            // body: Column(children: const <Widget>[
            //   Text('Deliver features faster'),
            //   Text('Craft beatiful UIs'),
            //   Expanded(
            //       child: FittedBox(
            //     fit: BoxFit.contain, //otherwise the logo will be tiny,
            //     child: FlutterLogo(),
            //   ))
            // ]),
            body: Column(
              children: <Widget>[
                Text(questions[questionIndex]),
                //Text(questions.elementAt(0)),
                RaisedButton(
                  child: const Text('Answer 1'),
                  onPressed: answerQuestion,
                ),
                RaisedButton(
                  child: Text('Answer 2'),
                  onPressed: answerQuestion,
                ),
                RaisedButton(
                    child: Text('Answer 3'),
                    onPressed: () {
                      // ...
                      print('answer 3 chosen!');
                    }),
              ],
            )));
  }
}
