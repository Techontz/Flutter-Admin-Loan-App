import 'package:flutter/material.dart';
import '../sign_in/sign_in_screen.dart';
import 'components/my_account_screen.dart';
import 'components/profile_header.dart';
import 'components/profile_menu.dart';
import 'components/profile_pic.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            const SizedBox(height: 40),
            ProfileHeader(),
            const SizedBox(height: 40),
            const ProfilePic(),
            const SizedBox(height: 20),
            ProfileMenu(
              text: "My Account",
              icon: "assets/icons/User Icon.svg",
              press: () {
                Navigator.pushNamed(context, MyAccountScreen.routeName);
              },
            ),
            ProfileMenu(
              text: "Notifications",
              icon: "assets/icons/Bell.svg",
              press: () {},
            ),
            ProfileMenu(
              text: "Settings",
              icon: "assets/icons/Settings.svg",
              press: () {},
            ),
            ProfileMenu(
              text: "Help Center",
              icon: "assets/icons/Question mark.svg",
              press: () {},
            ),
            ProfileMenu(
              text: "Log Out",
              icon: "assets/icons/Log out.svg",
              press: () {
                // Navigate to the SignInScreen when Log Out is pressed
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  SignInScreen.routeName,
                      (route) => false, // Remove all routes and only show SignInScreen
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
