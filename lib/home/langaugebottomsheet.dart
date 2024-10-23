import 'package:flutter/material.dart';
import 'package:islamy_c12_dokki/home/selecteditem.dart';
import 'package:islamy_c12_dokki/home/unselecteditem.dart';
import 'package:islamy_c12_dokki/provider/settingsprovider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class Langaugebottomsheet extends StatelessWidget {
  const Langaugebottomsheet({super.key});
  @override
  Widget build(BuildContext context) {
    Settingsprovider settingsprovider=Provider.of<Settingsprovider>(context);
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Selecteditem(settingsprovider.language=="ar"?"العربيه":
          "English"),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: (){
              settingsprovider.chanelanguage(
                  settingsprovider.language=="ar"?"en":"ar");
            },
              child: Unselecteditem(settingsprovider.language=="ar"?"English":
                  "العربيه"))

        ],
      ),
    );
  }
}
