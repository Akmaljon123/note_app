import 'package:flutter/material.dart';
import 'package:note_app/data/appbar_data.dart';

class NotePageBar{
  static Widget notePageBar(){
    return Row(
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
    );
  }
}