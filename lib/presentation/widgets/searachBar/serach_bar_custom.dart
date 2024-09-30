import 'package:flutter/material.dart';

class SearchBarCustom extends StatelessWidget implements PreferredSizeWidget {
  const SearchBarCustom({
    super.key,
  });

  @override
  Size get preferredSize => const Size(100.0, 10.0);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: SearchBar(
        constraints: BoxConstraints(
          maxWidth: 300,
          maxHeight: 35
        ),
        hintText: "Buscador",
        leading: Icon(
          Icons.search_outlined,
          color: Color.fromARGB(113, 8, 164, 192),
        ),
      ),
    );
  }
}
