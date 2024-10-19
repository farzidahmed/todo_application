import 'package:flutter/material.dart';

class CustomAddTextfileds extends StatelessWidget {
  const CustomAddTextfileds({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: TextFormField(
        // controller: descriptionEditController,
        textAlignVertical: TextAlignVertical.top,
        textAlign: TextAlign.start,
        decoration: const InputDecoration(
          icon: Icon(Icons.title),
          hintText: 'Enter Text here',
          hintStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),
          border: InputBorder.none,
        ),
        maxLines: 5,
        onSaved: (String? value) {

        },
      ),
    );
  }
}
