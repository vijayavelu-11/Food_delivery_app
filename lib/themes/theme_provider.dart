import 'package:flutter/material.dart';
import 'package:food_delivery_app/themes/dark_theme.dart';
import 'package:food_delivery_app/themes/light_theme.dart';


class ThemeProvider with ChangeNotifier{
  ThemeData  _themeData =lightMode;

  ThemeData get themeData => _themeData;
   

   bool get isDarkMode => _themeData == darkMode;

   set themeData(ThemeData themeData){
    _themeData = themeData;
    notifyListeners();

   }


   void toggelTheme(){
    if(_themeData == lightMode){
      themeData  = darkMode;
    }else{
      themeData = lightMode;
    }
   }
}