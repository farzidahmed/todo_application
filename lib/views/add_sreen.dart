import 'package:flutter/material.dart';
import 'package:to_do_application/constants/app_colors.dart';

import '../global widget/custom_add_textfileds.dart';
import '../global widget/custom_elevated_button.dart';

class AddSreen extends StatefulWidget {
  const AddSreen({super.key});

  @override
  State<AddSreen> createState() => _AddSreenState();
}

class _AddSreenState extends State<AddSreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppsColors.background,
        title: const Text("Add note",style: TextStyle(
            color: Colors.black
        )),
        centerTitle: true,
      ),
      body:const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomAddTextfileds(),
                SizedBox(
                  height: 30,
                ),
                custom_elevated_button()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

