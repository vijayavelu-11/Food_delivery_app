import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_buttons.dart';
import 'package:food_delivery_app/components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

   RegisterPage({super.key,required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
  
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailcontroller =TextEditingController();
  final TextEditingController passwordcontroller =TextEditingController();
  final TextEditingController Newpasswordcontroller =TextEditingController();
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
        Text("Let's Create An Account For You",style: TextStyle(fontSize: 16,color:Theme.of(context).colorScheme.inversePrimary ),),
        const SizedBox(height: 25,),
        
          //email txfield
        MyTextfield(controller:emailcontroller , obscureText: false, hintText: "Email"),
        const SizedBox(height: 25,),

          //pasd txt field
        MyTextfield(controller: passwordcontroller, obscureText: true, hintText: "Password"),
        const SizedBox(height: 25,),
        MyTextfield(controller: Newpasswordcontroller, obscureText: true, hintText: "Confirm Password"),
        const SizedBox(height: 25,),
          //sign in btn
        MyButton(onTap: (){}, text: "Sing Up"),
        const SizedBox(height: 25,),
          //registnow
        Row(mainAxisAlignment:MainAxisAlignment.center ,
          children: [
          Text("Already Have An account ?"),
          const SizedBox(width: 4,),
          GestureDetector(
            onTap: widget.onTap,
            child: Text("Login Now",
            style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary,
            fontWeight: FontWeight.bold),))
        ],)
        ],),
      ),
    );
  }
}