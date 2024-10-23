import 'package:little_alchemy_clone/domain/models/item.dart';
import 'package:little_alchemy_clone/domain/repositories/item_repository.dart';

class IsarItemRepository implements ItemRepository {
  List<Item> _itemList = [
    Item(
        id: 1,
        name: "Water",
        description: "This is Water",
        imgPath: "assets/icons/water.png",
        discoverables: {
          2: [3],
          3: [4]
        },
        isDiscovered: true),
    Item(
        id: 2,
        name: "Earth",
        description: "This is Earth",
        imgPath: "assets/icons/earth.png",
        discoverables: {
          1: [3]
        },
        isDiscovered: true),
    Item(
        id: 3,
        name: "Air",
        description: "This is Air",
        imgPath: "assets/icons/air.png",
        discoverables: {
          1: [4]
        }),
    Item(
        id: 4,
        name: "Fire",
        description: "This is Fire",
        imgPath: "assets/icons/fire.png",
        discoverables: {}),
  ];

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
  Future<List<Item>> getAllItems() {
    return Future.delayed(Duration(milliseconds: 1), () => _itemList);
  }

  @override
  Future<List<Item>> getDiscoveredItems() {
    return Future(() {
      var list = _itemList.where((item) => item.isDiscovered).toList();
      list.sort();
      return list;
    });
  }

  @override
  Future<void> updateItem(Item item) {
    return Future(() => _itemList[
        _itemList.indexWhere((listItem) => listItem.name == item.name)] = item);
  }

  @override
  Future<Item> getItemById(int id) {
    return Future(() => _itemList.where((item) => item.id == id).first);
  }

  @override
  Future<List<Item>> discoverItems(Item i1, Item i2) {
    return Future(() {
      var ids = _itemList[_itemList.indexOf(i1)].discoverables[i2.id] ?? [];
      List<Item> discoverables = List.empty(growable: true);
      for (var id in ids) {
        discoverables.add(_itemList.where((item) => item.id == id).first);
      }
      return discoverables;
    });
  }
}
