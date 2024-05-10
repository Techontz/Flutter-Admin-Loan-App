import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../home/components/icon_btn_with_counter.dart';

class MikopoHeader extends StatelessWidget {

  const MikopoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text("Loan Requests",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
