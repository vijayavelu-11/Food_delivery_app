import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_app/components/my_buttons.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:food_delivery_app/models/resturant.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon,bool> selectedAddond={};
   FoodPage({super.key,
  required this.food,}) {
    for (Addon addon in food.availableAddons) { 
      selectedAddond[addon]=false;

    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {

  void addToCart(Food food,Map<Addon,bool>selectedAddond){

    Navigator.pop(context);


    List<Addon> currentlyselectedAddons =[];
    for(Addon addon in widget.food.availableAddons){
      if(widget.selectedAddond[addon]==true){
        currentlyselectedAddons.add(addon);
      }
    }
    context.read<Restuarnt>().addToCart(food, currentlyselectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return  Stack(children: [
      Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //image
            Image.asset(widget.food.imagepath),
           Padding(
             padding: const EdgeInsets.all(25.0),
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              
               //food name
              Text(widget.food.name,style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              const SizedBox(height: 10,),
              //food price
              Text('\₹'+ widget.food.price.toString() ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color:Theme.of(context).colorScheme.primary,),),
              //foo description
              Text(widget.food.discription,),
              const SizedBox(height: 20,),
              Divider(color:Theme.of(context).colorScheme.secondary,),
              const SizedBox(height: 10,),
              //addons
              Text("Add-ons",style: TextStyle(color:Theme.of(context).colorScheme.inversePrimary,fontSize: 16,fontWeight: FontWeight.bold),),
              const SizedBox(height: 10,),
              //addons
              Container( decoration: BoxDecoration(
                border: Border.all(color:Theme.of(context).colorScheme.tertiary,),
                borderRadius: BorderRadius.circular(8),
              ),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemCount: widget.food.availableAddons.length,
                  itemBuilder: (context,index){
                    Addon addon = widget.food.availableAddons[index];
                     return CheckboxListTile(
                      title: Text(addon.name),
                      subtitle: Text('\₹${addon.price}',style: TextStyle(color:Theme.of(context).colorScheme.primary,),),
                      value: widget.selectedAddond[addon],
                      onChanged: (bool ?value){
                        setState(() {
                          widget.selectedAddond[addon]=value!;
                        });
                      },
                     );
                  },
                ),
              ),
             ],),
           ),
           const SizedBox(height: 10,),
           MyButton(onTap: () => addToCart(widget.food,widget.selectedAddond), 
           text: "Add to cart" ),
           const SizedBox(height: 25,),
          ],
        ),
      ),
    ),
    SafeArea(
      child: Opacity(
        opacity: 0.3,
        child: Container(
          margin: const EdgeInsets.only(left: 25),
          decoration: BoxDecoration(
            color:Theme.of(context).colorScheme.secondary,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
            onPressed: ()=>Navigator.pop(context),
          ),
        ),
      ),
    ),


    ],
    );
  }
}