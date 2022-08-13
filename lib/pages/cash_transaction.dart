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
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                alignment: Alignment.center,
                //TODO - section for entry of billAmount
                // 1 - based on input value, determine if USD or KHR
                // 2 - convert input value to alternate currency and display in billAmount2
                //padding: EdgeInsets.zero,
                width: 340,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  //shape: BoxShape.rectangle,
                  color: Colors.amber[200],
                ),
                child: Stack(
                  //alignment: AlignmentDirectional.topStart,
                  children: [
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Padding(
                        padding: EdgeInsets.zero,
                        child: SizedBox(
                          height: 60,
                          width: 280,
                          child: TextField(
                            textAlign: TextAlign.start,
                            textAlignVertical: TextAlignVertical.center,
                            style: GoogleFonts.poppins(
                              fontSize: 28,
                              fontWeight: FontWeight.w400,
                            ),
                            //obscureText: true,
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.fromLTRB(10, 5, 10, 5),
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                  width: 3,
                                ),
                              ),
                              border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              labelText: 'Enter Bill Value',
                              labelStyle: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: SizedBox(
                        height: 45,
                        width: 140,
                        child: Card(
                          elevation: 4,
                          margin: const EdgeInsets.all(3),
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                color: Colors.grey,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          color: Colors.white,
                          child: const Padding(
                            padding: EdgeInsets.zero,
                            child: Center(
                              child: Text(
                                'billAmount2',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 320,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                //shape: BoxShape.rectangle,
                color: Colors.blue[200],
              ),
              child: Text(
                'billPaymentDifference - section',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 320,
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                //shape: BoxShape.rectangle,
                color: Colors.green[200],
              ),
              child: Text(
                'paymentAmount - section',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 320,
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                //shape: BoxShape.rectangle,
                color: Colors.grey[200],
              ),
              child: Text(
                'In App Advert - section',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
