import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:h2o_client_app/presentation/widgets/appBar/app_bar_widget.dart';
import 'package:h2o_client_app/presentation/widgets/bottomNavigatorBar/bottom_navigator_bar_widget.dart';

class ReviewOrderScreen extends StatelessWidget {
  static const String name = 'review_order_screen';
  const ReviewOrderScreen({super.key});

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
                    'Ver pedido',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Divider(thickness: 2, color: Color(0xFF08A5C0)),
                  ),
                ],
              ),
            ),

            // Card dirección de entrega
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Dirección de entrega",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 8),
                      Text("Casa"),
                      Text(
                          "Tercera Norte Poniente, #16, Pueblo Nuevo, Solistahuacán, Chiapas"),
                    ],
                  ),
                ),
              ),
            ),

            // Detalles de entrega (Fecha)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Detalles de entrega",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),
                      _buildDatePicker(context),
                    ],
                  ),
                ),
              ),
            ),

            // Lista de productos
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Productos",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),
                      _buildProductItem("assets/img/garrafon.png", "Producto 1", 1, 10.00),
                      _buildProductItem("assets/img/garrafon.png", "Producto 2", 2, 15.00),
                      _buildProductItem("assets/img/garrafon.png", "Producto 3", 1, 5.00),
                    ],
                  ),
                ),
              ),
            ),

            // Sección: Resumen de compra
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Resumen",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),
                      _buildSummaryItem("Cantidad de artículos", "3"),
                      _buildSummaryItem("Descuentos", "\$0.00"),
                      _buildSummaryItem("Total a pagar", "\$50.00"),
                    ],
                  ),
                ),
              ),
            ),

            // Botón Realizar pedido
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: SizedBox(
                  width: 250,
                  height: 35,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all( const Color(0xff08A5C0)),
                    ),
                    onPressed: () { 
                      // A pantalla de orden confirmada
                      context.goNamed('order_confirm_screen');
                    },
                    child: const Text(
                      "Realizar pedido",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

// Producto con imagen
  Widget _buildProductItem(
      String imagePath, String name, int quantity, double price) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name),
                Text("Cantidad: $quantity"),
              ],
            ),
          ),
          Text("\$$price", style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

// Selector de fecha (Item Picker)
  Widget _buildDatePicker(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text("Fecha de entrega"),
        ElevatedButton(
          onPressed: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2023),
              lastDate: DateTime(2025),
            );
            if (pickedDate != null) {
              
            }
          },
          child: const Text("Seleccionar fecha"),
        ),
      ],
    );
  }

  Widget _buildSummaryItem(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
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
