import 'package:flutter/material.dart';
import 'package:telas_iniciais/design_system/containers_home.dart';
import 'package:telas_iniciais/design_system/my_images.dart';
import 'package:telas_iniciais/design_system/navigationBar.dart';

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
          const SizedBox(height: 10),
          //Opções:

          Row(mainAxisSize: MainAxisSize.min, children: const [
            SizedBox(width: 15),
            Containers_home(imagePath: pix, text: 'Pix'),
            SizedBox(width: 15),
            Containers_home(imagePath: barcode, text: 'Contas'),
            SizedBox(width: 15),
            Containers_home(imagePath: extrato, text: 'Extrato'),
            SizedBox(
              height: 8,
            )
          ]),

          const SizedBox(height: 15),

          Row(children: [
            Container(
              clipBehavior: Clip.hardEdge,
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xfff2cdd3), width: 3),
              ),
              child: Column(children: [
                Image.asset(
                  piggy,
                  height: (MediaQuery.of(context).size.height / 4),
                  width: (MediaQuery.of(context).size.width / 2),
                  fit: BoxFit.scaleDown,
                ),
                const Text(
                  'Porkin.ios',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ]),
            ),
          ]),
        ]),
        bottomNavigationBar: const SizedBox(
          height: 70,
          child: MyBottomBar(),
        ));
  }
}
