import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopzoneapp/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: const Color.fromARGB(255, 255, 48, 82),
        scaffoldBackgroundColor: const Color.fromRGBO(249, 249, 249, 1.0),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(color: Colors.transparent),
        textTheme: GoogleFonts.lexendTextTheme(),
      ),
      home: const HomePage(),
    );
  }
}
