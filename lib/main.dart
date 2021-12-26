//packages
import 'package:flutter/material.dart';
//library files
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(const MyApp());
// }

void main() => runApp(const MyApp());

//class MyApp extends StatelessWidget {
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //Map
  final _questions = const [
    {
      "questionText": "What's your favorite colour?",
      "answers": ["White", "Black", "Green", "Red"]
    },
    {
      "questionText": "What's your favorite animal?",
      "answers": ["Dog", "Cat", "Bird", "Fish"]
    },
    {
      "questionText": "What's your favorite vehicle?",
      "answers": ["Car", "Bike", "Motorcycle", "Plane", "Boat"]
    }
  ];
  var _questionIndex = 0;
  void _answerQuestion() {
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex++;
      });
    }

    print(_questionIndex.toString());
    print('Answer chosen!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Complete Guide',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
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
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                selectHandler: _answerQuestion,
              )
            : const Result(),
      ),
    );
  }
}
