import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loan_admin_app/constants.dart';
import 'package:loan_admin_app/screens/home/home_screen.dart';
import 'package:loan_admin_app/screens/profile/profile_screen.dart';
import '../mikopo/mikopo_screen.dart';

const Color inActiveIconColor = Color(0xFFB6B6B6);

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({Key? key}) : super(key: key);

  static String routeName = "/";

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int currentSelectedIndex = 0;

  void updateCurrentIndex(int index) {
    setState(() {
      currentSelectedIndex = index;
    });
  }

  final pages = [
    const HomeScreen(),
    const MikopoScreen(),
    const ProfileScreen()
  ];

  Color getIconColor(int index) {
    return currentSelectedIndex == index ? kPrimaryColor : inActiveIconColor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentSelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          updateCurrentIndex(index);
        },
        currentIndex: currentSelectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Column(
              children: [
                SvgPicture.asset(
                  "assets/icons/Shop Icon.svg",
                  color: getIconColor(0),
                ),
                const SizedBox(height: 4), // Spacer between icon and text
                Text(
                  "Home",
                  style: TextStyle(
                    color: getIconColor(0),
                  ),
                ),
              ],
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                SvgPicture.asset(
                  "assets/icons/Cash.svg",
                  color: getIconColor(1),
                ),
                const SizedBox(height: 4), // Spacer between icon and text
                Text(
                  "Mikopo",
                  style: TextStyle(
                    color: getIconColor(1),
                  ),
                ),
              ],
            ),
            label: "Mikopo",
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                SvgPicture.asset(
                  "assets/icons/User Icon.svg",
                  color: getIconColor(2),
                ),
                const SizedBox(height: 4), // Spacer between icon and text
                Text(
                  "Profile",
                  style: TextStyle(
                    color: getIconColor(2),
                  ),
                ),
              ],
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
