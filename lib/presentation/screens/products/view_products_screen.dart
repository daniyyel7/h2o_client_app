import 'package:flutter/material.dart';
import 'package:h2o_client_app/presentation/widgets/appBar/app_bar_widget.dart';
import 'package:h2o_client_app/presentation/widgets/bottomNavigatorBar/bottom_navigator_bar_widget.dart';
import 'package:h2o_client_app/presentation/widgets/cards/cards_product_custom.dart';

class ViewProductsScreen extends StatelessWidget {
  const ViewProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      appBar: AppBarCustom(),
      bottomNavigationBar: BottomNavigatorBarCustom(),
      backgroundColor: Color(0xFFF0F5F5),
      body: SingleChildScrollView(
        
        child: Column(
            children: [
              CardsProductCustom(
                titleCard: 'Garrafón', 
                description:  'El garrafon es de \n20 litros de agua pruficada totalmente',
                price: 'Precio \$ 50.00',
                ),
        
                CardsProductCustom(
                titleCard: 'Garrafón', 
                description:  'El garrafon es de \n20 litros de agua pruficada totalmente',
                price: 'Precio \$ 50.00',
                ),
        
                CardsProductCustom(
                titleCard: 'Garrafón', 
                description:  'El garrafon es de \n20 litros de agua pruficada totalmente',
                price: 'Precio \$ 50.00',
                ),
        
                CardsProductCustom(
                titleCard: 'Garrafón', 
                description:  'El garrafon es de \n20 litros de agua pruficada totalmente',
                price: 'Precio \$ 50.00',
                ),
        
                CardsProductCustom(
                titleCard: 'Garrafón', 
                description:  'El garrafon es de \n20 litros de agua pruficada totalmente',
                price: 'Precio \$ 50.00',
                ),
        
                CardsProductCustom(
                titleCard: 'Garrafón', 
                description:  'El garrafon es de \n20 litros de agua pruficada totalmente',
                price: 'Precio \$ 50.00',
                ),
        
                CardsProductCustom(
                titleCard: 'Garrafón', 
                description:  'El garrafon es de \n20 litros de agua pruficada totalmente',
                price: 'Precio \$ 50.00',
                ),
            ],
          ),
      ),

    );
  }
}