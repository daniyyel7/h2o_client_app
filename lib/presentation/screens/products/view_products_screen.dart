import 'package:flutter/material.dart';
import 'package:h2o_client_app/presentation/widgets/appBar/app_bar_widget.dart';
import 'package:h2o_client_app/presentation/widgets/bottomNavigatorBar/bottom_navigator_bar_widget.dart';
import 'package:h2o_client_app/presentation/widgets/cards/cards_product_custom.dart';
import 'package:h2o_client_app/presentation/widgets/textFormField/text_form_field_custom.dart';

class ViewProductsScreen extends StatelessWidget {
  const ViewProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      appBar: AppBarCustom(),
      body: Column(
          children: [
            CardsProductCustom(
              titleCard: "Ejemplo", 
              height: 200
              ),
              TextFormFieldCustom()
          ],
        ),
      bottomNavigationBar: BottomNavigatorBarCustom(),

    );
  }
}