import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final _title = [
    'Apple',
    'Ball',
    'Cat',
    'Dog',
    'Elephant',
    'Fog',
    'Goat',
    'Horse'
  ];
  final _icons = [
    Icons.ac_unit,
    Icons.access_alarm,
    Icons.access_time,
    Icons.accessibility,
    Icons.account_balance,
    Icons.add,
    Icons.cake,
    Icons.calendar_today
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview Demo'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        //shrinkWrap: false,
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        itemCount: 8,
        itemBuilder: (context, position) {
          return InkWell(
            onTap: () {
              print(position);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shadowColor: Colors.greenAccent,
                elevation: 10.0,
                child: ListTile(
                  title: Text(_title[position]),
                  subtitle: Text('$position'),
                  leading: Container(
                    child: Icon(_icons[position]),
                    height: double.infinity,
                  ),
                  trailing: Icon(Icons.arrow_right),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
