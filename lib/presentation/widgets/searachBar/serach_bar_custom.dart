import 'package:flutter/material.dart';

class searchBarCustom extends StatelessWidget {
  const searchBarCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      hintText: "Buscador",
      leading: Icon(
        Icons.search_outlined,
        color: Color.fromARGB(113, 8, 164, 192),
      ),
    );
  }
}
