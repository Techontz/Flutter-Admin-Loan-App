import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  static String routeName = "/edit_profile";

  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile"),
      ),
      body: Center(
        child: Text("Edit your profile here"),
      ),
    );
  }
}
