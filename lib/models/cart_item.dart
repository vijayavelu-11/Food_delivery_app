import 'package:food_delivery_app/models/food.dart';

class CartItem{
  Food food;
  List<Addon> selectedAddond;
  int quantity;

  CartItem({
    required this.food,
    required this.selectedAddond,
     this.quantity = 1,

  });

   double get totalPrice{
    double addonPrice=
    selectedAddond.fold(0, (sum, addon) => sum + addon.price);
    return(food.price+addonPrice)* quantity;
   }
}