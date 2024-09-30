import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:h2o_client_app/presentation/widgets/appBar/app_bar_widget.dart';
import 'package:h2o_client_app/presentation/widgets/bottomNavigatorBar/bottom_navigator_bar_widget.dart';
import 'package:h2o_client_app/presentation/widgets/cards/add_minus_widget.dart';

class HomeScreen extends StatelessWidget {
  
  static const String name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      appBar: AppBarCustom(),
      bottomNavigationBar: BottomNavigatorBarCustom(),
      body: Text('Hola Mundo'),
    );
  }
}
