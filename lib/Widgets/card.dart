import 'package:flutter/material.dart';

Widget mycard(String task) {
  return Card(
    elevation: 5.0,
    margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
    child: Container(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(
          task,
          style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
        ),
        onLongPress: () {
          print("Tasks are deleted");
        },
      ),
    ),
  );
}
