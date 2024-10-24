import 'package:flutter/material.dart';
import 'package:music/views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: const Home(),
        title: 'Beats',
        theme: ThemeData(
          fontFamily: "Inspiration",
          appBarTheme:
              const AppBarTheme(backgroundColor: Colors.transparent, elevation: 0),
    textTheme: const TextTheme(
    bodyLarge: TextStyle(fontFamily: "Inspiration"),
    bodyMedium: TextStyle(fontFamily: "Inspiration"),

    )));
  }
}
