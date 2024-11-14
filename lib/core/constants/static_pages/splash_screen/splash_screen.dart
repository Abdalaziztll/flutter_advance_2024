import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_manager_app/core/config/service_locater.dart';
import 'package:task_manager_app/feature/auth/signup_page/signup_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        getIt.get<SharedPreferences>().setBool('firstTime', true);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => SignupPage(),
          ),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade300,
    );
  }
}
