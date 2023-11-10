// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_build_context_synchronously

import 'package:dart_app_version/components/my_button.dart';
import 'package:dart_app_version/components/my_text_field.dart';
import 'package:dart_app_version/helper/helper_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailCntroler = TextEditingController();
  TextEditingController userControler = TextEditingController();
  TextEditingController passwordCntroler = TextEditingController();
  TextEditingController confirmPasswordCntroler = TextEditingController();

  void register() async {
    showDialog(
        context: context,
        builder: (context) => Center(
              child: CircularProgressIndicator(),
            ));

    if (passwordCntroler.text != confirmPasswordCntroler.text) {
      Navigator.pop(context);

      showMessage("Senhas precisam ser iguais!", context);
    } else {
      try {
        UserCredential? userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: emailCntroler.text, password: passwordCntroler.text);
        Navigator.pop(context);
      } on FirebaseAuthException catch (e) {
        Navigator.pop(context);
        showMessage(e.code, context);
      }
    }
  }

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
              Icon(Icons.person_add, size: 150),
              SizedBox(height: 20),
              Text(
                "Crie sua conta",
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
                  hintText: "Usuário:",
                  obscureText: false,
                  controller: userControler),
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
              MyTextField(
                  hintText: "Conforme sua Senha:",
                  obscureText: true,
                  controller: confirmPasswordCntroler),
              SizedBox(
                height: 25,
              ),
              MyButton(onTap: register, text: "Registrar"),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Já tem uma conta? ",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/login_page'),
                    child: Text(
                      "Faça seu login aqui",
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
