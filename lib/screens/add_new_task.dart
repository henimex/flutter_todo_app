import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_todo_app/Models/TaskType.dart';
import 'package:flutter_todo_app/constants/color.dart';
import 'package:hexcolor/hexcolor.dart';

class AddNewTask extends StatefulWidget {
  const AddNewTask({super.key});

  @override
  State<AddNewTask> createState() => _AddNewTaskState();
}

TextEditingController titleController = TextEditingController();
TextEditingController dateController = TextEditingController();
TextEditingController timeController = TextEditingController();
TextEditingController notesController = TextEditingController();

String myTaskType = "";

class _AddNewTaskState extends State<AddNewTask> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor(mainBackground),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: deviceWidth,
                height: deviceHeight / 10,
                color: Colors.purple,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.close,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                    const Expanded(
                        child: Text(
                      "Add New Task",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 21),
                      textAlign: TextAlign.center,
                    )),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text("Task Title"),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: TextField(
                  controller: titleController,
                  decoration: const InputDecoration(
                      filled: true, fillColor: Colors.white),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Category"),
                  ShowMsg(
                    title: "Memo Category Selected",
                    image: "category1",
                  ),
                  ShowMsg(
                    title: "Event Category Selected",
                    image: "category2",
                  ),
                  ShowMsg(
                    title: "Challange Category Selected",
                    image: "category3",
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          const Text("Date"),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextField(
                              controller: dateController,
                              decoration: const InputDecoration(
                                  filled: true, fillColor: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          const Text("Time"),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextField(
                              controller: timeController,
                              decoration: const InputDecoration(
                                  filled: true, fillColor: Colors.white),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text("Notes"),
              ),
              SizedBox(
                height: 300,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    controller: notesController,
                    expands: true,
                    maxLines: null,
                    decoration: const InputDecoration(
                        filled: true, fillColor: Colors.white, isDense: true),
                  ),
                ),
              ),
              ElevatedButton(onPressed: () {}, child: const Text("Save "))
            ],
          ),
        ),
      ),
    );
  }
}

class ShowMsg extends StatefulWidget {
  const ShowMsg({super.key, required this.title, required this.image});

  final String title;
  final String image;

  @override
  State<ShowMsg> createState() => _ShowMsgState();
}

class _ShowMsgState extends State<ShowMsg> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(widget.title),
          duration: const Duration(milliseconds: 400),
        ));
        setState(() {
          myTaskType = widget.title;
        });
      },
      child: Image.asset("lib/assets/images/${widget.image}.png"),
    );
  }
}
