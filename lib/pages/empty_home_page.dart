import 'package:flutter/material.dart';
import 'package:note_app/data/appbar_data.dart';
import 'package:note_app/data/empty_data.dart';
import 'package:note_app/data/float_action_button.dart';

class EmptyHomePage extends StatefulWidget {
  const EmptyHomePage({Key? key}) : super(key: key);

  @override
  State<EmptyHomePage> createState() => _EmptyHomePageState();
}

class _EmptyHomePageState extends State<EmptyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AppBarData.appBarTitle(),
              const SizedBox(width: 40),
              AppBarData.appBarIcons(),
            ],
          ),


          const SizedBox(height: 150),
          EmptyData.emptyContainer(),



          const SizedBox(height: 20),
          Text(
            "Create your first note!",
            style: TextStyle(
                fontSize: 18,
                color: Colors.white.withOpacity(0.7),
                fontWeight: FontWeight.w300
            ),
          ),


          const SizedBox(height: 110),
          Padding(
            padding: const EdgeInsets.only(left: 260),
            child: FloatButton.floatContainer(context),
          ),
        ],
      ),
    );
  }
}
