import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:little_alchemy_clone/domain/models/item.dart';
import 'package:little_alchemy_clone/domain/repositories/item_repository.dart';
import 'package:little_alchemy_clone/views/bloc/discovered_items_cubit.dart';

class DiscoveredList extends StatelessWidget {

  final Function addSymbolToField;

  const DiscoveredList({super.key, required this.addSymbolToField});

  @override
  Widget build(BuildContext context) {
    final discoveredCubit = context.read<DiscoveredItemsCubit>();
    return BlocBuilder<DiscoveredItemsCubit, List<Item>>(builder: (context, items){
      return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            leading: Image(image: AssetImage(item.imgPath),),
            title: Text(item.name),
            onLongPress: () => addSymbolToField(item),
          );
      });
    });
  }
}