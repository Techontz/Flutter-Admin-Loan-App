import 'package:flutter/material.dart';
import 'components/RecentDepositsWidget.dart';
import 'components/categories.dart';
import 'components/discount_banner.dart';
import 'components/home_header.dart';
import 'components/recent_deposits.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  final String? username; // Assuming you have the username available here

  const HomeScreen({Key? key, this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Column(
            children: [
              HomeHeader(),
              Categories(),
              AllUsersCard(),
              RecentDeposits(),
              RecentDepositsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
