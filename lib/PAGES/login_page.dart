import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_app/PAGES/home_page.dart';
import 'package:food_delivery_app/components/my_buttons.dart';
import 'package:food_delivery_app/components/my_textfield.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

   const LoginPage({super.key,required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailcontroller =TextEditingController();
  final TextEditingController passwordcontroller =TextEditingController();

  void login()
  {Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePage(),));


  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          //logo
          Icon(Icons.lock_open_rounded,size: 70,color:Theme.of(context).colorScheme.inversePrimary ,),
           const SizedBox(height: 25,),
          //message
        Text("Food Delivery App",style: TextStyle(fontSize: 16,color:Theme.of(context).colorScheme.inversePrimary ),),
        const SizedBox(height: 25,),
          //email txfield
        MyTextfield(controller: emailcontroller, obscureText: false, hintText: "Email"),
        const SizedBox(height: 25,),

          //pasd txt field
        MyTextfield(controller: passwordcontroller, obscureText: true, hintText: "Password"),
        const SizedBox(height: 25,),
          //sign in btn
        MyButton(onTap: login, text: "Sing In",),
        const SizedBox(height: 25,),
          //registnow
        Row(mainAxisAlignment:MainAxisAlignment.center ,
          children: [
          Text("Not a Member ?"),
          const SizedBox(width: 4,),
          GestureDetector(
            onTap: widget.onTap,
            child: Text("Register Now",
            style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary,
            fontWeight: FontWeight.bold),))
        ],)
        ],),
      ),
    );
  }
}