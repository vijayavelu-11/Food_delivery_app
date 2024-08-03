import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_recipt.dart';

class DeliveryProgressPage extends StatelessWidget {
  const DeliveryProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Delivery progress"),
      backgroundColor: Colors.transparent,
      centerTitle: true,
      ),
      bottomNavigationBar: _builBottomNavBar(context),
      body: Column(
        children: [
          Myrecipt(),
        ],
      ),
    );
  }

  Widget _builBottomNavBar(BuildContext context){
    return Container(
      height: 100,
      decoration: BoxDecoration(
       color:  Theme.of(context).colorScheme.secondary,
       borderRadius: const BorderRadius.only(topRight: Radius.circular(40),topLeft:Radius.circular(40) )
      ),
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: (){},
              icon: Icon(Icons.person),
            ),
          ),
          const SizedBox(width: 10,),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("Vijayavelu",style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Theme.of(context).colorScheme.inversePrimary),
            ),
            Text("Driver",style: TextStyle(fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.primary),)
          ],
          ),
          const Spacer(),
          Row(
            children: [
              Container(
            decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: (){},
              icon: Icon(Icons.message),
              color: Colors.blue,
            ),
          ),
          const SizedBox(width: 10,),
          Container(
            decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: (){},
              icon: Icon(Icons.call),
              color: Colors.green,
            ),
          ),
            ],
          )
        ],
      ),
    );
  }
}
