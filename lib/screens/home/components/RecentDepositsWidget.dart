import 'package:flutter/material.dart';
import '../../../models/Deposits.dart';

class RecentDepositsWidget extends StatelessWidget {
  const RecentDepositsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: demoDeposits.length > 3 ? 3 : demoDeposits.length, // Limit to 3 deposits
      itemBuilder: (context, index) {
        final deposit = demoDeposits[index];
        return GestureDetector(
          onTap: () {
            _showDepositHistory(context, deposit);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[100],
              ),
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
            ),
          ),
        );
      },
    );
  }

  void _showDepositHistory(BuildContext context, Deposits deposit) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Deposit History"),
          content: Text(deposit.history),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Close"),
            ),
          ],
        );
      },
    );
  }
}
