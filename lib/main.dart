import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_todo_app/constants/color.dart';
import 'package:hexcolor/hexcolor.dart';

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
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        "February 02, 2024",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Text("My Todo List",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),

              //Middle - Top
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Icon(
                                  Icons.notes_outlined,
                                  size: 50,
                                ),
                                const Text(
                                  "Study Lesson",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Checkbox(
                                    value: checkOne,
                                    onChanged: (val) => {
                                          setState(() {
                                            checkOne = !checkOne;
                                          }),
                                        }),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Icon(
                                  Icons.notes_outlined,
                                  size: 50,
                                ),
                                const Text(
                                  "Study Lesson",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Checkbox(
                                    value: checkOne,
                                    onChanged: (val) => {
                                          setState(() {
                                            checkOne = !checkOne;
                                          }),
                                        }),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Icon(
                                  Icons.notes_outlined,
                                  size: 50,
                                ),
                                const Text(
                                  "Study Lesson",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Checkbox(
                                    value: checkOne,
                                    onChanged: (val) => {
                                          setState(() {
                                            checkOne = !checkOne;
                                          }),
                                        }),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              //Middle - Center
              const Padding(
                padding: EdgeInsets.fromLTRB(30,0,0,0),
                child:  Align(
                  alignment: Alignment.centerLeft,
                  child:  Text("Comleted", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                ),
              ),

              //Middle - Bottom
              Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.notes_outlined,
                            size: 50,
                          ),
                          const Text(
                            "Study Lesson",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Checkbox(
                              value: checkOne,
                              onChanged: (val) => {
                                setState(() {
                                  checkOne = !checkOne;
                                }),
                              }),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.notes_outlined,
                            size: 50,
                          ),
                          const Text(
                            "Study Lesson",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Checkbox(
                              value: checkOne,
                              onChanged: (val) => {
                                setState(() {
                                  checkOne = !checkOne;
                                }),
                              }),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.notes_outlined,
                            size: 50,
                          ),
                          const Text(
                            "Study Lesson",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Checkbox(
                              value: checkOne,
                              onChanged: (val) => {
                                setState(() {
                                  checkOne = !checkOne;
                                }),
                              }),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
              ElevatedButton(onPressed: () {}, child: const Text("Add New Task"))
            ],
          ),
        ),
      ),
    );
  }
}
