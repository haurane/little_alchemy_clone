import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:little_alchemy_clone/domain/models/item.dart';
import 'package:little_alchemy_clone/domain/repositories/item_repository.dart';

class DiscoveredItemsCubit extends Cubit<List<Item>> {
  final ItemRepository repository;

  DiscoveredItemsCubit(this.repository) : super([]) {
    loadItems();
  }

  Future<void> loadItems() async {
    final discoveredItems = await repository.getDiscoveredItems();
    emit(discoveredItems);
  }

  Future<void> discoverItem(Item i1, Item i2) async {
    final discoveries = await repository.discoverItems(i1, i2);
    for (var item in discoveries) {
      log(item.name);
      await repository.updateItem(Item(
          description: item.description,
          name: item.name,
          discoverables: item.discoverables,
          id: item.id,
          imgPath: item.imgPath,
          isDiscovered: true));
    }
    loadItems();
  }
}
