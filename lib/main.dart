import 'package:flutter/cupertino.dart';
import 'package:note_app/my_app/my_app.dart';

import 'my_app/setup.dart';

void main()async{
  await setup();
  runApp(const MyApp());
}