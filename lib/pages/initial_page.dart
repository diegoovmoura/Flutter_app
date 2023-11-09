import 'package:dart_app_version/components/my_button.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "GE-CON",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                const Icon(
                  Icons.house_rounded,
                  size: 150,
                ),
                Text(
                  "Seja Bem Vindo ao aplicativo que vai deixar você por dentro de tudo que acontece no seu condomínio",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontSize: 15),
                ),
                const SizedBox(height: 30),
                MyButton(
                    onTap: () => Navigator.pushNamed(context, '/login_page'),
                    text: "Sign In"),
                const SizedBox(height: 10),
                MyButton(
                    onTap: () => Navigator.pushNamed(context, '/register_page'),
                    text: "Sign Up"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
