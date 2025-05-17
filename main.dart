import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'NoiseRemovalProvider.dart';
import 'mainscreen.dart';
import 'login_screen.dart';
import 'register_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure initialization for path_provider

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NoiseRemovalProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Audio Noise Remover',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/main': (context) => MainScreen(),
      },
    );
  }
}
