import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:little_alchemy_clone/data/isar/models/discoverables.dart';
import 'package:little_alchemy_clone/data/isar/models/isar_item.dart';
import 'package:little_alchemy_clone/data/isar/repositories/isar_item_repository.dart';
import 'package:little_alchemy_clone/data/sqlite/repositories/sqlite_repository.dart';
import 'package:little_alchemy_clone/domain/repositories/item_repository.dart';
import 'package:little_alchemy_clone/views/alchemy_view.dart';
import 'package:little_alchemy_clone/views/discovered_list.dart';
import 'package:little_alchemy_clone/views/alchemy_field.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() async {
  log('Starting');
  WidgetsFlutterBinding.ensureInitialized();

  /*
  ** If using Isar uncomment this block

  final dir = await getApplicationDocumentsDirectory();

  final isarDb = await Isar.open([IsarItemSchema, DiscoverablesSchema], directory: dir.path, inspector: true);
  
  final IsarItemRepository itemRepository = IsarItemRepository(isarDb);
  */
  sqfliteFfiInit();
  databaseFactory = databaseFactoryFfi;
  final sqlDB = openDatabase(
    join(await getDatabasesPath(), 'little_alchemy_database.db'),
    version: 1,
    onCreate: (db, version) {
      return db.execute(
          '''CREATE TABLE items (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT UNIQUE, description TEXT, imgPath TEXT, isDiscovered BOOLEAN);
             INSERT INTO items (name,description,imgpath,isdiscovered) VALUES 
                ('water','this is water','assets/icons/water.png',true),
                ('earth','this is earth','assets/icons/earth',true),
                ('fire','this is fire','assets/icons/fire.png',true),
                ('air','this is air','assets/icons/air.png',true);''');
    },
  );

  final SqliteRepository itemRepository = SqliteRepository(db: sqlDB);

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
    log("Building main window");
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
