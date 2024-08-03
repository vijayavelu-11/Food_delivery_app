import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/resturant.dart';
import 'package:provider/provider.dart';

class Myrecipt extends StatelessWidget {
  const Myrecipt({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(left:25,right: 25,top: 55),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("Thank you for your order!"),
          const SizedBox(height: 25,),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).colorScheme.inversePrimary),
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.all(25),
            child: Consumer<Restuarnt>(
              builder: (context,restuarnt,child)=>Text(restuarnt.displayCartRecipt()),
            ),
          ),
          const SizedBox(height: 25,),
          const Text("Estimated delivery time is : 4:10 PM"),
        ],),
      ),
      );
  }
}