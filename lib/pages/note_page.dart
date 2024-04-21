import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/my_app/setup.dart';
import 'package:note_app/pages/home_page.dart';
import 'package:note_app/service/hive_service.dart';
import '../data/appbar_data.dart';
import '../data/note_page_appBar.dart';

class NotePage extends StatefulWidget {
  const NotePage({super.key});

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  late TextEditingController titleController;
  late TextEditingController textController;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController();
    textController = TextEditingController();
  }

  @override
  void dispose() {
    titleController.dispose();
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppBarData.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppBarData.backgroundColor,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 220),
                height: AppBarData.appBarContainerHeightWidth,
                width: AppBarData.appBarContainerHeightWidth,
                decoration: BoxDecoration(
                    color: Colors.grey.shade600,
                    borderRadius: BorderRadius.circular(20)
                ),
                alignment: Alignment.center,
                child: IconButton(
                  onPressed: (){},
                  icon: Icon(
                    Icons.arrow_back,
                    size: AppBarData.appBarIconSize,
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
              ),

              const SizedBox(width: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: AppBarData.appBarContainerHeightWidth,
                    width: AppBarData.appBarContainerHeightWidth,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade600,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: IconButton(
                      onPressed: (){},
                      icon: Icon(
                        Icons.visibility,
                        size: AppBarData.appBarIconSize,
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),

                  Container(
                    height: AppBarData.appBarContainerHeightWidth,
                    width: AppBarData.appBarContainerHeightWidth,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade600,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: IconButton(
                      onPressed: ()async{
                        NoteModel noteModel = NoteModel(
                            title: titleController.text,
                            text: textController.text,
                        );

                        // HiveService.saveData([noteModel], key: LocalKeys.noteKey);
                        HiveService.saveData(titleController.text, textController.text);

                        showDialog<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              backgroundColor: AppBarData.backgroundColor,
                              title: const Text('Saved'),
                              titleTextStyle: TextStyle(
                                fontSize: 26,
                                color: Colors.white.withOpacity(0.7)
                              ),
                              content: const Text('Your note has been saved'),
                              contentTextStyle: TextStyle(
                                fontSize: 18,
                                color: Colors.white.withOpacity(0.7)
                              ),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: ()async{
                                    boxGlobal = await HiveService.getData();
                                    Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(builder: (context) => const HomePage()),
                                          (route) => false,
                                    );
                                  },
                                  child: Text(
                                      'OK',
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.7),
                                      fontSize: 18
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      icon: Icon(
                        Icons.save,
                        size: AppBarData.appBarIconSize,
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: titleController,
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  autofocus: true,
                  onChanged: (text) {
                    // Handle changes to the text
                  },
                  style: const TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w500
                  ),
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
                    hintText: 'Title', // Hint text
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 36,
                        fontWeight: FontWeight.w500
                    ), // Hint text style
                    border: InputBorder.none, // Remove border
                    contentPadding: EdgeInsets.zero, // Remove padding
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: textController,
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  autofocus: true,
                  onChanged: (text) {
                    // Handle changes to the text
                  },
                  style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w400
                  ),
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
                    hintText: 'Type something...', // Hint text
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.w300
                    ), // Hint text style
                    border: InputBorder.none, // Remove border
                    contentPadding: EdgeInsets.zero, // Remove padding
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
