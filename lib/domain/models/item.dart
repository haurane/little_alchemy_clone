import 'dart:developer';

import 'package:little_alchemy_clone/domain/models/discoverer.dart';

class Item implements Comparable{
  final String name;
  final String description;
  final String imgPath;
  final bool isDiscovered;
  final int id;
  final Map<int, List<int>> discoverables;

  Item({required this.id, required this.name, required this.description, required this.imgPath, required this.discoverables, this.isDiscovered = false});

  List<int> discover(Item other){
      log("${this.name} ${other.name}");
      return Discoverer.discover(this, other);
  }
  
  @override
  int compareTo(other) {
    if (other is Item){
      return name.compareTo(other.name);
    } else throw Exception("Not an item");
  }

  

}