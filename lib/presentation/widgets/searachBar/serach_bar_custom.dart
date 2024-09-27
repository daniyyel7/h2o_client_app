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
      padding: EdgeInsets.symmetric(horizontal: 7.0, vertical: 12.0),
      child: SearchBar(
        hintText: "Buscar",
        leading: Icon(
          Icons.search_outlined,
          color: Color.fromARGB(113, 8, 164, 192),
        ),
      ),
    );
  }
}
