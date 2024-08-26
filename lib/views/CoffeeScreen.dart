import 'dart:core';

import 'package:flutter/material.dart';


import '../models/CoffeeItem.dart';
import '../widgets/CoffeeWidget.dart';

class CoffeeScreen extends StatefulWidget{
  const CoffeeScreen({super.key});



  @override
  _CoffeeScreenState createState() => _CoffeeScreenState();
}

class _CoffeeScreenState extends State<CoffeeScreen> {
  List<CoffeeItem> coffees = [
    CoffeeItem(title: "1번 커피", description: "1번 설명", url: "assets/coffee.jpg"),
    CoffeeItem(title: "2번 커피", description: "2번 설명", url: "assets/coffee.jpg"),
    CoffeeItem(title: "3번 커피", description: "3번 설명", url: "assets/coffee.jpg"),
    CoffeeItem(title: "4번 커피", description: "4번 설명", url: "assets/coffee.jpg"),
    CoffeeItem(title: "5번 커피", description: "5번 설명", url: "assets/coffee.jpg"),
    CoffeeItem(title: "6번 커피", description: "6번 설명", url: "assets/coffee.jpg"),
    CoffeeItem(title: "7번 커피", description: "7번 설명", url: "assets/coffee.jpg"),
    CoffeeItem(title: "8번 커피", description: "8번 설명", url: "assets/coffee.jpg"),
  ];

  List<CoffeeItem> displayedCoffees =[];
  bool showFavorites =false;

  void _removeCoffeeItem(int index) {
    setState(() {
      coffees.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Coffee Items"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: coffees.length,
        itemBuilder: (context, index) {
          return CoffeeWidget(
            coffeeItem: coffees[index],
            index: index,
            onDelete: _removeCoffeeItem,
          );
        },
      ),
    );
  }
}