import 'package:little_alchemy_clone/models/model.dart';

class ItemListViewModel {
  ItemList _itemList;

  ItemListViewModel(this._itemList);

  List<String> get items => _itemList.items;

  void addItem(String item) {
    _itemList.items.add(item);
  }
}