import 'package:flutter/material.dart';
import 'package:h2o_client_app/presentation/widgets/appBar/app_bar_widget.dart';
import 'package:h2o_client_app/presentation/widgets/bottomNavigatorBar/bottom_navigator_bar_widget.dart';
import 'package:h2o_client_app/presentation/widgets/searachBar/serach_bar_custom.dart';
import 'package:h2o_client_app/presentation/widgets/textFormField/text_form_field_custom.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {


    return const Scaffold(
        appBar: AppBarCustom(),
        bottomNavigationBar: BottomNavigatorBarCustom(),
        backgroundColor: Color(0xFFF0F5F5),
        );
  }
}


