import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Settingsprovider extends ChangeNotifier {
  ThemeMode themeMode=ThemeMode.light;
  chaneTheme(ThemeMode newMode) async {
    if(newMode==themeMode){
      return;
    }
    themeMode=newMode;
    notifyListeners();
  }
  String language="en";
  chanelanguage(String newlang){
    if(newlang==language){
      return;
    }
    language=newlang;
    notifyListeners();
  }



}
