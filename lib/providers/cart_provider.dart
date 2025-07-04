import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

class CartProvider extends ChangeNotifier{
  final List<Map<String,dynamic>> cart = [
     {
    'id': '0',
    'title': 'Men\'s Nike Shoes',
    'price': 44.52,
    'imageUrl': 'assets/images/shoe1.png',
    'company': 'Nike',
    'size': 9,
  },
  ];

  void addProduct(Map<String,dynamic> product){
    cart.add(product);
    notifyListeners();
  }

  void removeProduct(Map<String,dynamic> product){
    cart.remove(product);
    notifyListeners();
  }
}