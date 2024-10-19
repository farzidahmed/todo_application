import 'package:flutter/material.dart';
import 'package:to_do_application/constants/app_colors.dart';

class Appbar extends StatefulWidget implements PreferredSizeWidget{
  const Appbar({super.key});

  @override
  State<Appbar> createState() => _AppbarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(56.0);
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: AppsColors.background,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: _buildIconMeno,
                icon: const Icon(
                  Icons.menu,
                  color: AppsColors.tdblack,
                  size: 30,
                )),
            SizedBox(
              height: 40,
              width: 40,
              child: ClipRRect(child: Image.asset("assets/image/rimon.jpg"),),
            )
          ],
        ),
      ),
    );
  }
  void _buildIconMeno() {
    //TODO:implements icon menu
  }
}
