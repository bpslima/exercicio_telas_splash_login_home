import 'package:flutter/material.dart';
import 'package:telas_iniciais/features/login.dart';
import 'package:telas_iniciais/features/splash.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'login': (context) => const LoginPage(),
      },
      home: const SplashPage(),
    );
  }
}
