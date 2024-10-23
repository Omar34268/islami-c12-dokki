import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamy_c12_dokki/home/Hadeth.dart';

import '../Appstyle.dart';

class AhadethDetails extends StatelessWidget {
  static const String routeName = "ahadethdetails";
  const AhadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Hadeth args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Appstyle.isdark?"assets/images/darkback.png":
                "assets/images/background.png"),
                fit: BoxFit.fill
            )
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.title),
          ),
          body: Column(
            children: [
              Expanded(
                child: Card(
                  child: SingleChildScrollView(child: Text(args.content,style: Theme.of(context).textTheme.displayMedium,)),
                ),
              ),
            ],
          ),
        ));
  }
}
