import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:little_alchemy_clone/domain/models/item.dart';
import 'package:little_alchemy_clone/domain/repositories/item_repository.dart';
import 'package:little_alchemy_clone/views/bloc/discovered_items_cubit.dart';
import 'package:little_alchemy_clone/views/discovered_list.dart';
import 'package:little_alchemy_clone/views/alchemy_field.dart';
import 'package:little_alchemy_clone/views/item_symbol.dart';

class AlchemyView extends StatefulWidget {
  final ItemRepository repository;
  AlchemyView({super.key, required this.repository});

  @override
  State<AlchemyView> createState() => _AlchemyViewState();
}

class _AlchemyViewState extends State<AlchemyView> {
  Queue<Widget> itemSymbols = new Queue();

  void addItemToField(Item item) {
    setState(() {
      itemSymbols.addLast(ItemSymbol(item: item));
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DiscoveredItemsCubit(widget.repository),
      child: Row(
        children: [
          Expanded(flex: 7, child: AlchemyField(itemSymbols)),
          Expanded(
            flex: 3,
            child: DiscoveredList(
              addSymbolToField: addItemToField,
            ),
          ),
        ],
      ),
    );
  }
}
