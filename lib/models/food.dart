
class Food{
  final String name;
  final String discription;
  final String imagepath;
  final double price;
  final FoodCategory category;
  List<Addon> availableAddons;

  Food({
  required this.name,
  required this.discription,
  required this.imagepath,
  required this.price,
  required this.category,
  required this.availableAddons
});

}

enum FoodCategory{
  BURGERS,
  SALADS,
  SIDES,
  DESSERTS,
  DRINKS,
}
class Addon{
  String name;
  double price;

  Addon({
    required this.name,
    required this.price,
  });
}