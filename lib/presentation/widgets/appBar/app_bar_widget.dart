import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCustom({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Linda Vista'),
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[Color(0xFF08A5C0), Color(0xFF3CCCDC)]),
        ),
      ),
      centerTitle: false,
      titleTextStyle: const TextStyle(color: Colors.white, fontSize: 14),
      leading: const Padding(
        padding: EdgeInsets.all(12.0),
        child: CircleAvatar(backgroundImage: AssetImage('assets/img/logo.png')),
      ),
    );
  }
}
