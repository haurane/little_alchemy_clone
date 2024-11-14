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

  Future<void> discoverItem(List<String> names) async {
    await repository.discoverItems(names);
    loadItems();
  }
}
