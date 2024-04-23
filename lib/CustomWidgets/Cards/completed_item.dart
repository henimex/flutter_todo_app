import 'package:flutter/material.dart';

class CompletedTodoItem extends StatefulWidget {
  const CompletedTodoItem({super.key, required this.title});
  final String title;

  @override
  State<CompletedTodoItem> createState() => _CompletedTodoItemState();
}

class _CompletedTodoItemState extends State<CompletedTodoItem> {
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
                 Icons.notes_outlined,
              size: 50,
              color: Colors.blue.withOpacity(0.5),
            ),
            Text(
              widget.title,
              style: const TextStyle( decoration: TextDecoration.lineThrough, fontWeight: FontWeight.bold, fontSize: 18, color: Colors.grey),
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
