import 'package:flutter/material.dart';
import 'package:todo_sqfliteapp/Views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TODO App with SqfLite Database ',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.purple,
      ),
      home: const HomePage(),
    );
  }
}
