import 'package:coffeeshop/models/coffee.dart';
import 'package:coffeeshop/models/coffee_shop.dart';
import 'package:coffeeshop/models/coffee_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
        builder: (context, value, child) => SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    //heading message
                    const Text(
                      "How would you like your coffee?",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),

                    SizedBox(height: 25),

                    //list of coffee to buy
                    Expanded(
                        child: ListView.builder(
                            itemCount: value.coffeeShop.length,
                            itemBuilder: (context, index) {
                              // get individual coffee
                              Coffee eachCoffee = value.coffeeShop[index];
                              // return tje tile for this coffee
                              return CoffeTile(coffee: eachCoffee);
                            }))
                  ],
                ),
              ),
            ));
  }
}
