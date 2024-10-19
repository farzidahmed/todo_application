import 'package:flutter/material.dart';
import 'package:to_do_application/models/todo.dart';
import 'package:to_do_application/views/add_sreen.dart';
import '../constants/app_colors.dart';
import '../global widget/appbar.dart';
import '../global widget/buildtextfiled.dart';
import '../global widget/todoitem.dart';
import '../global widget/todolist.dart';

class HomeScreen extends StatefulWidget implements PreferredSizeWidget {
  HomeScreen({super.key});

  final List<Todo> todos = Todo.todolist();

  @override
  State<HomeScreen> createState() => _HomeScreenState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(56.0);
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppsColors.background,
      appBar: const Appbar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const buildTextfiled(),
                const todoitem(),
                todolist(todos: widget.todos)
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _floatingActionbutton,
        child: const Icon(Icons.add),
      ),
    );
  }

  void _floatingActionbutton() {
    //TODO:implement floating actin button
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const AddSreen()));


  }
}
