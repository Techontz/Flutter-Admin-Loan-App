import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart'; // Import Cupertino widgets if needed
import 'components/loan_requests_widget.dart';
import 'components/mikopo_header.dart';


class MikopoScreen extends StatelessWidget {
  const MikopoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Column(
            children: [
              MikopoHeader(),
              const SizedBox(height: 30),
              LoanRequestsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
