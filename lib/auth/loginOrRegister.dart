import 'package:flutter/material.dart';
import 'package:food_delivery_app/PAGES/login_page.dart';
import 'package:food_delivery_app/PAGES/register_page.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
   bool shoeloginPage=true;
   void togglePages(){
    setState(() {
      shoeloginPage=!shoeloginPage;
    });
   }
  @override
  Widget build(BuildContext context) {
    if(shoeloginPage){
      return LoginPage(onTap: togglePages);
    }else{
      return RegisterPage(onTap: togglePages);
    }
  
}
}