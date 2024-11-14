import 'package:isar/isar.dart';
import 'package:little_alchemy_clone/domain/models/item.dart';
import 'package:little_alchemy_clone/domain/repositories/item_repository.dart';

class IsarItemRepository implements ItemRepository {
  final Isar db;

  IsarItemRepository(this.db);
}
