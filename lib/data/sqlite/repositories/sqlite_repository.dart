import 'package:little_alchemy_clone/domain/models/item.dart';
import 'package:little_alchemy_clone/domain/repositories/item_repository.dart';
import 'package:sqflite/sqflite.dart';

class SqliteRepository extends ItemRepository{

  final Future<Database> db;

  SqliteRepository({required this.db});

  @override
  Future<void> addItem(Item item) {
    // TODO: implement addItem
    throw UnimplementedError();
  }

  @override
  Future<void> deleteItem(Item item) {
    // TODO: implement deleteItem
    throw UnimplementedError();
  }

  @override
  Future<void> discoverItems(List<String> names) {
    // TODO: implement discoverItems
    throw UnimplementedError();
  }

  @override
  Future<List<Item>> getAllItems() {
    // TODO: implement getAllItems
    throw UnimplementedError();
  }

  @override
  Future<List<Item>> getDiscoveredItems() {
    // TODO: implement getDiscoveredItems
    throw UnimplementedError();
  }

  @override
  Future<Item> getItemByName(String name) {
    // TODO: implement getItemByName
    throw UnimplementedError();
  }

  @override
  Future<void> updateItem(Item item) {
    // TODO: implement updateItem
    throw UnimplementedError();
  }

}