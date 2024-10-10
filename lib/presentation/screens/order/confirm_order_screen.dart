import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:h2o_client_app/presentation/widgets/appBar/app_bar_widget.dart';
import 'package:h2o_client_app/presentation/widgets/bottomNavigatorBar/bottom_navigator_bar_widget.dart';

class OrderConfirmScreen extends StatelessWidget {
  static const String name = 'order_confirm_screen';
  const OrderConfirmScreen({super.key});

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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(thickness: 2, color: Color(0xFF08A5C0)),
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Confirmación de pedido',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Divider(thickness: 2, color: Color(0xFF08A5C0)),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 150.0,
                    height: 150.0,
                    child: Image(
                      image:
                          AssetImage('assets/img/order_confirmation_image.png'),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "¡Tu pedido fue realizado con éxito!",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Estamos preparando todo para que lo recibas en el lugar que indicaste.",
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  _buildConfirmationDetails(),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 250,
                    height: 35,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(const Color(0xff08A5C0)),
                      ),
                      onPressed: () {
                        // Regresa al home
                        context.goNamed('home_screen');
                      },
                      child: const Text(
                        "Ver más productos",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildConfirmationDetails() {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDetailRow("Número de pedido", "#408569"),
            _buildDetailRow("Total a pagar", "\$50.00"),
            const SizedBox(height: 10),
            const Text("Deberás pagar tu pedido al momento de la entrega"),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
