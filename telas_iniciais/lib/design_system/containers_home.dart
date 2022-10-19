import 'package:flutter/material.dart';

class Containers_home extends StatelessWidget {
  final String imagePath;
  final String text;

  const Containers_home({
    Key? key,
    required this.imagePath,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.hardEdge,
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height / 5,
        width: MediaQuery.of(context).size.width / 3.5,
        padding: const EdgeInsets.symmetric(vertical: 4.8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: const Color(0xfff2cdd3), width: 3),
        ),
        child: Column(children: [
          Image.asset(
            imagePath,
            height: (MediaQuery.of(context).size.height / 7.2),
            width: (MediaQuery.of(context).size.width / 7.2),
            color: const Color(0xff7e7d7d),
            fit: BoxFit.scaleDown,
          ),
          Text(
            text,
            style: const TextStyle(
                fontSize: 14, fontWeight: FontWeight.bold, height: 0.3),
            textAlign: TextAlign.center,
          ),
        ]));
  }
}
