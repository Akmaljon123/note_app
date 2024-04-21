import 'dart:convert';
import 'dart:developer';
import 'package:hive/hive.dart';
import '../models/note_model.dart';

enum LocalKeys {
  noteKey
}

class HiveService {



  static Future<void> saveData(String title, String text)async{
    var box = await Hive.openBox("g10Box");
    NoteModel noteModel = NoteModel(title: title, text: text);
    await box.add(noteModel);
  }

  static Future<List<NoteModel>> getData() async {
    var box = await Hive.openBox("g10Box");
    List<NoteModel> notes = box.values.toList().cast<NoteModel>();
    return notes;
  }


  static Future<void> deleteData(int i)async{
    var box = await Hive.openBox("g10Box");
    await box.deleteAt(i);
  }



// static const String noteHive = "notes";

  // static Future<Box> _openBox() async {
  //   return await Hive.openBox(noteHive);
  // }

  // static Future<void> saveData(List<NoteModel> notes, {required LocalKeys key}) async {
  //   final box = await _openBox();
  //   List<String> stringList = notes.map((e) => jsonEncode(e.toJson())).toList();
  //   await box.put(key.name, stringList);
  // }
  //
  // static Future<List<NoteModel>> loadData({required LocalKeys key}) async {
  //   final box = await _openBox();
  //   List<String> stringList = await box.get(key.name) ?? <String>[];
  //   List<NoteModel> notes = stringList.map((e) => NoteModel.fromJson(jsonDecode(e))).toList();
  //   return notes;
  // }
  //
  // static Future<void> clearAll({required LocalKeys key}) async {
  //   final box = await _openBox();
  //   await box.delete(key.name);
  // }
}
