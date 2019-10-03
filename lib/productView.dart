import 'package:flutter/material.dart';
bool canSend = false;
class Products {
  final String name;
  int quantity;
  bool checked;

  Products(
      {this.name, this.quantity, this.checked});
}
class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
  List<Products> ProductsList =
  [
    Products(
      name: 'SHAKE - Chocolate',
      quantity: 0, checked: false,
    ),
    Products(
      name:   'SHAKE - Chocolate mint',
      quantity: 0, checked: false,
    ),
    Products(
      name:   'SHAKE - Chocolate Orange',
      quantity: 0, checked: false,
    ),
    Products(
      name:   'SHAKE - Cappuccino',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'SHAKE - Banana',
      quantity: 0, checked: false,
    ),
    Products(
      name:  'SHAKE - Vanilla',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'SHAKE - Strawberry',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'SHAKE - Fruits of the forest',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'TDR SHAKE - Chocolate',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'TDR SHAKE - Banana',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'TDR SHAKE - Vanilla',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'READYMADE - Chocolate',
      quantity: 0, checked: false,
    ),
    Products(
      name:  'READYMADE - Banana',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'READYMADE - Strawberry',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'READYMADE - Tropical Smoothie',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'MEAL BAR - Lemon',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'MEAL BAR - Strawberry and Apple',
      quantity: 0, checked: false,
    ),
    Products(
      name:  'MEAL BAR - Malt toffee',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'MEAL BAR - Chocolate orange',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'MEAL BAR - Chocolate',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'MEAL BAR - Choc mint',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'MEAL BAR - Cranberry',
      quantity: 0, checked: false,
    ),
    Products(
      name:  'MEAL BAR - Peanut',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'MEAL BAR - Festive Bar',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'MEAL BAR - Chocolate',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'TDR MEAL BAR - Lemon',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'BITES - Choc mint',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'DESSERT - Chocolate and Hazelnut',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'PORRIDGE - Original',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'PORRIDGE - Apple and cinnamon',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'PORRIDGE - Maple and pecan',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'PACKET MEAL - Mac cheese',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'PACKET MEAL - Spag Bol',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'PACKET MEAL - Chicken tikka rice',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'PACKET MEAL - Thai Green Noodles',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'PACKET MEAL - Spicy Cous Cous',
      quantity: 0, checked: false,
    ),
    Products(
      name:'PACKET MEAL - Spicy Cous Cous',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'SOUP - Chicken and mushroom Soup',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'SOUP - Vegetable Soup with croutons',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'SOUP - Oriental soup',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'SOUP - Mushroom soup',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'SOUP - Leek and potato soup',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'TDR SOUP - Chicken & Mushroom',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'SMOOTHIE - Black currant and Apple',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'SMOOTHIE - Cherry and strawberry',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'Smoothie - Breakfast Strawberry & Banana',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'Lemon & Lime - WATER FLAVOURING',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'Orange - WATER FLAVOURING',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'Water melon - WATER FLAVOURING',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'Cucumber & Mint - WATER FLAVOURING',
      quantity: 0, checked: false,
    ),
    Products(
      name: 'Raspberry & Elderflower - WATER FLAVOURING',
      quantity: 0, checked: false,
    ),
    Products(
      name:  'Golden Veg WATER FLAVOURING',
      quantity: 0, checked: false,
    ),
  ];



