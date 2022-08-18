import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CashTransactionPage extends StatefulWidget {
  const CashTransactionPage({Key? key}) : super(key: key);

  @override
  State<CashTransactionPage> createState() => _CashTransactionPageState();
}

class _CashTransactionPageState extends State<CashTransactionPage> {
  String billValue = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cash Transactions'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  enabledBorder:
                      OutlineInputBorder(borderSide: BorderSide(width: 2)),
                ),
                onChanged: (String billAmount) {
                  setState(() {
                    var billValue = double.parse(billAmount);
                    print('text => $billAmount');
                    print(billValue.runtimeType);
                  });
                },
              ),
              SizedBox(height: 20),
              Text('This is the output - $billValue'),
              //Text(value),
            ],
          ),
        ),
      ),
    );
  }
}
