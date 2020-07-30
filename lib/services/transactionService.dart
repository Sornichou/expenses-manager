import '../models/transaction.dart';

class TransactionService {
  static List<Transaction> getTransactions() {
    return [
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
  }
}

// final List<Transaction> _transactions = [
//   Transaction(
//     id: 't01',
//     title: 'New shoes',
//     amount: 59.95,
//     date: DateTime.now(),
//   ),
//   Transaction(
//     id: 't02',
//     title: 'Fritness',
//     amount: 16.45,
//     date: DateTime.now().add(Duration(days: -2)),
//   ),
//   Transaction(
//     id: 't03',
//     title: 'Fuel',
//     amount: 45.09,
//     date: DateTime.now().add(Duration(days: -4)),
//   ),
//   Transaction(
//     id: 't04',
//     title: 'Mangas',
//     amount: 120.00,
//     date: DateTime.now(),
//   ),
//   Transaction(
//     id: 't05',
//     title: 'New Phone',
//     amount: 499.99,
//     date: DateTime.now().add(Duration(days: -2)),
//   ),
//   Transaction(
//     id: 't06',
//     title: 'Sockets',
//     amount: 00.99,
//     date: DateTime.now().add(Duration(days: -4)),
//   ),
// ];
