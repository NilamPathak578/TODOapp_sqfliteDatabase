import 'package:flutter/material.dart';
import 'package:todo_sqfliteapp/Widgets/card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void showAlertDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            title: const Text("Add Task"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const TextField(
                  autofocus: true,
                  style: TextStyle(fontSize: 16.0),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "Add",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w800),
                        ),
                        style: ElevatedButton.styleFrom(primary: Colors.purple),
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "Cancel",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w800),
                        ),
                        style: ElevatedButton.styleFrom(primary: Colors.purple),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("TODO App"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: showAlertDialog,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            mycard("My first task"),
            mycard("My second Task"),
            mycard(
                "My Daily Schedule\nwakeup\nMake breakfast\nMake meal\nReady for Office\nOffice Work\nReturn home\nMake Dinner\nTeach Brothers\nStudy\nSleep"),
            mycard("SqfLite CRUD Operation\nCreate\nInsert\nupdate\ndelete"),
            mycard("fruits\napple\banana\norange"),
            mycard("My Favourite Place\nButwal\nPokhara\nkathmandu"),
          ],
        ),
      ),
    );
  }
}
