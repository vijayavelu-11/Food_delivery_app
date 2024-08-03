import 'package:flutter/material.dart';
import 'package:food_delivery_app/PAGES/setting_page.dart';
import 'package:food_delivery_app/components/my_drawer_title.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor:  Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(Icons.lock_reset_rounded,size: 40,),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(color: Theme.of(context).colorScheme.secondary ,),
          ),
          MyDrawerTitle(text: "H O M E", icon: Icons.home, onTap: () => Navigator.pop(context)),
          MyDrawerTitle(text: "S E T T I N G S", icon: Icons.settings, onTap: (){
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) => const SettindPage(),)
            );
          }),
          const Spacer(),
          MyDrawerTitle(text: "L O G O U T", icon: Icons.logout, onTap: (){}),
          const SizedBox(height: 25,),

        ],
      ),
    );
  }
}