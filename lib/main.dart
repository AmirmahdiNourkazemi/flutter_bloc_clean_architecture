import 'package:flutter/material.dart';
import 'package:flutter_bloc_clean_architecture/locator/locator.dart';

import 'core/main_wrapper.dart';

void main() async{
  await setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MainWrapper(),
    );
  }
}
