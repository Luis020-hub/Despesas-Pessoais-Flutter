import 'package:flutter/material.dart';
import 'dart:math';
import 'transaction_form.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({Key? key}) : super(key: key);

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo tenis',
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de luz',
      value: 211,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Conta de internet',
      value: 150,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't4',
      title: 'Conta de agua',
      value: 103,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't5',
      title: 'Celular',
      value: 1999.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't6',
      title: 'Placa de video',
      value: 659.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't7',
      title: 'Ração',
      value: 110,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't8',
      title: 'Bermuda',
      value: 60,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't9',
      title: 'Camiseta',
      value: 39.99,
      date: DateTime.now(),
    ),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionList(_transactions),
        TransactionForm(_addTransaction),
      ],
    );
  }
}
