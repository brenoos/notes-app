import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Notes"),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}
