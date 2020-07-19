import 'package:flutter/material.dart';
import './transaction.dart';

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
  final List<Transaction> transactions = [
    Transaction(
      id: 't01',
      title: 'New shoes',
      amount: 59.95,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't02',
      title: 'Fritness',
      amount: 16.40,
      date: DateTime.now().add(Duration(days: -2)),
    ),
    Transaction(
      id: 't03',
      title: 'Fuel',
      amount: 45.00,
      date: DateTime.now().add(Duration(days: -4)),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expenses manager'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(10),
            child: Card(
              child: Text('Summary goes here'),
              elevation: 10,
              margin: EdgeInsets.all(25),
            ),
          ),
          Card(
            color: Colors.red,
            child: Text('List here'),
          )
        ],
      ),
    );
  }
}
