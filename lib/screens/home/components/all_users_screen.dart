import 'package:flutter/material.dart';
import 'UserDetailsPopup.dart';
import 'add_new_user_screen.dart'; // Import the UserDetailsPopup widget

class AllUsersScreen extends StatelessWidget {
  // List of users with additional information (name, phone, age, address, debt status, debt amount)
  List<Map<String, dynamic>> users = [
    {
      'name': 'Chaki MtuMbadi',
      'phone': '123-456-7890',
      'age': 30,
      'address': '123 Main St, City',
      'hasDebt': true,
      'debtAmount': 500,
    },
    {
      'name': 'Alice CR',
      'phone': '234-567-8901',
      'age': 25,
      'address': '456 Elm St, Town',
      'hasDebt': false,
      'debtAmount': 0,
    },
    {
      'name': 'Michael Mautam',
      'phone': '345-678-9012',
      'age': 40,
      'address': '789 Oak Ave, Village',
      'hasDebt': false,
      'debtAmount': 0,
    },
    {
      'name': 'Madam Happy',
      'phone': '456-789-0123',
      'age': 35,
      'address': '567 Pine Rd, County',
      'hasDebt': true,
      'debtAmount': 750,
    },
    {
      'name': 'Bakari Sondo',
      'phone': '567-890-1234',
      'age': 28,
      'address': '890 Cedar Blvd, State',
      'hasDebt': false,
      'debtAmount': 0,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Users'),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return UserDetailsPopup(user: users[index]);
                },
              );
            },
            child: Card(
              child: ListTile(
                title: Text(users[index]['name']),
                subtitle: Text(
                  users[index]['hasDebt']
                      ? 'Debt: \Tsh ${users[index]['debtAmount']}'
                      : 'No Debt',
                ),
                trailing: Icon(
                  users[index]['hasDebt'] ? Icons.money_off : Icons.check,
                  color: users[index]['hasDebt'] ? Colors.red : Colors.green,
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => AddUserScreen(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),

    );
  }
}
