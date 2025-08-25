import 'package:flutter/material.dart';

// model for category
class Category {
  String name;
  Color? bgColor;

  // constructor
  Category({required this.name, this.bgColor});
}

// fake data

List<Category> categories = [
  Category(name: "Minimal", bgColor: Colors.lightBlue),
  Category(name: "Futuristic"),
  Category(name: "Cultural"),
  Category(name: "Abstract", bgColor: Colors.blueGrey),
  Category(name: "Portraits"),
  Category(name: "Landscapes"),
];
