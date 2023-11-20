import 'package:flutter/material.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text("To do $index"),
          trailing: GestureDetector(
            //hiện nút delete ở sau có sự kiện
            onTap: () {},
            child: const Icon(
              Icons.delete_forever_outlined,
              color: Colors.red,
            ),
          ),
        );
      },
    );
  }
}
