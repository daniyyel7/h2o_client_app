import 'package:flutter/material.dart';

class BottomNavigatorBarCustom extends StatelessWidget {
  const BottomNavigatorBarCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.list_alt_outlined),
          label: 'Pedidos',
        ),
          BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Inicio',
        ),
         BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined),
          label: 'Perfil',
        ),
    ],
    selectedItemColor: const Color(0xFF08A5C0),
    );
  }
}
