import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/cart_item.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:intl/intl.dart';

class Restuarnt extends ChangeNotifier{
  final List<Food> menu =[
     
     Food(
      name:"Classic Bruger",
      discription:"A burger is a patty of ground Classic Bruger grilled and placed between two halves of a bun",
      imagepath:"lib/image/burger.jpg",
      price: 199,
      category: FoodCategory.BURGERS,
      availableAddons: [
        Addon(name: "chess", price: 10),
        Addon(name: "bacon", price: 10),
        Addon(name: "avocado", price: 10)
      ],
     ),

     Food(
      name:"Chicken Bruger",
      discription:"A burger is a patty of ground Chicken Brugerf grilled and placed between two halves of a bun",
      imagepath:"lib/image/burger3.jpg",
      price: 199,
      category: FoodCategory.BURGERS,
      availableAddons: [
        Addon(name: "chess", price: 10),
        Addon(name: "bacon", price: 10),
        Addon(name: "avocado", price: 10)
      ],
     ),

     Food(
      name:"Beef Bruger",
      discription:"A burger is a patty of ground beef grilled and placed between two halves of a bun",
      imagepath:"lib/image/burger4.jpg",
      price: 199,
      category: FoodCategory.BURGERS,
      availableAddons: [
        Addon(name: "chess", price: 10),
        Addon(name: "bacon", price: 10),
        Addon(name: "avocado", price: 10)
      ],
     ),

     Food(
      name:"Cheese Chicken Bruger",
      discription:"A burger is a patty of ground Cheese Chicken Bruger grilled and placed between two halves of a bun",
      imagepath:"lib/image/burger2.jpg",
      price: 199,
      category: FoodCategory.BURGERS,
      availableAddons: [
        Addon(name: "chess", price: 10),
        Addon(name: "bacon", price: 10),
        Addon(name: "avocado", price: 10)
      ],
     ),

     Food(
      name:"Crispy Chicken Bruger",
      discription:"A burger is a patty of ground crispy Chicken Bruger grilled and placed between two halves of a bun",
      imagepath:"lib/image/burger.jpg",
      price: 199,
      category: FoodCategory.BURGERS,
      availableAddons: [
        Addon(name: "chess", price: 10),
        Addon(name: "bacon", price: 10),
        Addon(name: "avocado", price: 10)
      ],
     ),

     //salad
     Food(
      name:"Salad",
      discription:"A salad is a dish consisting of mixed ingredients, frequently vegetables",
      imagepath:"lib/image/salad.jpg",
      price: 199,
      category: FoodCategory.SALADS,
      availableAddons: [
        Addon(name: "chess", price: 10),
        Addon(name: "bacon", price: 10),
        Addon(name: "avocado", price: 10)
      ],
     ),

     Food(
      name:"Salad",
      discription:"A salad is a dish consisting of mixed ingredients, frequently vegetables",
      imagepath:"lib/image/salad.jpg",
      price: 199,
      category: FoodCategory.SALADS,
      availableAddons: [
        Addon(name: "chess", price: 10),
        Addon(name: "bacon", price: 10),
        Addon(name: "avocado", price: 10)
      ],
     ),
     Food(
      name:"Salad",
      discription:"A salad is a dish consisting of mixed ingredients, frequently vegetables",
      imagepath:"lib/image/salad.jpg",
      price: 199,
      category: FoodCategory.SALADS,
      availableAddons: [
        Addon(name: "chess", price: 10),
        Addon(name: "bacon", price: 10),
        Addon(name: "avocado", price: 10)
      ],
     ),
     Food(
      name:"Salad",
      discription:"A salad is a dish consisting of mixed ingredients, frequently vegetables",
      imagepath:"lib/image/salad.jpg",
      price: 199,
      category: FoodCategory.SALADS,
      availableAddons: [
        Addon(name: "chess", price: 10),
        Addon(name: "bacon", price: 10),
        Addon(name: "avocado", price: 10)
      ],
     ),

     Food(
      name:"Salad",
      discription:"A salad is a dish consisting of mixed ingredients, frequently vegetables",
      imagepath:"lib/image/salad.jpg",
      price: 199,
      category: FoodCategory.SALADS,
      availableAddons: [
        Addon(name: "chess", price: 10),
        Addon(name: "bacon", price: 10),
        Addon(name: "avocado", price: 10)
      ],
     ),

     //sides
     Food(
      name:"Sides",
      discription:"a serving of a portion of food in addition to the principal food, usually on a separate dish",
      imagepath:"lib/image/sides.jpg",
      price: 199,
      category: FoodCategory.SIDES,
      availableAddons: [
        Addon(name: "chess", price: 10),
        Addon(name: "bacon", price: 10),
        Addon(name: "avocado", price: 10)
      ],
     ),

     Food(
      name:"Sides",
      discription:"a serving of a portion of food in addition to the principal food, usually on a separate dish",
      imagepath:"lib/image/sides.jpg",
      price: 199,
      category: FoodCategory.SIDES,
      availableAddons: [
        Addon(name: "chess", price: 10),
        Addon(name: "bacon", price: 10),
        Addon(name: "avocado", price: 10)
      ],
     ),

     Food(
      name:"Sides",
      discription:"a serving of a portion of food in addition to the principal food, usually on a separate dish",
      imagepath:"lib/image/sides.jpg",
      price: 199,
      category: FoodCategory.SIDES,
      availableAddons: [
        Addon(name: "chess", price: 10),
        Addon(name: "bacon", price: 10),
        Addon(name: "avocado", price: 10)
      ],
     ),

     Food(
      name:"Sides",
      discription:"a serving of a portion of food in addition to the principal food, usually on a separate dish",
      imagepath:"lib/image/sides.jpg",
      price: 199,
      category: FoodCategory.SIDES,
      availableAddons: [
        Addon(name: "chess", price: 10),
        Addon(name: "bacon", price: 10),
        Addon(name: "avocado", price: 10)
      ],
     ),

     Food(
      name:"Sides",
      discription:"a serving of a portion of food in addition to the principal food, usually on a separate dish",
      imagepath:"lib/image/sides.jpg",
      price: 199,
      category: FoodCategory.SIDES,
      availableAddons: [
        Addon(name: "chess", price: 10),
        Addon(name: "bacon", price: 10),
        Addon(name: "avocado", price: 10)
      ],
     ),

     //dessert
     Food(
      name:"desserts",
      discription:"A dessert is a type of food that is eaten after lunch or dinner, and sometimes after a light meal or snack",
      imagepath:"lib/image/desserts.jpg",
      price: 199,
      category: FoodCategory.DESSERTS,
      availableAddons: [
        Addon(name: "chess", price: 10),
        Addon(name: "bacon", price: 10),
        Addon(name: "avocado", price: 10)
      ],
     ),
     Food(
      name:"desserts",
      discription:"A dessert is a type of food that is eaten after lunch or dinner, and sometimes after a light meal or snack",
      imagepath:"lib/image/desserts2.jpg",
      price: 199,
      category: FoodCategory.DESSERTS,
      availableAddons: [
        Addon(name: "chess", price: 10),
        Addon(name: "bacon", price: 10),
        Addon(name: "avocado", price: 10)
      ],
     ),
     Food(
      name:"desserts",
      discription:"A dessert is a type of food that is eaten after lunch or dinner, and sometimes after a light meal or snack",
      imagepath:"lib/image/desserts3.jpg",
      price: 199,
      category: FoodCategory.DESSERTS,
      availableAddons: [
        Addon(name: "chess", price: 10),
        Addon(name: "bacon", price: 10),
        Addon(name: "avocado", price: 10)
      ],
     ),
     Food(
      name:"desserts",
      discription:"A dessert is a type of food that is eaten after lunch or dinner, and sometimes after a light meal or snack",
      imagepath:"lib/image/desserts4.jpg",
      price: 199,
      category: FoodCategory.DESSERTS,
      availableAddons: [
        Addon(name: "chess", price: 10),
        Addon(name: "bacon", price: 10),
        Addon(name: "avocado", price: 10)
      ],
     ),
     Food(
      name:"desserts",
      discription:"A dessert is a type of food that is eaten after lunch or dinner, and sometimes after a light meal or snack",
      imagepath:"lib/image/desserts.jpg",
      price: 199,
      category: FoodCategory.DESSERTS,
      availableAddons: [
        Addon(name: "chess", price: 10),
        Addon(name: "bacon", price: 10),
        Addon(name: "avocado", price: 10)
      ],
     ),

     //drinks
     Food(
      name:"drinks",
      discription:"A drink is a form of liquid which has been prepared for human consumption",
      imagepath:"lib/image/drinks.jpg",
      price: 199,
      category: FoodCategory.DRINKS,
      availableAddons: [
        Addon(name: "chess", price: 10),
        Addon(name: "bacon", price: 10),
        Addon(name: "avocado", price: 10)
      ],
     ),
      Food(
      name:"drinks",
      discription:"A drink is a form of liquid which has been prepared for human consumption",
      imagepath:"lib/image/drinks.jpg",
      price: 199,
      category: FoodCategory.DRINKS,
      availableAddons: [
        Addon(name: "chess", price: 10),
        Addon(name: "bacon", price: 10),
        Addon(name: "avocado", price: 10)
      ],
     ),
      Food(
      name:"drinks",
      discription:"A drink is a form of liquid which has been prepared for human consumption",
      imagepath:"lib/image/drinks.jpg",
      price: 199,
      category: FoodCategory.DRINKS,
      availableAddons: [
        Addon(name: "chess", price: 10),
        Addon(name: "bacon", price: 10),
        Addon(name: "avocado", price: 10)
      ],
     ),
      Food(
      name:"drinks",
      discription:"A drink is a form of liquid which has been prepared for human consumption",
      imagepath:"lib/image/drinks.jpg",
      price: 199,
      category: FoodCategory.DRINKS,
      availableAddons: [
        Addon(name: "chess", price: 10),
        Addon(name: "bacon", price: 10),
        Addon(name: "avocado", price: 10)
      ],
     ),
      Food(
      name:"drinks",
      discription:"A drink is a form of liquid which has been prepared for human consumption",
      imagepath:"lib/image/drinks.jpg",
      price: 199,
      category: FoodCategory.DRINKS,
      availableAddons: [
        Addon(name: "chess", price: 10),
        Addon(name: "bacon", price: 10),
        Addon(name: "avocado", price: 10)
      ],
     ),

  ];


