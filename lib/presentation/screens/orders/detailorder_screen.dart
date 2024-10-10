import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:h2o_client_app/presentation/widgets/appBar/app_bar_widget.dart';
import 'package:h2o_client_app/presentation/widgets/bottomNavigatorBar/bottom_navigator_bar_widget.dart';

class DetailOrderScreen extends StatelessWidget {
  //static const String name = 'categories_screen_garrafones';
  const DetailOrderScreen({super.key});

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
                    'Detalles',
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
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SizedBox(
                  height: 600.0,
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
                            const SizedBox(height: 10),
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
                                  SizedBox(height: 15),
                                  Text(
                                    'Observación de entrega:',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  Text('Dinero en un garrafón vacío'),
                                ],
                              ),
                            ),
                            const SizedBox(height: 30),
                            Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(right: 180),
                                  child: Text(
                                    'Productos',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                //=======================================
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      child: Image.asset(
                                          width: 70,
                                          height: 70,
                                          'assets/img/botellas_categorias.png'),
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    const Column(
                                      children: [
                                        Text(
                                          'Paquete de botellas',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Row(
                                          children: [
                                            Text('Cantidad: 1'),
                                            SizedBox(width: 20),
                                            Text('\$10.00'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text('Total:'),
                                            SizedBox(width: 20),
                                            Text('\$10.00'),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                //============================2
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                        width: 70,
                                        height: 70,
                                        'assets/img/garrafon_categoria.png'),
                                        const SizedBox(
                                      width: 30,
                                    ),
                                    const Column(
                                      children: [
                                        Text(
                                          'Garrafón',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Row(
                                          children: [
                                            Text('Cantidad: 2'),
                                            SizedBox(width: 20),
                                            Text('\$20.00'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text('Total:'),
                                            SizedBox(width: 20),
                                            Text('\$20.00'),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 40),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(width: 27),
                                Text(
                                  'Monto total:',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                SizedBox(width: 50),
                                Text('\$30.00'),
                              ],
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(width: 27),
                                Text(
                                  'Estado de pago:',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                SizedBox(width: 50),
                                Text('Confirmado'),
                              ],
                            ),
                            const SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 40,
                                  width: 140,
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xff08A5C0),
                                        foregroundColor: Colors.white),
                                    onPressed: () {
                                      context.goNamed('ticketorder_screen');
                                    },
                                    child: const Text(
                                      'Ver recibo',
                                      style: TextStyle(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          
            const SizedBox(height: 150,)
          ],
        ),
      ),
    );
  }
}
