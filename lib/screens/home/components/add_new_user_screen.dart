import 'package:flutter/material.dart';

class AddUserScreen extends StatefulWidget {
  @override
  _AddUserScreenState createState() => _AddUserScreenState();
}

class _AddUserScreenState extends State<AddUserScreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  TextEditingController _addressController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _phoneNumberController.dispose();
    _ageController.dispose();
    _addressController.dispose();
    super.dispose();
  }

  void _submitUser() {
    String userName = _nameController.text.trim();
    String phoneNumber = _phoneNumberController.text.trim();
    int age = int.tryParse(_ageController.text) ?? 0;
    String address = _addressController.text.trim();

    if (userName.isNotEmpty && phoneNumber.isNotEmpty && age > 0 && address.isNotEmpty) {
      // Handle adding the user (e.g., save to database, update state, etc.)
      // You can add your logic here to handle the new user
      print('New user added: $userName, Phone: $phoneNumber, Age: $age, Address: $address');

      // Close the screen and go back to the previous screen
      Navigator.of(context).pop();
    } else {
      // Show an error message or handle empty/invalid input
      print('Please fill in all fields correctly.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New User'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'User Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _phoneNumberController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _ageController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Age',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _addressController,
              decoration: InputDecoration(
                labelText: 'Address',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submitUser,
              child: Text('Add User'),
            ),
          ],
        ),
      ),
    );
  }
}
