import 'package:flutter/material.dart';
import 'package:h2o_client_app/presentation/widgets/appBar/app_bar_widget.dart';
import 'package:h2o_client_app/presentation/widgets/bottomNavigatorBar/bottom_navigator_bar_widget.dart';
import 'package:h2o_client_app/presentation/widgets/cards/cards_product_custom.dart';
import 'package:h2o_client_app/presentation/widgets/searachBar/serach_bar_custom.dart';

class CategoriesScreenGarrafones extends StatelessWidget {
  static const String name = 'categories_screen_garrafones';
  const CategoriesScreenGarrafones({super.key});

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
                    child: Divider(
                        thickness: 2,
                        color: Color(0xFF34949C)
                        ),
                  ),
                  SizedBox(width: 8), 
                  Text(
                    'Garrafones',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                  SizedBox(width: 8), 
                  Expanded(
                    child: Divider(
                        thickness: 2,
                        color: Color(0xFF34949C)
                        ),
                  ),
                ],
              ),
            ),

            // Cards productos
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0.0),
              child: SizedBox(
                  height: 600.0,
                  child: ListView(
                    children: const [
                      CardsProductCustom(
                         titleCard: 'Garrafón Lleno',
                        description: 'descripcion de garrafon lleno',
                        price: '53',
                      ),
                      CardsProductCustom(
                           titleCard: 'Garrafón vacío', 
                        description: 'descripcion de garrafon vacio',
                        price: '23',
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
