import 'package:isar/isar.dart';
import 'package:little_alchemy_clone/data/models/discoverables.dart';
import 'package:little_alchemy_clone/domain/models/item.dart';

part 'isar_item.g.dart';

@collection
class IsarItem {
  late String name;
  late String description;
  late String imgPath;
  late bool isDiscovered;
  final discoverables = IsarLinks<Discoverables>();

  Id get isarId => IsarItem.fastHash(name);

  Item toDomain() {
    return Item(
        name: name,
        description: description,
        imgPath: imgPath,
        isDiscovered: isDiscovered,
        discoverables: {});
  }

  static IsarItem fromDomain(Item item) {
    return IsarItem()
      ..description = item.description
      ..name = item.name
      ..imgPath = item.imgPath
      ..discoverables = item.discoverables
      ..isDiscovered = item.isDiscovered;
  }

  static int fastHash(String name) {
    var hash = 0xcbf29ce484222325;

    var i = 0;
    while (i < name.length) {
      final codeUnit = name.codeUnitAt(i++);
      hash ^= codeUnit >> 8;
      hash *= 0x100000001b3;
      hash ^= codeUnit & 0xFF;
      hash *= 0x100000001b3;
    }

    return hash;
  }
}
