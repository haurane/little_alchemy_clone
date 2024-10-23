import 'dart:developer';

import 'package:little_alchemy_clone/domain/models/item.dart';

List<List<List<int>>> discoverMatrix = 
[
  [[] ,[3],[4],[],],
  [[3],[] ,[] ,[],],
  [[4],[] ,[] ,[],],
  [[] ,[] ,[] ,[],],
];

class Discoverer {
  static List<int> discover(Item i1, Item i2){
    return discoverMatrix[i1.id-1][i2.id-1];
  }
}