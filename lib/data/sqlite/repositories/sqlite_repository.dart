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
  Future<List<Item>> getAllItems() async {
    final database = await db;
    final List<Map<String, Object?>> itemMap = await database.query('items');

    return[
      for(final {
        'id': id as int,
        'name': name as String,
        'description': description as String,
        'imgPath': imgPath as String,
        'isDiscovered': isDiscovered as bool,
      } in itemMap)
      Item(name: name, description: description, imgPath: imgPath, discoverables: {})
    ];
  }

  @override
  Future<List<Item>> getDiscoveredItems() async {
    final database = await db;
    const whereString = 'isDiscovered = ?';
    final discoveredStatus = [1];
    final List<Map> itemMap = await database.query('items', where: whereString, whereArgs: discoveredStatus);

    itemMap.forEach((row) => print(row));

    return[
      for(final {
        'id': id as int,
        'name': name as String,
        'description': description as String,
        'imgPath': imgPath as String,
        'isDiscovered': isDiscovered as int,
      } in itemMap)
      Item(name: name, description: description, imgPath: imgPath, isDiscovered: isDiscovered == 0? false : true, discoverables: {})
    ];
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