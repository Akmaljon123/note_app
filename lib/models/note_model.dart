import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel{
  @HiveField(0)
  late String title;
  @HiveField(1)
  late String text;

  NoteModel({required this.title, required this.text});

  NoteModel.fromJson(Map<String, Object?> json){
    text = json["text"] as String;
    title = json["title"] as String;
  }

  Map<String, Object?> toJson(){
    return {
      "title": title,
      "text": text,
    };
  }
}