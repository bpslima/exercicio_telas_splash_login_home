import 'package:flutter/material.dart';
import 'package:telas_iniciais/design_system/my_images.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4)).then((value) {
      Navigator.of(context)
          .pushReplacementNamed('login'); //utilizando rota nomeada
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(piggy, height: 200),
          const Text(
            "Porkin.io",
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(108, 50, 121, 28),
            ),
          ),
          const Text(
            "Bem-vindo, sempre! :)",
            style:
                TextStyle(fontSize: 18, color: Color.fromARGB(255, 68, 67, 67)),
          ),
        ]),
      ),
    );
  }
}
