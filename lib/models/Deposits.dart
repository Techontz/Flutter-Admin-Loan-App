import 'package:flutter/material.dart';

class Deposits {
  final String amount;
  final String history;
  final String accountNumber;
  final String date;
  final bool isSuccess;

  Deposits({
    required this.amount,
    required this.history,
    required this.accountNumber,
    required this.date,
    required this.isSuccess,
  });
}

// Add the demoDeposits list here
List<Deposits> demoDeposits = [
  Deposits(
    amount: "Tsh10000",
    history: "Received payment from client",
    accountNumber: "1234",
    date: "2024-05-10",
    isSuccess: true,
  ),
  Deposits(
    amount: "Tsh23400",
    history: "Salary deposit",
    accountNumber: "5678",
    date: "2024-05-11",
    isSuccess: true,
  ),
  Deposits(
    amount: "Tsh5000",
    history: "Bonus deposit",
    accountNumber: "9101",
    date: "2024-05-12",
    isSuccess: false,
  ),
  Deposits(
    amount: "Tsh10000",
    history: "Received payment from client",
    accountNumber: "1112",
    date: "2024-05-13",
    isSuccess: true,
  ),
  Deposits(
    amount: "Tsh23400",
    history: "Salary deposit",
    accountNumber: "1314",
    date: "2024-05-14",
    isSuccess: true,
  ),
  Deposits(
    amount: "Tsh5000",
    history: "Bonus deposit",
    accountNumber: "1516",
    date: "2024-05-15",
    isSuccess: false,
  ),
];
