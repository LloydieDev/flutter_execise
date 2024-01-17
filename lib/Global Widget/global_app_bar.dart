import 'package:flutter/material.dart';

class GlobalAppBAr extends StatelessWidget implements PreferredSizeWidget {
  const GlobalAppBAr({
    Key? key,
    required this.color,
    required this.appBarTitle,
  }) : super(key: key);

  final Color color;
  final String appBarTitle;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: color,
      title: Center(
        child: Text(
          appBarTitle,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
