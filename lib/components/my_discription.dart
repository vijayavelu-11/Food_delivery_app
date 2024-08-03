import 'package:flutter/material.dart';

class MydiscriptionBox extends StatelessWidget {
  const MydiscriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    var myPrimaryTextstyle = TextStyle(color:Theme.of(context).colorScheme.inversePrimary);
    var mySecondaryTextstyle = TextStyle(color:Theme.of(context).colorScheme.primary);
    return  Container(
      decoration: BoxDecoration(
        border: Border.all(color:Theme.of(context).colorScheme.secondary),
        borderRadius: BorderRadius.circular(10)

      ),
      padding: const EdgeInsets.all(25),
      margin:const EdgeInsets.only(left: 25,bottom:25,right: 25) ,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Column(
            children: [
              Text(" \₹200",style: myPrimaryTextstyle,),
              Text("Delivery Fee",style: mySecondaryTextstyle,),
            ],
          ),
          Column(
            children: [
              Text(" 15 - 30 min",style: myPrimaryTextstyle,),
              Text("Delivery Time",style: mySecondaryTextstyle),
            ],
          )

        ],
      ),
    );
  }
}