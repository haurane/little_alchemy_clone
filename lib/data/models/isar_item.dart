import 'package:isar/isar.dart';
import 'package:little_alchemy_clone/data/models/discoverables.dart';
import 'package:little_alchemy_clone/domain/models/item.dart';
import 'package:little_alchemy_clone/libraries/string_hash.dart';

part 'isar_item.g.dart';

@collection
class IsarItem {
  late String name;
  late String description;
  late String imgPath;
  late bool isDiscovered;
  final discoverables = IsarLinks<Discoverables>();

  Id get isarId => fastHash(name);

  Item toDomain() {
    discoverables.load();
    Map<String,List<String>> discmap = Map();
    for (var disc in discoverables){
      var other = disc.sourceItems[0] == name ? disc.sourceItems[1] : disc.sourceItems[0];
      discmap.addAll({other: disc.discoverables});
    }
    return Item(
        name: name,
        description: description,
        imgPath: imgPath,
        isDiscovered: isDiscovered,
        discoverables: discmap);
  }

  static IsarItem fromDomain(Item item) {
    IsarItem iItem = IsarItem();
    iItem.name = item.name;
    iItem.description = item.description;
    iItem.imgPath = item.imgPath;
    iItem.isDiscovered = item.isDiscovered;
    
    item.discoverables.forEach((k,v) {
      Discoverables d = Discoverables([item.name, k], v);
      iItem.discoverables.add(d);
    });
      
    
    return iItem;
  }

  
}
