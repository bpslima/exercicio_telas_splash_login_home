import 'package:flutter/material.dart';
import 'package:telas_iniciais/design_system/my_images.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Olá, Bia', style: TextStyle(fontSize: 27)),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(108, 40, 97, 23),
          toolbarHeight: 100,
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              padding: const EdgeInsets.only(left: 6, top: 10),
              child: const Text(
                'Seu saldo é de:',
                style: TextStyle(fontSize: 22),
              )),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'R\$205.995.530,68',
                style: TextStyle(fontSize: 35),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          const SizedBox(height: 60),
          Expanded(
              child: Row(children: [
            const SizedBox(width: 15),
            Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width / 3.5,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0xfff2cdd3), width: 3),
                ),
                child: Column(children: [
                  Expanded(
                      child: Image.asset(
                    pix,
                    height: (MediaQuery.of(context).size.height / 7) / 3,
                    width: (MediaQuery.of(context).size.width / 3.5) / 7.6,
                    color: const Color(0xff7e7d7d),
                  )),
                  const Text(
                    'Pix',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ])),
            const SizedBox(width: 15),
            Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width / 3.5,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0xfff2cdd3), width: 3),
                ),
                child: Column(children: [
                  Expanded(
                      child: Image.asset(
                    barcode,
                    height: (MediaQuery.of(context).size.height / 7) / 3,
                    width: (MediaQuery.of(context).size.width / 3.5) / 7.6,
                    color: const Color(0xff7e7d7d),
                  )),
                  const Text(
                    'Contas',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ])),
            const SizedBox(width: 15),
            Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width / 3.5,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0xfff2cdd3), width: 3),
                ),
                child: Column(children: [
                  Expanded(
                      child: Image.asset(
                    extrato,
                    height: (MediaQuery.of(context).size.height / 7) / 3,
                    width: (MediaQuery.of(context).size.width / 3.5) / 7.6,
                    color: const Color(0xff7e7d7d),
                  )),
                  const Text(
                    'Extrato',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ])),
            const SizedBox(
              height: 8,
            )
          ])),
          Expanded(
              child: Column(
            children: [
              const SizedBox(width: 15),
              Center(
                child: Container(
                    height: MediaQuery.of(context).size.height / 2.5,
                    width: MediaQuery.of(context).size.width / 1.75,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border:
                          Border.all(color: const Color(0xfff2cdd3), width: 3),
                    ),
                    child: Column(children: [
                      Expanded(
                          child: Image.asset(
                        piggy,
                        height: (MediaQuery.of(context).size.height / 2.5) / 3,
                        width: (MediaQuery.of(context).size.width / 1.75) / 7.6,
                      )),
                      const Text(
                        'Meus Porkin.ios',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ])),
              )
            ],
          )),
        ]),
        bottomNavigationBar: const SizedBox(
          height: 70,
          child: MyBottomBar(),
        ));
  }
}

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
      showSelectedLabels: false,
      currentIndex: index, //1,  //controla qual icone selecionado
      items: const [
        //BottomNavagationBar recebe uma lista de items
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
          backgroundColor: Color.fromARGB(108, 40, 97, 23),
        ),
      ],
    );
  }
}
