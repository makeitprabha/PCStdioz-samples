import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Padding Demo'),
      ),
      body: Center(
        child: Container(
          color: Colors.red,
          child: Padding(
            //padding: const EdgeInsets.all(18.0),
            //padding: const EdgeInsets.symmetric(vertical: 20.0),
            padding: const EdgeInsets.only(
              left: 35.0,
            ),
            child: Text(
              'Padding',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
