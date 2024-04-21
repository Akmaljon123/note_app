import 'package:flutter/material.dart';
import 'package:note_app/data/appbar_data.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/my_app/setup.dart';
import 'package:note_app/pages/home_page.dart';
import 'package:note_app/service/hive_service.dart';

class DataCards {
  static Widget dataCard(
      {required List<NoteModel> box,
        required int i,
        required BuildContext context, required void Function() onDelete}) {
    return GestureDetector(
      onLongPress: () {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
              backgroundColor: AppBarData.backgroundColor,
              title: const Text("Do you want to delete this note?"),
              titleTextStyle: TextStyle(
                fontSize: 24,
                color: Colors.white.withOpacity(0.7),
              ),
              content: const Text(
                  "You will not be able to restore this note once you delete it."),
              contentTextStyle: TextStyle(
                  fontSize: 16, color: Colors.white.withOpacity(0.7)),
              actions: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.red),
                        alignment: Alignment.center,
                        child: const Text(
                          "No",
                          style:
                          TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: ()async{
                        await HiveService.deleteData(i);
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context)=>const HomePage()),
                                (route) => false);
                      },
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.green),
                        alignment: Alignment.center,
                        child: const Text(
                          "Yes",
                          style:
                          TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ));
      },
      child: Container(
        width: 200,
        height: 100,
        decoration: BoxDecoration(
          color: AppBarData.backgroundColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.black,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                box[i].title,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white.withOpacity(0.7),
                ),
              ),
              Text(
                box[i].text,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white.withOpacity(0.7),
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}