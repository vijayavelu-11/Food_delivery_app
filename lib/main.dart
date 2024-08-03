
import 'package:flutter/material.dart';
import 'package:food_delivery_app/auth/loginOrRegister.dart';
import 'package:food_delivery_app/models/resturant.dart';
import 'package:food_delivery_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(
    create: (context) => ThemeProvider()),
    ChangeNotifierProvider(
    create: (context) => Restuarnt())
    ],
    child: const MyApp(),),
    
    
    );
   
    
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:   const LoginOrRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
