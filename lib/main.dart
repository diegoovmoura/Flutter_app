import 'package:dart_app_version/pages/initial_page.dart';
import 'package:dart_app_version/pages/login_page.dart';
import 'package:dart_app_version/pages/register_page.dart';
import 'package:dart_app_version/themes/dark_mode.dart';
import 'package:dart_app_version/themes/ligh_mode.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkMode,
      darkTheme: darkMode,
      home: const InitialPage(),
      routes: {
        '/initial_page': (context) => const InitialPage(),
        '/login_page': (context) => const LoginPage(),
        '/register_page': (context) => const RegisterPage()
      },
    );
  }
}
