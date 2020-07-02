import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row and Column Demo'),
      ),
      body: Center(
        child: Container(
          height: 200.0,
          width: 400.0,
          color: Colors.blue,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            verticalDirection: VerticalDirection.up,
            textDirection: TextDirection.ltr,
            children: <Widget>[
                RaisedButton(onPressed: null, child: Text('Button 1'), disabledColor: Colors.yellow),
                RaisedButton(onPressed: null, child: Text('Button 2'), disabledColor: Colors.orange,),
                RaisedButton(onPressed: null, child: Text('Button 3'), disabledColor: Colors.red,),
            ],
          ),
        ),
        // child: Row(
        //     mainAxisSize: MainAxisSize.max,
        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     verticalDirection: VerticalDirection.up,
        //     textDirection: TextDirection.ltr,
        //     children: <Widget>[
        //         RaisedButton(onPressed: null, child: Text('Button 1'), disabledColor: Colors.yellow),
        //         RaisedButton(onPressed: null, child: Text('Button 2'), disabledColor: Colors.orange,),
        //         RaisedButton(onPressed: null, child: Text('Button 3'), disabledColor: Colors.red,),
        //     ],
        //   ),
      ),
    );
  }
}
