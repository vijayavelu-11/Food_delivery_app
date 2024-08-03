import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_app/models/food.dart';

class MytabBar extends StatelessWidget {
  final TabController tabController;

  const MytabBar({super.key,required this.tabController});
   
   List<Tab> _buildCategoeryTabs(){
    return FoodCategory.values.map((category){
      return Tab(
        text: category.toString().split('.').last,
      );
    }).toList();
   }

  @override
  Widget build(BuildContext context) {
    return  Container(
  
      child: TabBar(
        controller: tabController,
        tabs: _buildCategoeryTabs(),
      ),
    );
  }
}