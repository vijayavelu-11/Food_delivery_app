import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_app/models/food.dart';

class Foodtile extends StatelessWidget {
  final Food food;
  final void Function ()? onTap;
  const Foodtile({super.key, required this.food,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(food.name),
                      Text('\₹'+ food.price.toString(),
                      style: TextStyle(color:Theme.of(context).colorScheme.primary  ,),
                      ),
                      const SizedBox(height: 10,),
                      Text(food.discription,
                      style: TextStyle(color:Theme.of(context).colorScheme.inversePrimary  ,),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 15,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(food.imagepath,height: 100,))
              ],
            ),
          ),
        ),
        Divider(
          color:Theme.of(context).colorScheme.tertiary,
          endIndent: 25,
          indent: 25,
        )
      ],
    );
  }
}