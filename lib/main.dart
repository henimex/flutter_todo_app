import 'package:flutter/material.dart';
import 'package:flutter_todo_app/CustomWidgets/Cards/completed_item.dart';
import 'package:flutter_todo_app/CustomWidgets/Cards/todo_item.dart';
import 'package:flutter_todo_app/constants/color.dart';
import 'package:flutter_todo_app/screens/home.dart';
import 'package:hexcolor/hexcolor.dart';

import 'Models/TodoItem.dart';

void main() {
  runApp(TodoApp());
}

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  bool checkOne = false;

  List<TodoItemModel> todoList = [
    TodoItemModel(title: "Study Lesson", icon: 'book_outlined'),
    TodoItemModel(title: "Run 5k", icon: 'run_circle_outlined'),
    TodoItemModel(title: "Go to Party", icon: 'event_available_outlined'),
    TodoItemModel(title: "Dinner with friends", icon: 'set_meal_outlined'),
  ];

  List<TodoItemModel> completed = [
    TodoItemModel(title: "Pay bills", icon: 'book_outlined'),
    TodoItemModel(title: "Make Shopping", icon: 'run_circle_outlined'),
    TodoItemModel(
        title: "Dentist Appointment", icon: 'event_available_outlined'),
  ];

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomeScreen()
    );
  }
}
