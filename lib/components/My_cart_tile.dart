import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_app/components/My_quntity_selector.dart';
import 'package:food_delivery_app/models/cart_item.dart';
import 'package:food_delivery_app/models/resturant.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({super.key,required this.cartItem}); 

  @override
  Widget build(BuildContext context) {
    return Consumer<Restuarnt>(
      builder: (context,restuarnt,child)=> Container(
        decoration: BoxDecoration(
          color:Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
        child: Column(
          children: [
            //food image
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(cartItem.food.imagepath,
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,),
                        ),
                    ],
                  ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                                    
                        //food name
                        Text(cartItem.food.name),
                        //food price
                        Text('\₹'+ cartItem.food.price.toString(),
                        style: TextStyle(color:Theme.of(context).colorScheme.primary,),),
                      ],
                      ),
                    ),
                    const Spacer(),
                    QuantitySelector(food: cartItem.food,
                     quantity: cartItem.quantity,
                     onDecrement: (){
                      restuarnt.removerFromCart(cartItem);
                     },
                    onIncrement: (){
                      restuarnt.addToCart(cartItem.food, cartItem.selectedAddond);
                    },
                     )
                ],
              ),
            ),
            SizedBox(
              height: cartItem.selectedAddond.isEmpty ? 0:60,
              child:ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 10,bottom: 10,right: 10),
                children: cartItem.selectedAddond.map((addon) => 
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: FilterChip(
                    label: Row(children: [
                      Text(addon.name),
                      Text('(\₹' + addon.price.toString() +')'),
                    ],
                    ),
                    shape: StadiumBorder(
                      side: BorderSide(color:Theme.of(context).colorScheme.primary,),
                    ),
                   onSelected: (vale){},
                   backgroundColor: Theme.of(context).colorScheme.secondary,
                   labelStyle: TextStyle(
                    color:Theme.of(context).colorScheme.inversePrimary,
                    fontSize: 12
                   ),
                   ),
                ),
                 )
                 .toList(),
              )
            )

            
          ],
        ),

      ),
    );

    
  }
}