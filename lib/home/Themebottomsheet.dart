import 'package:flutter/material.dart';
import 'package:islamy_c12_dokki/home/selecteditem.dart';
import 'package:islamy_c12_dokki/home/unselecteditem.dart';
class Themebottomsheet extends StatelessWidget {
  const Themebottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Selecteditem('Light'),
          SizedBox(
            height: 20,
          ),
          Unselecteditem("Dark")

        ],
      ),
    );
  }
}
