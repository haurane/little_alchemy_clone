import 'package:isar/isar.dart';

part 'discoverables.g.dart';

@collection
class Discoverables {
  Id id = Isar.autoIncrement;
  late String item;
  late List<String> discoverables;
  
}