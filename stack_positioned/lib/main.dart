import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack and Positioned Demo',
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
        title: Text('Stack and Positioned Widget'),
      ),
      body: Center(
        child: Container(
          height: 300.0,
          width: 300.0,
          color: Colors.blue,
          child: Stack(
            fit: StackFit.expand,
            overflow: Overflow.visible,
            alignment: Alignment.centerRight,
            children: <Widget>[
              Container(
                height: 150.0,
                width: 150.0,
                color: Colors.yellow,
              ),
              Positioned(
                right: 0.0,
                bottom: -20.0,
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
