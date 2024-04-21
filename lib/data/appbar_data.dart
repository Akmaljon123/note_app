import 'package:flutter/material.dart';

class AppBarData{
  static Color backgroundColor = Colors.grey.shade800;
  static double appBarIconSize = 26;
  static double appBarContainerHeightWidth = 50;

  static Widget appBarTitle(){
    return Text(
      "Notes",
      style: TextStyle(
          color: Colors.white.withOpacity(0.7),
          fontSize: 46,
          fontWeight: FontWeight.w400
      ),
    );
  }

  static Widget appBarIcons(){
    return Row(
      children: [
        Container(
          height: appBarContainerHeightWidth,
          width: appBarContainerHeightWidth,
          decoration: BoxDecoration(
              color: Colors.grey.shade600,
              borderRadius: BorderRadius.circular(20)
          ),
          child: IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.search,
              size: AppBarData.appBarIconSize,
              color: Colors.white.withOpacity(0.7),
            ),
          ),
        ),

        const SizedBox(width: 20),

        Container(
          height: appBarContainerHeightWidth,
          width: appBarContainerHeightWidth,
          decoration: BoxDecoration(
              color: Colors.grey.shade600,
              borderRadius: BorderRadius.circular(20)
          ),
          child: IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.info_outline,
              size: AppBarData.appBarIconSize,
              color: Colors.white.withOpacity(0.7),
            ),
          ),
        )
      ],
    );
  }



}