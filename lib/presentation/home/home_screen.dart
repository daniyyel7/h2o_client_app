import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agua Linda Vista'),
        flexibleSpace: Container(
        decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: <Color>[Color(0xFF08A5C0), Color(0xFF3CCCDC)]),
            ),
          ),
        centerTitle: false,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 14 ),
        leading: const Padding(
          padding: EdgeInsets.all(12.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/img/logo.png')
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            onPressed: () { },
            color: Colors.white,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
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
      ),
      backgroundColor: const Color(0xFFF0F5F5) ,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        
      },),

    );
  }
}