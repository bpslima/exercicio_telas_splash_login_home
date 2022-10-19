import 'package:flutter/material.dart';
import 'package:telas_iniciais/design_system/my_images.dart';

class LoginPage extends StatelessWidget {
  void onPressed() {}

  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
        body: Column(children: [
      Container(
        height: MediaQuery.of(context).size.height / 3,
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
                height: 130,
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'Porkin.io',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 45,
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
      const SizedBox(height: 25),
      SocialButton(
        imagePath: google,
        text: 'Login with Google',
        onPressed: onPressed, //chamando um metodo
      ),
      const SizedBox(height: 25),
      SizedBox(
        height: MediaQuery.of(context).size.height / 12,
        width: MediaQuery.of(context).size.width / 1.2,
        child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('home'); //push para ir pra frente
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(108, 40, 97, 23)),
            child: const Text(
              'Entrar',
              style: TextStyle(
                  fontSize: 25, color: Color.fromARGB(255, 68, 67, 67)),
            )),
      ),
      const SizedBox(height: 16),
      Column(children: [
        TextButton(
            onPressed: () {},
            child: const Text(
              'Recuperar acesso',
              style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(
                      255, 68, 67, 67)), //conseguimos clicar no texto
            )),
        const SizedBox(height: 16),
        Column(children: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Cadastre-se :D',
              style: TextStyle(
                  fontSize: 16, color: Color.fromARGB(255, 68, 67, 67)),
            ), //conseguimos clicar no texto
          ),
        ]),
      ]),
    ]));
  }
}

class SocialButton extends StatelessWidget {
  final String text;
  final String imagePath;
  final Function()? onPressed; //voidCallback é apelido para void function

  const SocialButton({
    Key? key,
    required this.text,
    required this.imagePath,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xfff2cdd3),
        fixedSize: const Size.fromHeight(45),
      ),
      onPressed: () {},
      child: Row(mainAxisSize: MainAxisSize.min, //diminui o botão preto
          children: [
            Image.asset(imagePath, color: const Color(0x6c1b410f), height: 20),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  text,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 68, 67, 67),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )),
          ]),
    );
  }
}
