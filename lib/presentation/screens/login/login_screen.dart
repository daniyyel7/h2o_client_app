//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:h2o_client_app/presentation/widgets/textFormField/text_form_field_custom.dart';

// convertir tu StatelessWidget en un StatefulWidget
//(No acepta variables de estado)
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.end, //Alineacion del container blanco...
          children: [
            Container(
              height: 600,
              constraints: const BoxConstraints.tightFor(
                  height: 600, width: double.infinity),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Column(
                children: [
                  const SizedBox(
                    // Dar el espacio
                    height: 20,
                  ),
                  const TextFormFieldCustom(
                    labelText: 'Usuario',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextFormFieldCustom(
                    labelText: 'Contraseña',
                  ),
                  SizedBox(height: 5),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Padding(
                      //   padding: EdgeInsets.symmetric(horizontal: 5),
                      //   child: Checkbox(
                      //     value: _isChecked,
                      //     onChanged: (value) {
                      //       setState(() {
                      //         _isChecked = value ?? false;
                      //       });
                      //     },
                      //     visualDensity: VisualDensity.standard,
                      //     shape: RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.circular(4),
                      //       side: BorderSide(
                      //         color:
                      //             _isChecked ? Color(0xff08A5C0) : Colors.grey,
                      //         width: 2,
                      //       ),
                      //     ),
                      //     fillColor: WidgetStateProperty.all(_isChecked
                      //         ? Color(0xff08A5C0)
                      //         : Colors.transparent),
                      //   ),
                      // ),
                      SizedBox(width: 7),
                      Checkbox(
                        value: _isChecked,
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value ?? false;
                          });
                        },
                        visualDensity: VisualDensity.standard,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                          side: BorderSide(
                            color: _isChecked ? Color(0xff08A5C0) : Colors.grey,
                            width: 2,
                          ),
                        ),
                        fillColor: WidgetStateProperty.all(_isChecked
                            ? Color(0xff08A5C0)
                            : Colors.transparent),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 0.01),
                        child: Text('Recordar'),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
