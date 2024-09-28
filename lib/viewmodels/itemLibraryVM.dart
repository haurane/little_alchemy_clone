import 'package:little_alchemy_clone/models/item.dart';
import 'package:little_alchemy_clone/models/itemLibrary.dart';

class ItemLibraryVM{
  ItemLibrary _itemLibrary;

  ItemLibraryVM(this._itemLibrary);

  List<Item> get items => _itemLibrary.itemList;

  addItem(Item item){
    items.add(item);
  }
}