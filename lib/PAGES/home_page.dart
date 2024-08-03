import 'package:flutter/material.dart';
import 'package:food_delivery_app/PAGES/food_pages.dart';
import 'package:food_delivery_app/components/My_drawer.dart';
import 'package:food_delivery_app/components/My_food_tile.dart';
import 'package:food_delivery_app/components/my-tab.dart';
import 'package:food_delivery_app/components/my_current_location.dart';
import 'package:food_delivery_app/components/my_discription.dart';
import 'package:food_delivery_app/components/my_silver_app_bar.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:food_delivery_app/models/resturant.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  late TabController _tabController;
  @override
  void initState(){
    super.initState();
    _tabController=TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose(){
    _tabController.dispose();
    super.dispose();
  }
 List<Food> _filtermemuByCategory(FoodCategory category, List<Food> fullMenu){
  return fullMenu.where((food) => food.category==category).toList();
 }

  List<Widget> getFoodinThiscategory(List<Food>fullMenu){
    return FoodCategory.values.map((category){
      List<Food> categorymenu = _filtermemuByCategory(category,fullMenu);

      return ListView.builder(
        itemCount: categorymenu.length,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context,index){
          final food =  categorymenu[index];
         return Foodtile(food: food, onTap: ()=> Navigator.push(context, MaterialPageRoute( builder: (context)=> FoodPage(food: food,)),) 
         );
        },
      );
    }).toList();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      drawer: MyDrawer(),
  
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySilverAppbar(child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Divider(
                indent: 25,
                endIndent: 25,
              color:Theme.of(context).colorScheme.secondary,
              ),
              MyCurrentLocation(),
              MydiscriptionBox(),
              ],
          ), title: MytabBar(tabController: _tabController),),
          
        ],
        body: 
        
        Consumer<Restuarnt>(builder: (context,restuarnt,child)=>TabBarView(
          controller: _tabController,
          children: getFoodinThiscategory(restuarnt.menu  ))
        ,),
      ),

    );
  }
}