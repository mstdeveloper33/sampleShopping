import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ["Avacado ", "4.00", "assets/images/avacado.jpg", Colors.green],
    ["Banana ", "2.50", "assets/images/banana.jpg", Colors.yellow],
    ["Chicken ", "12.80", "assets/images/chicken.jpg", Colors.brown],
    ["Water ", "1.00", "assets/images/water.jpg", Colors.blue],
  ];

  List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
