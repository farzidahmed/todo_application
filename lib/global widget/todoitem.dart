import 'package:flutter/material.dart';

class todoitem extends StatelessWidget {
  const todoitem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 10,
        left: 10,
        right: 50
      ),
      child: const Text("All ToDos",style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w600,
      ),),
    );
  }
}
