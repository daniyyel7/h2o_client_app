import 'package:flutter/material.dart';
import 'package:h2o_client_app/config/router/app_router.dart';
import 'package:h2o_client_app/config/themes/app_theme.dart';
import 'package:h2o_client_app/presentation/screens/login/login_screen.dart';
import 'package:h2o_client_app/presentation/screens/register/register_screen.dart';
import 'package:h2o_client_app/presentation/screens/resetpassword/resetpassword_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      title: 'Material App',
      theme: AppTheme(selectedColor: 0).theme(),
      debugShowCheckedModeBanner: false,
      home: const ResetPasswordScreen(),
    );
  }
}
