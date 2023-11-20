import 'package:flutter/material.dart';
import 'package:todo_list/list.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text("To Do List")),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            buildHeader(),
            const Expanded(child: ToDoList()),
          ],
        ),
      ),
    ));
  }

  Widget buildHeader() {
    return Row(
      children: [
        Expanded(
          //phải bọc input 1 cái để biết nó chiếm khoảng bao nhiêu
          flex: 4,
          child: TextFormField(
            decoration: const InputDecoration(
              labelText: "Input to do: ",
              hintText: "Input to do",
            ),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        Expanded(
          child: ElevatedButton(
            onPressed: () {},
            child: const Row(
              children: [
                Icon(Icons.add),
                SizedBox(
                  width: 20,
                ),
                Text("Add"),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 120,
        ),
      ],
    );
  }
}
