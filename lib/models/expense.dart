import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';
import "package:flutter/material.dart";

const uuid = Uuid();
final formtter = DateFormat.yMd();

const Map iconsDict = {
  Category.food: Icon(Icons.fastfood_rounded),
  Category.shopping: Icon(Icons.shopping_bag),
  Category.work: Icon(Icons.work),
  Category.luxry: Icon(Icons.flight_takeoff),
};

Map imagesDict = {
  Category.food: "lib/assets/images/food.jpg",
  Category.luxry: "lib/assets/images/luxry.jpeg",
  Category.shopping: "lib/assets/images/shopping.jpeg",
  Category.work: "lib/assets/images/work.jpeg",
};

enum Category { food, shopping, work, luxry }

class Expense {
  Expense({
    required this.title,
    required this.category,
    required this.date,
    required this.amount,
  }) : id = uuid.v4();

  final String title;
  final Category category;
  final DateTime date;
  final num amount;
  final String id;

  String get formattedDate => formtter.format(date);
}
