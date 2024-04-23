import 'package:flutter/material.dart';
import 'package:flutter_todo_app/CustomWidgets/Cards/completed_item.dart';
import 'package:flutter_todo_app/CustomWidgets/Cards/todo_item.dart';
import 'package:flutter_todo_app/constants/color.dart';
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

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: HexColor(mainBackground),
          body: Column(
            children: [
              //Top Area
              Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("lib/assets/images/header.png"),
                )),
                width: deviceWidth,
                height: deviceHeight / 3,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        '${DateTime.now().day.toString().padLeft(2, '0')}.${DateTime.now().month.toString().padLeft(2, '0')}.${DateTime.now().year}',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Text("My Todo List",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text("trying to create dynamic icons",
                          style: TextStyle(color: Colors.grey, fontSize: 15)),
                    ),
                  ],
                ),
              ),

              //Middle - Top
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: SingleChildScrollView(
                    child: ListView.builder(
                      shrinkWrap: true,
                      primary: false,
                      itemCount: todoList.length,
                      itemBuilder: (context, index) {
                        return TodoItem(
                          title: todoList[index].title,
                          icon: todoList[index].title,
                        );
                      },
                    ),
                  ),
                ),
              ),

              //Middle - Center
              const Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Comleted",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                ),
              ),

              //Middle - Bottom
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: SingleChildScrollView(
                    child: ListView.builder(
                      shrinkWrap: true,
                      primary: false,
                      itemCount: completed.length,
                      itemBuilder: (context, index) {
                        return CompletedTodoItem(title: completed[index].title);
                      },
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    print("Selam?");
                  },
                  child: const Text("Add New Task"))
            ],
          ),
        ),
      ),
    );
  }
}
