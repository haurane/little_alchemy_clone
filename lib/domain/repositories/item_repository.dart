import 'package:little_alchemy_clone/domain/models/item.dart';

abstract class ItemRepository {
  Future<List<Item>> getAllItems();
  Future<List<Item>> getDiscoveredItems();
  Future<Item> getItemById(int id);

  Future<List<Item>> discoverItems(Item i1, Item i2);

  Future<void> addItem(Item item);
  
  Future<void> updateItem(Item item);

  Future<void> deleteItem(Item item);
}