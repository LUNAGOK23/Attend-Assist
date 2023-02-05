import 'package:attend_assist/impstuff/colorss.dart';
import 'package:attend_assist/stuff_of_app/bottomNavigation/screens/AssignmentManager/ass_screen/taskcontainer.dart';
import 'package:flutter/material.dart';

import '../../../../../impstuff/dialog_box.dart';

class MainAssScreen extends StatefulWidget {
  const MainAssScreen({super.key});

  @override
  State<MainAssScreen> createState() => _MainAssScreenState();
}

class _MainAssScreenState extends State<MainAssScreen> {
  final _controller = TextEditingController();
  List todolist = [
    ["jerkoff", false],
    ["dont go to college", true],
  ];
  void checkboxChanged(bool? value, int index) {
    setState(() {
      todolist[index][1] = !todolist[index][1];
    });
  }

  // create a new task
  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSave: () {},
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackcolor,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          backgroundColor: goldencolor,
          onPressed: () => createNewTask(),
          child: const Icon(
            Icons.add,
            color: blackcolor,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: todolist.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: todolist[index][0],
            taskCompleted: todolist[index][1],
            onChanged: (value) => checkboxChanged(value, index),
            deleteFunction: (p0) {},
          );
        },
      ),
    );
  }
}
