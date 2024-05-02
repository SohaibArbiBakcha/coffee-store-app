import 'package:coffeeshop/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeTile extends StatelessWidget {
  final Coffee coffee;
  const CoffeTile({super.key, required this.coffee});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(coffee.name),
      subtitle: Text(coffee.price),
      leading: Image.asset(coffee.imagePath),
    );
  }
}
