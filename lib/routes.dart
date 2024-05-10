import 'package:flutter/widgets.dart';
import 'package:loan_admin_app/screens/Deposit/deposit_history_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/splash/bottom_navbar.dart';
import 'screens/login_success/login_success_screen.dart';
import 'screens/profile/profile_screen.dart';
import 'screens/sign_in/sign_in_screen.dart';
import 'screens/splash/splash_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  BottomNavBarScreen.routeName: (context) => const BottomNavBarScreen(),
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  DepositHistoryScreen.routeName: (context) => DepositHistoryScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
};
