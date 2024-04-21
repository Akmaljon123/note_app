import 'package:flutter/material.dart';
import 'package:note_app/data/appbar_data.dart';
import 'package:note_app/pages/note_page.dart';

class FloatButton{
  static Widget floatContainer(BuildContext context){
    return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const NotePage(),
            ),
          );
        },
      child: Container(
        height: 75,
        width: 75,
        decoration: BoxDecoration(
          color: AppBarData.backgroundColor,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                offset: const Offset(-1, 2),
                color: Colors.black.withOpacity(0.5),
                blurRadius: 10,
            ),

            BoxShadow(
                offset: const Offset(1, 1),
                color: Colors.black.withOpacity(0.5),
                blurRadius: 2
            )
          ],
        ),
        child: Icon(
          Icons.add,
          size: 42,
          color: Colors.white.withOpacity(0.7),
        ),
      ),
    );
  }
}