 List<CartItem> get cart => _cart;

 //user cart
 final List<CartItem> _cart =[];


  //add to cart
  void addToCart(Food food,List<Addon> selectedAddond){
    CartItem?  cartItem= _cart.firstWhereOrNull((item) {
      bool isSamefood = item.food ==food;

      bool isSameAddons = ListEquality().equals(item.selectedAddond, selectedAddond);

      return isSamefood && isSameAddons;

    });

    if(cartItem != null){
      cartItem.quantity++;
    }else{
      _cart.add(
        CartItem(food: food, selectedAddond: selectedAddond,)
      );
    }
    notifyListeners();

  }
  void removerFromCart (CartItem cartItem){
    int cartIndex=_cart.indexOf(cartItem);
    if(cartIndex != -1){
      if(_cart[cartIndex].quantity>1 ){
        _cart[cartIndex].quantity--;
      }else{
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }
  double gettotalprice(){
    double total= 0.0;

    for(CartItem cartItem in _cart){
      double itemTotal = cartItem.food.price;

      for(Addon addon in cartItem.selectedAddond){
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }
  int getTotalItemcount(){
    int totalItemcount=0;

    for(CartItem cartItem in _cart){
      totalItemcount += cartItem.quantity;
    }
    return totalItemcount;
  }

  void clearCart(){
    _cart.clear();
    notifyListeners();
  }


  String displayCartRecipt(){
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    String formattedDate = DateFormat('yyyy-MM-dd  HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("____________");

    for (final cartItem in _cart){
      receipt.writeln(
        "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
       if (cartItem.selectedAddond.isNotEmpty){
        receipt.writeln(
          "Add-ons: ${_formatAddons(cartItem.selectedAddond)}"
        );
       } 
       receipt.writeln();
    }
    receipt.writeln("____________");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemcount()}");
    receipt.writeln("Total Price: ${_formatPrice(gettotalprice())}");

    return receipt.toString();

  }

  String _formatPrice(double price){
    return "\₹${price.toStringAsFixed(2)}";

  }

  String _formatAddons(List<Addon> addons){
    return addons
    .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
    .join(", ");
  }
  

}