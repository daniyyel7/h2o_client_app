import 'package:flutter/material.dart';
import 'package:h2o_client_app/presentation/widgets/appBar/app_bar_widget.dart';
import 'package:h2o_client_app/presentation/widgets/bottomNavigatorBar/bottom_navigator_bar_widget.dart';
import 'package:h2o_client_app/presentation/widgets/cards/cards_product_custom.dart';
import 'package:h2o_client_app/presentation/widgets/searachBar/serach_bar_custom.dart';

class MyOrdersScreen extends StatelessWidget {
  //static const String name = 'categories_screen_garrafones';
  const MyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCustom(),
      bottomNavigationBar: const BottomNavigatorBarCustom(),
      backgroundColor: const Color(0xFFF0F5F5),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Separación entre el buscador y las cards
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(thickness: 2, color: Color(0xFF34949C)),
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Mis pedidos',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Divider(thickness: 2, color: Color(0xFF34949C)),
                  ),
                ],
              ),
            ),

            // Cards My orders
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: SizedBox(
                  height: 750.0,
                  child: ListView(
                    children: [
                      Card(
                        color: Colors.white,
                        elevation: 4,
                        child: Column(
                          children: [
                            const Row(
                              children: [
                                SizedBox(width: 30, height: 60),
                                Icon(
                                  size: 32,
                                  Icons.list_alt,
                                  color: Color(0xff08A5C0),
                                ),
                                SizedBox(width: 15),
                                Column(
                                  children: [
                                    Text(
                                      '#408569',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text('En curso')
                                  ],
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Divider(
                                        thickness: 1, color: Color(0xFF34949C)),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            const Padding(
                              padding: EdgeInsets.only(right: 100),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Fecha de orden:',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  Text('Miercoles 09 de octubre 2024'),
                                  SizedBox(height: 15),
                                  Text(
                                    'Fecha de entrega:',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  Text('Jueves 10 de octubre 2024'),
                                  SizedBox(height: 15),
                                  Text(
                                    'Dirección de entrega:',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  Text('Casa'),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                            const Row(
                              children: [
                                SizedBox(width: 27),
                                Text(
                                  'Monto a pagar:',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                SizedBox(width: 148),
                                Text('\$30.00'),
                              ],
                            ),
                            const SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 40,
                                  width: 130,
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                        backgroundColor: Colors.red,
                                        foregroundColor: Colors.white),
                                    onPressed: () {},
                                    child: const Text(
                                      'Cancelar',
                                      style: TextStyle(),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 40),
                                Container(
                                  height: 40,
                                  width: 130,
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xff08A5C0),
                                        foregroundColor: Colors.white),
                                    onPressed: () {},
                                    child: const Text(
                                      'Ver detalles',
                                      style: TextStyle(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15),
                          ],
                        ),
                      ),
                      //-------------------- Card 2 ---------------------
                      const SizedBox(height: 20),
                      Card(
                        color: Colors.white,
                        elevation: 4,
                        child: Column(
                          children: [
                            const Row(
                              children: [
                                SizedBox(width: 30, height: 60),
                                Icon(
                                  size: 32,
                                  Icons.list_alt,
                                  color: Color(0xff08A5C0),
                                ),
                                SizedBox(width: 15),
                                Column(
                                  children: [
                                    Text(
                                      '#309875',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text('Entregado')
                                  ],
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Divider(
                                        thickness: 1, color: Color(0xFF34949C)),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            const Padding(
                              padding: EdgeInsets.only(right: 100),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Fecha de orden:',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  Text('Lunes 23 de septiembre 2024'),
                                  SizedBox(height: 15),
                                  Text(
                                    'Fecha de entrega:',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  Text('Lunes 23 de octubre 2024'),
                                  SizedBox(height: 15),
                                  Text(
                                    'Dirección de entrega:',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  Text('Casa'),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                            const Row(
                              children: [
                                SizedBox(width: 27),
                                Text(
                                  'Monto a pagar:',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                SizedBox(width: 148),
                                Text('\$80.00'),
                              ],
                            ),
                            const SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 40,
                                  width: 130,
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xff08A5C0),
                                        foregroundColor: Colors.white),
                                    onPressed: () {},
                                    child: const Text(
                                      'Ver detalles',
                                      style: TextStyle(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15),
                          ],
                        ),
                      ),
                      //================= Card 3 ============================
                      Card(
                        color: Colors.white,
                        elevation: 4,
                        child: Column(
                          children: [
                            const Row(
                              children: [
                                SizedBox(width: 30, height: 60),
                                Icon(
                                  size: 32,
                                  Icons.list_alt,
                                  color: Color(0xff08A5C0),
                                ),
                                SizedBox(width: 15),
                                Column(
                                  children: [
                                    Text(
                                      '#309875',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text('Entregado')
                                  ],
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Divider(
                                        thickness: 1, color: Color(0xFF34949C)),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            const Padding(
                              padding: EdgeInsets.only(right: 100),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Fecha de orden:',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  Text('Lunes 23 de septiembre 2024'),
                                  SizedBox(height: 15),
                                  Text(
                                    'Fecha de entrega:',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  Text('Lunes 23 de octubre 2024'),
                                  SizedBox(height: 15),
                                  Text(
                                    'Dirección de entrega:',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  Text('Casa'),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                            const Row(
                              children: [
                                SizedBox(width: 27),
                                Text(
                                  'Monto a pagar:',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                SizedBox(width: 148),
                                Text('\$80.00'),
                              ],
                            ),
                            const SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 40,
                                  width: 130,
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xff08A5C0),
                                        foregroundColor: Colors.white),
                                    onPressed: () {},
                                    child: const Text(
                                      'Ver detalles',
                                      style: TextStyle(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
