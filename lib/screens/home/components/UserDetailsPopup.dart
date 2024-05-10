import 'package:flutter/material.dart';

class UserDetailsPopup extends StatelessWidget {
  final Map<String, dynamic> user;

  const UserDetailsPopup({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(user['name']),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Phone: ${user['phone']}'),
          Text('Age: ${user['age']}'),
          Text('Address: ${user['address']}'),
          Text('Debt Status: ${user['hasDebt'] ? 'Has Debt' : 'Cleared'}'),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Close'),
        ),
      ],
    );
  }
}
