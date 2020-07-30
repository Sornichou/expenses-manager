import 'package:expenses_manager/widgets/newTransaction.dart';
import 'package:expenses_manager/widgets/transactionList.dart';
import 'package:flutter/material.dart';

import 'widgets/transactionList.dart';
import 'models/transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.amber,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> _transactions = [
    Transaction(
      id: 't01',
      title: 'New shoes',
      amount: 59.95,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't02',
      title: 'Fritness',
      amount: 16.45,
      date: DateTime.now().add(Duration(days: -2)),
    ),
    Transaction(
      id: 't03',
      title: 'Fuel',
      amount: 45.09,
      date: DateTime.now().add(Duration(days: -4)),
    ),
    Transaction(
      id: 't04',
      title: 'Mangas',
      amount: 120.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't05',
      title: 'New Phone',
      amount: 499.99,
      date: DateTime.now().add(Duration(days: -2)),
    ),
    Transaction(
      id: 't06',
      title: 'Sockets',
      amount: 00.99,
      date: DateTime.now().add(Duration(days: -4)),
    ),
  ];

  void _addNewTransaction(String title, double amount) {
    final newTransaction = Transaction(
      title: title,
      amount: amount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  void startAddNewTransaction(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (buildContext) {
        return GestureDetector(
          onTap: () {},
          child: NewTransaction(_addNewTransaction),
          behavior: HitTestBehavior.opaque,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expenses manager'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => startAddNewTransaction(context),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
            TransactionList(_transactions),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => startAddNewTransaction(context),
      ),
    );
  }
}
