import 'package:flutter/material.dart';

import 'home.dart';
import 'app.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Batch-13',
      home: home(),
    );
  }
}