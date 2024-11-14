import 'package:little_alchemy_clone/domain/models/item.dart';

abstract class ItemRepository {
  Future<List<Item>> getAllItems();
  Future<List<Item>> getDiscoveredItems();
  Future<Item> getItemByName(String name);

  Future<void> discoverItems(List<String> names);

  Future<void> addItem(Item item);
  
  Future<void> updateItem(Item item);

  Future<void> deleteItem(Item item);
}