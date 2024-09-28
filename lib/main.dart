import 'package:flutter/material.dart';
import 'package:little_alchemy_clone/models/model.dart';
import 'package:little_alchemy_clone/viewmodels/viewmodel.dart';
import 'package:little_alchemy_clone/views/itemLibraryView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      home: Itemlibraryview(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ItemListViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = ItemListViewModel(ItemList());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MVVM Example')),
      body: ListView.builder(
        itemCount: _viewModel.items.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text(_viewModel.items[index]));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _viewModel.addItem('New Item');
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
