import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Créer un compte")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: "Email"),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: "Mot de passe"),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text("S'inscrire"),
              onPressed: () {
                String email = emailController.text;
                String password = passwordController.text;

                // Sauvegarde locale fictive
                Navigator.pushReplacementNamed(context, '/login');
              },
            )
          ],
        ),
      ),
    );
  }
}
