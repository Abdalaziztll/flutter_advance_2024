import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_manager_app/core/config/service_locater.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
            onTap: () {
              getIt.get<SharedPreferences>().setBool("remeberMe", true);
            },
            child: Text("This is a Login Page")),
      ),
    );
  }
}
