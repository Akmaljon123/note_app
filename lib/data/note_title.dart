import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoteTitle{
  static Widget noteTitle(){
    TextEditingController textEditingController = TextEditingController();
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 600),
              child: TextFormField(
                controller: textEditingController,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                autofocus: true,
                onChanged: (text) {
                  // Handle changes to the text
                },
                decoration: const InputDecoration(
                  hintText: 'Title', // Hint text
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 36
                  ), // Hint text style
                  border: InputBorder.none, // Remove border
                  contentPadding: EdgeInsets.zero, // Remove padding
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}