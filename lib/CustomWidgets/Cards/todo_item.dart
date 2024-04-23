import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodoItem extends StatefulWidget {
  const TodoItem({super.key, required this.title, required this.icon});
  final String title;
  final String icon;

  @override
  State<TodoItem> createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  bool checkOne = false;


  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.add,
              size: 50,
            ),
            Text(
              widget.title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
    );
  }
}

