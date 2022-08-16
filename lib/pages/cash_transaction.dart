import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CashTransactionPage extends StatefulWidget {
  const CashTransactionPage({Key? key}) : super(key: key);

  @override
  State<CashTransactionPage> createState() => _CashTransactionPageState();
}

class _CashTransactionPageState extends State<CashTransactionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cash Transactions'),
      ),
      body: Center(),
    );
  }
}
