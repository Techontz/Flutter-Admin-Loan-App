import 'package:flutter/material.dart';
import '../../models/Deposits.dart'; // Import the Deposits class and demoDeposits list

class DepositHistoryScreen extends StatelessWidget {
  const DepositHistoryScreen({Key? key}) : super(key: key);

  static String routeName = "/deposit";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Deposit History",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: ListView.builder(
        itemCount: demoDeposits.length,
        itemBuilder: (context, index) {
          final deposit = demoDeposits[index];
          return Card(
            child: ListTile(
              leading: Icon(
                deposit.isSuccess ? Icons.check_circle : Icons.error,
                color: deposit.isSuccess ? Colors.green : Colors.red,
              ),
              title: Text("Amount: ${deposit.amount}"),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("History: ${deposit.history}"),
                  Text("Account Number: ${deposit.accountNumber}"),
                  Text("Date: ${deposit.date}"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
