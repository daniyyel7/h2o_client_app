import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavigatorBarCustom extends StatefulWidget {
  const BottomNavigatorBarCustom({
    super.key,
  });

  @override
  State<BottomNavigatorBarCustom> createState() =>
      _BottomNavigatorBarCustomState();
}

class _BottomNavigatorBarCustomState extends State<BottomNavigatorBarCustom> {
  int getCurrentIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.toString();

    switch (location) {
      case '/viewproducts':
        return 0;
      case '/':
        return 1;
      case '/s':
        return 3;
      default:
        return 1;
    }
  }

  void onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go('/viewproducts');
        break;
      case 1:
        context.go('/');
        break;
      case 2:
        context.go('/s');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      
      currentIndex: getCurrentIndex(context),
      onTap: (value) => onItemTapped(context, value),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_outlined),
            label: 'Pedidos',
            backgroundColor: Color(0xFF08A5C0)),
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
