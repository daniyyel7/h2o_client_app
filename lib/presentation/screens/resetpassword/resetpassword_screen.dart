import 'dart:ffi';
import 'dart:io';

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:h2o_client_app/presentation/widgets/textFormField/text_form_field_custom.dart';

// convertir tu StatelessWidget en un StatefulWidget
//(No acepta variables de estado)
class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          //decoration para el degradado...
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
                Color.fromRGBO(8, 165, 192, 80),
                Color.fromRGBO(60, 204, 220, 80)
              ]),
        ),
        child: Stack(
          //alignment: Alignment.center,
          children: [
            Column(
              children: [
                const SizedBox(height: 100, width: 1000),
                Image.asset(
                  // height: 150,
                  // width: 150,
                  'assets/img/logoh2o.png',
                ),
                const Text(
                  'Linda Vista',
                  style: TextStyle(color: Color(0xffFFFFFF), fontSize: 16),
                ),
                const Text(
                  'AGUA PURIFICADA',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  constraints: const BoxConstraints.tightFor(
                      height: 600, width: double.infinity),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  child: Column(
                    children: [
                      const SizedBox(height: 40),
                      const Text('Resetear contraseña',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff08A5C0))),
                      const SizedBox(
                        // Dar el espacio
                        height: 40,
                      ),
                      const TextFormFieldCustom(
                        labelText: 'Correo',
                        icon: Icons.email,
                      ),
                      const SizedBox(height: 40),
                      Container(
                        height: 50,
                        width: 250,
                        child: FilledButton(
                          style: FilledButton.styleFrom(
                              backgroundColor: const Color(0xff08A5C0)),
                          onPressed: () {},
                          child: const Text(
                            'Enviar',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('¿Ya tienes cuenta?'),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                                style: TextStyle(color: Color(0xff08A5C0)),
                                'Inicia sesión'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
