import 'package:flutter/material.dart';

import '../data/appbar_data.dart';
import '../data/card_data.dart';
import '../data/float_action_button.dart';
import '../models/note_model.dart';
import '../my_app/setup.dart';
import '../service/hive_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<NoteModel> notesFuture = boxGlobal;

  void deleteNote(int index) async {
    await HiveService.deleteData(index);
    setState(() {
      notesFuture.removeAt(index);
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade800,
        title: AppBarData.appBarTitle(),
        actions: [
          AppBarData.appBarIcons(),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, i) {
                return DataCards.dataCard(
                  box: notesFuture,
                  i: i,
                  context: context,
                  onDelete: () => deleteNote(i),
                );
              },
              itemCount: notesFuture.length,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatButton.floatContainer(context),
    );
  }
}
