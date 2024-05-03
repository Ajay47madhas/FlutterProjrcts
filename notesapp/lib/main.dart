import 'package:flutter/material.dart';
import 'package:notesapp/homepage.dart';
import 'package:hive_flutter/hive_flutter.dart';
void main () async {
 await Hive.initFlutter();
 var notesbox  = await Hive.openBox('notesbox');
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
    
      home: const HomePage(),
      theme: ThemeData(primarySwatch: Colors.indigo),

    );
  }
}
