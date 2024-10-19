import 'package:flutter/material.dart';
import 'package:to_do_application/constants/app_colors.dart';

class buildTextfiled extends StatelessWidget {
  const buildTextfiled({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)),
        child: const TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black54,
              size: 20,
            ),
            prefixIconConstraints: BoxConstraints(
              maxHeight: 20,
              minWidth: 25,
            ),
            hintText: "Search",
            hintStyle: TextStyle(
                color: AppsColors.background,
                fontSize: 20,
                fontWeight: FontWeight.w300),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
