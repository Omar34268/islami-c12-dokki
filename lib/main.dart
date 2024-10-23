import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islamy_c12_dokki/Appstyle.dart';
import 'package:islamy_c12_dokki/ahadeth_details/ahadeth_details_screen.dart';
import 'package:islamy_c12_dokki/home/home_screen.dart';
import 'package:islamy_c12_dokki/provider/settingsprovider.dart';
import 'package:islamy_c12_dokki/quran_details/quran_details_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  // new version
  runApp(ChangeNotifierProvider(
    create:  (context) => Settingsprovider(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Settingsprovider settingsprovider=Provider.of<Settingsprovider>(context);
    return MaterialApp(
      title: 'Flutter Demo',
      theme:Appstyle.lighttheme,
      darkTheme: Appstyle.darktheme,
      themeMode: settingsprovider.themeMode,

      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Spanish
      ],
      locale: Locale(settingsprovider.language),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName:(_)=>HomeScreen(),
        QuranDetailsScreen.routeName:(_)=>QuranDetailsScreen(),
        AhadethDetails.routeName:(_)=>AhadethDetails()
      },
    );
  }
}
