import 'dart:developer';

class Item implements Comparable{
  final String name;
  final String description;
  final String imgPath;
  final bool isDiscovered;
  final Map<String, List<String>> discoverables;

  Item({required this.name, required this.description, required this.imgPath, required this.discoverables, this.isDiscovered = false});

  List<String> discoverAll(Item other){
      log("${this.name} ${other.name}");
      return discoverables[other.name] ?? [];
  }

  Item discover(){
    return Item(description: description, name: name, imgPath: imgPath, discoverables: discoverables, isDiscovered: true);
  }
  
  @override
  int compareTo(other) {
    if (other is Item){
      return name.compareTo(other.name);
    } else throw Exception("Not an item");
  }

  

}