import 'package:coffeeshop/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {
  // coffe for sale list
  final List<Coffee> _shop = [
    Coffee(name: "Latte", price: "3.50", imagePath: "lib/images/latte.png"),
    Coffee(
        name: "Long Coffee", price: "3.60", imagePath: "lib/images/black.png"),
    Coffee(
        name: "Ice Coffee",
        price: "4.10",
        imagePath: "lib/images/icedcoffee.png"),
    Coffee(name: "Expresso", price: "3.8", imagePath: "lib/images/expresso.png")
  ];

  // user cart
  List<Coffee> _userCart = [];

  // get coffee list
  List<Coffee> get coffeeShop => _shop;

  // get user cart
  List<Coffee> get userCart => _userCart;

  // add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  // remove item form cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
