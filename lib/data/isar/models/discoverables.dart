import 'package:isar/isar.dart';
import 'package:little_alchemy_clone/libraries/string_hash.dart';

part 'discoverables.g.dart';

@collection
class Discoverables {
  late List<String> sourceItems;
  late List<String> discoverables;
  
  Id get id => listHash(sourceItems);

  Discoverables(this.sourceItems, this.discoverables){
    sourceItems.sort();
    discoverables.sort();
  }

}