import 'package:flutter/material.dart';
import 'package:to_do_application/models/todo.dart';

import '../constants/app_colors.dart';

class todolist extends StatelessWidget {
  todolist({
    super.key,
    required this.todos,
  });

  final List<Todo> todos;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                onTap: () {
                  print("Yeah its clickable");
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                tileColor: Colors.white,
                leading: InkWell(
                  onTap: (){
                    todos[index].isDone
                  },
                  child: Icon(
                    todos[index].isDone
                        ? Icons.check_box_rounded// isDone true thakle
                        : Icons.check_box_outline_blank,// isDone false thakle
                    color: AppsColors.tdblue,
                  ),
                ),
                title: Text(
                  todos[index].text,
                  style: TextStyle(
                      fontSize: 16,
                      color: AppsColors.tdblack,
                      decoration: todos[index].isDone
                          ? TextDecoration.lineThrough // isDone true thakle
                          : TextDecoration.none), // isDone false thakle
                ),
                trailing: Container(
                  padding: const EdgeInsets.all(0),
                  margin:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 5),
                  height: 35,
                  width: 35,
                  decoration: const BoxDecoration(
                    color: AppsColors.tdred,
                  ),
                  child: IconButton(
                      color: Colors.white,
                      iconSize: 18,
                      onPressed: () {
                        print("delete button click");
                      },
                      icon: const Icon(Icons.delete)),
                ),
              ),
              const SizedBox(
                height: 10,
              )
            ],
          );
        });
  }
}
