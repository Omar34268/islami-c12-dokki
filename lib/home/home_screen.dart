import 'package:flutter/material.dart';
import 'package:islamy_c12_dokki/Appstyle.dart';
import 'package:islamy_c12_dokki/home/tabs/AhadethTab.dart';
import 'package:islamy_c12_dokki/home/tabs/QuranTab.dart';
import 'package:islamy_c12_dokki/home/tabs/RadioTab.dart';
import 'package:islamy_c12_dokki/home/tabs/SebhaTab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy_c12_dokki/home/tabs/settings_tab.dart';
import 'package:provider/provider.dart';

import '../provider/settingsprovider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<Widget> tabs = [
    QuranTab(),
    AhadethTab(),
    Sebhatab(),
    RadioTab(),
    SettingsTab()
  ];
  @override
  Widget build(BuildContext context) {
    Settingsprovider settingsprovider= Provider.of<Settingsprovider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(settingsprovider.themeMode==ThemeMode.dark?"assets/images/darkback.png":
            "assets/images/background.png"),
          fit: BoxFit.fill
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.app_name),
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
          currentIndex:selectedIndex ,
            onTap: (index){
              setState(() {
                selectedIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: ImageIcon(AssetImage("assets/images/moshaf.png")),
                  label: AppLocalizations.of(context)!.quran
              ),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: ImageIcon(AssetImage("assets/images/ahadeth.png")),
                  label: AppLocalizations.of(context)!.ahadeth
              ),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                  label: AppLocalizations.of(context)!.tasbeeth
              ),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: ImageIcon(AssetImage("assets/images/radio.png")),
                  label: AppLocalizations.of(context)!.radio
              ),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: Icon(Icons.settings),
                  label:AppLocalizations.of(context)!.settings
              ),
            ]
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}
