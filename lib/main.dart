import 'package:flutter/material.dart';
import 'package:h2o_client_app/config/themes/app_theme.dart';
import 'package:h2o_client_app/presentation/screens/categories/categories_screen_garrafones.dart';
import 'package:h2o_client_app/presentation/screens/home/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: AppTheme( selectedColor: 0).theme(),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen()
    );
  }
}