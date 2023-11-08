import 'package:dart_app_version/components/my_button.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "GE-CON",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 24),
                ),
                const Icon(
                  Icons.house_rounded,
                  size: 150,
                ),
                const Text(
                  "Seja Bem Vindo, ao aplicativo que vai deixar você por dentro de tudo que acontece no seu condomínio",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 104, 104, 104),
                      fontSize: 15),
                ),
                const SizedBox(height: 30),
                MyButton(onTap: () => Navigator.pushNamed(context, '/login_page'), text: "Sign In"),
                const SizedBox(height: 10),
                MyButton(onTap: () => Navigator.pushNamed(context, '/register_page'), text: "Sign Up"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
