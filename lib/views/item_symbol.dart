import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:little_alchemy_clone/domain/models/item.dart';
import 'package:little_alchemy_clone/views/bloc/discovered_items_cubit.dart';

class ItemSymbol extends StatefulWidget {
  final Item item;
  const ItemSymbol({super.key, required this.item});

  @override
  State<ItemSymbol> createState() => _ItemSymbolState();
}

class _ItemSymbolState extends State<ItemSymbol> {
  double width = 100;
  double height = 100;
  late Offset position;

  @override
  void initState() {
    super.initState();
    position = Offset.zero;
  }

  _discover(BuildContext context,Item i1, Item i2){
    final itemsCubit = context.read<DiscoveredItemsCubit>();
    itemsCubit.discoverItem(i1, i2);
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: position.dx,
        top: position.dy,
        child: DragTarget<Item>(
          builder: (BuildContext context, List<dynamic> accepted,
              List<dynamic> rejected) {
            return Draggable<Item>(
              feedback: ClipRRect(
                  borderRadius: BorderRadius.circular(width / 2),
                  child: Container(
                      color: Colors.cyan,
                      width: width,
                      height: height,
                      child: Image(
                        image: AssetImage(widget.item.imgPath),
                      ))),
              onDragEnd: (details) {
                log("${details.offset.dx}\n${details.offset.dy}\n${details.offset.direction}\n${details.offset.distance}");
                setState(() {
                  RenderBox? renderBox =
                      context.findRenderObject() as RenderBox?;
                  position += renderBox!.globalToLocal(details.offset);
                });
              },
              data: widget.item,
              childWhenDragging: Container(),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(width / 2),
                  child: Container(
                      color: Colors.blue,
                      width: width,
                      height: height,
                      child: Image(
                        image: AssetImage(widget.item.imgPath),
                      ))),
            );
          },
          onAcceptWithDetails: (details) {
            _discover(context, widget.item, details.data);
          },
          onWillAcceptWithDetails: (details) {
            log("On will accept");
            return true;
          },
        ));
  }
}
