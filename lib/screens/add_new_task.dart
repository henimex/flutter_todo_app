import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_todo_app/constants/color.dart';
import 'package:hexcolor/hexcolor.dart';

class AddNewTask extends StatelessWidget {
  const AddNewTask({super.key});

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
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: TextField(
                  decoration:
                      InputDecoration(filled: true, fillColor: Colors.white),
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
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text("Date"),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: TextField(
                              decoration: InputDecoration(
                                  filled: true, fillColor: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text("Time"),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: TextField(
                              decoration: InputDecoration(
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
              const SizedBox(
                height: 300,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    expands: true,
                    maxLines: null,
                    decoration: InputDecoration(
                        filled: true, fillColor: Colors.white, isDense: true),
                  ),
                ),
              ),
              ElevatedButton(onPressed: (){}, child: Text("Save "))
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
      },
      child: Image.asset("lib/assets/images/${widget.image}.png"),
    );
  }
}
