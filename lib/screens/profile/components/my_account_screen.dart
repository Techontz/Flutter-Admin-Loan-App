import 'package:flutter/material.dart';
import 'package:loan_admin_app/screens/profile/components/profile_header.dart';
import 'package:loan_admin_app/screens/profile/components/profile_menu.dart';
import 'package:loan_admin_app/screens/profile/components/profile_pic.dart';

import 'edit_profile_screen.dart';

class MyAccountScreen extends StatelessWidget {
  static String routeName = "/my_account";

  const MyAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Account"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            const ProfilePic(),
            const SizedBox(height: 20),
            ProfileMenu(
              text: "Edit Profile",
              icon: "assets/icons/User.svg",
              press: () {
                // Navigate to the EditProfileScreen when "Edit Profile" is pressed
                Navigator.pushNamed(context, EditProfileScreen.routeName);
              },
            ),
            ProfileMenu(
              text: "Change Password",
              icon: "assets/icons/Lock.svg",
              press: () {
                // Navigate to change password screen if you have one
              },
            ),
            // Add more profile options as needed
          ],
        ),
      ),
    );
  }
}
