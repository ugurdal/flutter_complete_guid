//packages
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
      "answers": [
        {"text": "White", "score": 1},
        {"text": "Black", "score": 10},
        {"text": "Green", "score": 3},
        {"text": "Red", "score": 5}
      ]
    },
    {
      "questionText": "What's your favorite animal?",
      "answers": [
        {"text": "Dog", "score": 1},
        {"text": "Cat", "score": 10},
        {"text": "Bird", "score": 3},
        {"text": "Fish", "score": 5}
      ]
    },
    {
      "questionText": "What's your favorite vehicle?",
      "answers": [
        {"text": "Car", "score": 1},
        {"text": "Bike", "score": 10},
        {"text": "Motorcycle", "score": 3},
        {"text": "Plane", "score": 5},
        {"text": "Boat", "score": 4},
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex++;
      });
    }

    print(score.toString());
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
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
