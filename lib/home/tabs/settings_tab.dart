import "package:flutter/material.dart";
import "package:islamy_c12_dokki/home/Themebottomsheet.dart";
import "package:provider/provider.dart";
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import "../../provider/settingsprovider.dart";
import "../langaugebottomsheet.dart";
class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    Settingsprovider settingsprovider=Provider.of<Settingsprovider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppLocalizations.of(context)!.lanuage,style:Theme.of(context).textTheme.bodySmall,),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: (){
              showModalBottomSheet(context: context, builder:(context) => Langaugebottomsheet(),);
            },
            child: Container(
              width: double.infinity,
              padding:EdgeInsets.symmetric(vertical: 5,horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                )
              ),
              child: Text(settingsprovider.language=="ar"?"العربيه":
              "English",style:Theme.of(context).textTheme.bodySmall,),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(AppLocalizations.of(context)!.theme,style:Theme.of(context).textTheme.bodySmall,),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: (){
              showModalBottomSheet(context: context, builder:(context) => Themebottomsheet(),);
            },
            child: Container(
              width: double.infinity,
              padding:EdgeInsets.symmetric(vertical: 5,horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  )
              ),
              child: Text(settingsprovider.themeMode==ThemeMode.dark?AppLocalizations.of(context)!.dark:
              AppLocalizations.of(context)!.light,style:Theme.of(context).textTheme.bodySmall,),
            ),
          ),


        ],
      ),
    );
  }
}
