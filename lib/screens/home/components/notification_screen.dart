import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: ListView.builder(
        itemCount: 10, // Example: Display 10 notifications
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Notification ${index + 1}'),
            subtitle: Text('This is a notification message.'),
            leading: Icon(Icons.notifications),
            onTap: () {
              // Handle tapping on a notification
            },
          );
        },
      ),
    );
  }
}
