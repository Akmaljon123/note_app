import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app/pages/empty_home_page.dart';
import 'package:note_app/pages/note_page.dart';

import '../pages/home_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}
