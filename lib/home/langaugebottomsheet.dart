import 'package:flutter/material.dart';
import 'package:islamy_c12_dokki/home/selecteditem.dart';
import 'package:islamy_c12_dokki/home/unselecteditem.dart';
class Langaugebottomsheet extends StatelessWidget {
  const Langaugebottomsheet({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Selecteditem('English'),
          SizedBox(
            height: 20,
          ),
          Unselecteditem("العربيه")

        ],
      ),
    );
  }
}
