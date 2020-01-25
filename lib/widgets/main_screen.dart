import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/new_transaction_fields.dart';
import 'package:expense_tracker/widgets/transaction_list.dart';
import 'package:expense_tracker/model/transaction.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
//        NewTransactionField(_addNewTransaction),
//        TransactionList(_userTransaction),
      ],
    );
  }
}
