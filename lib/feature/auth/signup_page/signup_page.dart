import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_manager_app/core/config/service_locater.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
            onTap: () {
              getIt.get<SharedPreferences>().setString("token", "ey");
              print(getIt.get<SharedPreferences>().getString("token"));
            },
            child: Text("This is a SignUp Page")),
      ),
    );
  }
}
