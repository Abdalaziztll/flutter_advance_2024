import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_manager_app/core/config/service_locater.dart';
import 'package:task_manager_app/feature/auth/login_page/login_page.dart';
import 'package:task_manager_app/feature/auth/signup_page/signup_page.dart';
import 'package:task_manager_app/feature/home/ui/homepage.dart';
import 'package:task_manager_app/core/constants/static_pages/splash_screen/splash_screen.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    print(getIt.get<SharedPreferences>().getString("token"));
    return MaterialApp(
      home: getIt.get<SharedPreferences>().getBool('firstTime') == true
          ? getIt.get<SplashScreen>()
          : getIt.get<SharedPreferences>().getString("token")=="ey"
              ? getIt.get<SharedPreferences>().getBool('remeberMe') == true
                  ? const Homepage()
                  : const LoginPage()
              : const SignupPage(),
    );
  }
}
