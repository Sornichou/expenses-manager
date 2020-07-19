import 'package:flutter/material.dart';

import 'newTransaction.dart';
import 'transactionList.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
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
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      NewTransaction(),
      TransactionList(),
    ]);
  }
}
