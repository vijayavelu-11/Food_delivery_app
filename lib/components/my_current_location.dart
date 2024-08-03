import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});
  void openloactionboxsearch(BuildContext context ){
    showDialog(context: context,
     builder: (context)=> AlertDialog(
      title: const Text("Your Location"),
      content: const TextField(
        decoration: InputDecoration(hintText: "Search Address"),

      ),
      actions: [
        MaterialButton(onPressed: ()=>Navigator.pop (context),
        child: const Text("Cancel"),
        ),
        MaterialButton(onPressed: ()=>Navigator.pop (context),
        child: const Text("Save"),
        ),
      ],

     ),);
  }

  @override
  Widget build(BuildContext context) {

    return  Padding(
      padding: EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Delivery Now",style: TextStyle(color:Theme.of(context).colorScheme.primary),),
          GestureDetector(
            onTap: () => openloactionboxsearch(context),
            child: Row(
              children: [
                Text("Chennai ,India",
                style: TextStyle(color:Theme.of(context).colorScheme.inversePrimary,fontWeight: FontWeight.bold),) ,
                Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          )

        ],
      ),
    );
  }
}