import 'package:flutter/material.dart';
import 'package:little_alchemy_clone/data/repositories/isar_item_repository.dart';
import 'package:little_alchemy_clone/domain/repositories/item_repository.dart';
import 'package:little_alchemy_clone/views/alchemy_view.dart';
import 'package:little_alchemy_clone/views/discovered_list.dart';
import 'package:little_alchemy_clone/views/dragable_test.dart';

void main() {
  final IsarItemRepository itemRepository = IsarItemRepository();
  runApp(MyApp(
    itemRepository: itemRepository,
  ));
}

class MyApp extends StatelessWidget {
  final ItemRepository itemRepository;
  MyApp({super.key, required this.itemRepository});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Little Alchemy Clone',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Drag test"),
          ),
          body: AlchemyView(repository: itemRepository)),
    );
  }
}
