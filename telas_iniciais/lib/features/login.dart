import 'package:flutter/material.dart';
import 'package:telas_iniciais/design_system/my_images.dart';

class LoginPage extends StatelessWidget {
  void onPressed() {}

  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
        body: Column(children: [
      Container(
        height: MediaQuery.of(context).size.height / 3.7,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Color.fromARGB(108, 40, 97, 23),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                piggy,
                height: 120,
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'Porkin.io',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 40,
                    height: 5,
                    color: Color.fromARGB(255, 68, 67, 67),
                    fontWeight: FontWeight.bold),
              ),
            ]),
      ),
      const SizedBox(height: 30),
      Container(
        width: MediaQuery.of(context).size.width / 1.1,
        child: const TextField(
            decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(200)),
          ),
          labelText: 'Username',
        )),
      ),
      const SizedBox(height: 30),
      Container(
        width: MediaQuery.of(context).size.width / 1.1,
        child: const TextField(
            decoration: InputDecoration(
          suffixIcon: Icon(Icons.visibility_off),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(200)),
          ),
          labelText: 'Senha',
        )),
      ),
    ]));
  }
}
