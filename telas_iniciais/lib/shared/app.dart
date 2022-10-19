import 'package:flutter/material.dart';
import 'package:telas_iniciais/features/home.dart';
import 'package:telas_iniciais/features/login.dart';
import 'package:telas_iniciais/features/splash.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'login': (context) => const LoginPage(),
        'home': (context) => const HomePage(),
      },
      home: const SplashPage(),
    );
  }
}
