import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/service/hive_service.dart';
late List<NoteModel> boxGlobal;


Future<void> setup()async{
  WidgetsFlutterBinding.ensureInitialized();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.initFlutter();
  // boxGlobal = await HiveService.loadData(key: LocalKeys.noteKey);
  boxGlobal = await HiveService.getData();
}