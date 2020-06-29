import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      backgroundColor: Colors.green,
      appBar: AppBar(
        actions: <Widget>[
          Icon(Icons.mic),
          SizedBox(
            width: 10.0,
          ),
          Icon(Icons.add),
          SizedBox(
            width: 10.0,
          ),
        ],
        backgroundColor: Colors.indigo,
        title: Text('test app'),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.camera),
      ),
      body: Center(
        child: Text(
          'Test App',
          style: TextStyle(fontSize: 30.0),
        ),
      ),
    );
  }
}
