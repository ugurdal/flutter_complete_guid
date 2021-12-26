import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Completed",
        style: TextStyle(
          fontSize: 36,
          backgroundColor: Colors.blueGrey[200],
        ),
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
