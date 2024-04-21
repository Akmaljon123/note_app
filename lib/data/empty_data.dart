import 'package:flutter/material.dart';

class EmptyData{
  static Color emptyTextColor = Colors.grey.shade500;
  static double emptyTextSize = 14;

  static Widget emptyContainer(){
    return Container(
      height: 320,
      width: 320,
      decoration: BoxDecoration(
          color: Colors.black38,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Designed by - ",
              style: TextStyle(
                  color: emptyTextColor,
                  fontWeight: FontWeight.w400,
                  fontSize: emptyTextSize
              ),
            ),
          ),

          const SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Redesigned by - ",
              style: TextStyle(
                  color: emptyTextColor,
                  fontWeight: FontWeight.w400,
                  fontSize: emptyTextSize
              ),
            ),
          ),

          const SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Illustrations - ",
              style: TextStyle(
                  color: emptyTextColor,
                  fontWeight: FontWeight.w400,
                  fontSize: emptyTextSize
              ),
            ),
          ),

          const SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Icons - ",
              style: TextStyle(
                  color: emptyTextColor,
                  fontWeight: FontWeight.w400,
                  fontSize: emptyTextSize
              ),
            ),
          ),

          const SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Font - ",
              style: TextStyle(
                  color: emptyTextColor,
                  fontWeight: FontWeight.w400,
                  fontSize: emptyTextSize
              ),
            ),
          ),

          const SizedBox(height: 20),

          Center(
            child: Text(
              "Made by",
              style: TextStyle(
                fontSize: emptyTextSize,
                fontWeight: FontWeight.w400,
                color: emptyTextColor
              ),
            ),
          )
        ],
      ),
    );
  }

}