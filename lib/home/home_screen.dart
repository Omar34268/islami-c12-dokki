import 'package:flutter/material.dart';
import 'package:islamy_c12_dokki/home/tabs/AhadethTab.dart';
import 'package:islamy_c12_dokki/home/tabs/QuranTab.dart';
import 'package:islamy_c12_dokki/home/tabs/RadioTab.dart';
import 'package:islamy_c12_dokki/home/tabs/SebhaTab.dart';

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
    SebhaTab(),
    RadioTab()
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
          fit: BoxFit.fill
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Islami"),
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
                  label: "Quran"
              ),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: ImageIcon(AssetImage("assets/images/ahadeth.png")),
                  label: "Ahadeth"
              ),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                  label: "Tasbeeh"
              ),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: ImageIcon(AssetImage("assets/images/radio.png")),
                  label: "Radio"
              ),
            ]
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}