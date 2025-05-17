import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Connexion")),
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
              child: Text("Se connecter"),
              onPressed: () {
                String email = emailController.text;
                String password = passwordController.text;

                // Exemple simple de validation (à remplacer par une vraie logique)
                if (email == "test@test.com" && password == "1234") {
                  Navigator.pushReplacementNamed(context, '/main');
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Identifiants incorrects")),
                  );
                }
              },
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              child: Text("Créer un compte"),
            ),
          ],
        ),
      ),
    );
  }
}
