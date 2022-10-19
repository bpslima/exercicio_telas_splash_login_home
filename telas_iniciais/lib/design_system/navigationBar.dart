import 'package:flutter/material.dart';

class MyBottomBar extends StatefulWidget {
  //parte debaixo da tela
  const MyBottomBar({Key? key}) : super(key: key);

  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color.fromARGB(108, 40, 97, 23),

      onTap: (value) {
        //pedindo pra rodar Setstate. Vai reconstruir o que está no build
        setState(() {
          index = value; //trocando em icone o e 1
        });
      },
      showUnselectedLabels: false,
      showSelectedLabels: true,
      currentIndex: index, //1,  //controla qual icone selecionado
      items: const [
        //BottomNavagationBar recebe uma lista de items
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Color.fromARGB(255, 240, 199, 206),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings, color: Color.fromARGB(255, 240, 199, 206)),
          label: 'Settings',
        ),
      ],
      selectedItemColor: const Color.fromARGB(255, 240, 199, 206),
    );
  }
}
