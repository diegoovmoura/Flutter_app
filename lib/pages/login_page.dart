// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:dart_app_version/components/my_button.dart';
import 'package:dart_app_version/components/my_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailCntroler = TextEditingController();

  TextEditingController passwordCntroler = TextEditingController();

  void login() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Icon(Icons.person, size: 150),
              SizedBox(height: 20),
              Text(
                "Faça seu Login",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 50,
              ),
              MyTextField(
                  hintText: "Email:",
                  obscureText: false,
                  controller: emailCntroler),
              SizedBox(
                height: 10,
              ),
              MyTextField(
                  hintText: "Senha:",
                  obscureText: true,
                  controller: passwordCntroler),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Esqueceu sua senha?",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              MyButton(onTap: login, text: "Login"),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Não tem uma conta? ",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/register_page'),
                    child: Text(
                      "Cadastre-se aqui",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
