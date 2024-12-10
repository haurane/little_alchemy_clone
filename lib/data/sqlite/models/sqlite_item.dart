import 'package:little_alchemy_clone/domain/models/item.dart';

class SqliteItem {
  late Map<String, Object?> itemMap;
  late Map<String, List<String>> discoverables;

  static SqliteItem fromDomain(Item item){
    SqliteItem sItem = SqliteItem();
    sItem.itemMap = {
      'name': item.name,
      'description': item.description,
      'imgPath': item.imgPath,
      'isDiscovered': item.isDiscovered,
      'id': null
    };
    sItem.discoverables = item.discoverables;
    
    return sItem;    
  }

  Item toDomain(){
    Item dItem = Item(name: itemMap['name'] as String, 
                      description: itemMap['description'] as String,
                      imgPath: itemMap['imgPath'] as String,
                      isDiscovered: itemMap['isDiscovered'] as int == 0 ? false : true,
                      discoverables: discoverables);
    return dItem;
  }
}