import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gmail_clone/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.grey[850],
        textTheme: Typography.whiteHelsinki,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[800],
          iconTheme: IconThemeData(
            color: Colors.grey[300]
          ),
          titleTextStyle: const TextStyle(
            color: Colors.white70,
            fontSize: 16,
          )
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color.fromARGB(174, 9, 128, 225),
          foregroundColor: Colors.white70,
        ),
        scaffoldBackgroundColor: Colors.grey[850],
      ),
      home: const HomePage(),
    );
  }
}