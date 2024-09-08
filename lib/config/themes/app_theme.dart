import 'package:flutter/material.dart';

//Variable con inicio de guion bajo es variable local solo se puede usar en este archivo
//Para poner el colo hex se pone 0xFF y el color hex
const Color _customColor = Color(0xFF08A5C0);

const List<Color> _colorThemes = [
  _customColor,
  Colors.yellow,
  Colors.pink,
  Colors.purple,
  Colors.teal,
  Colors.green,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0
      })
      //Uso de asersiones propias de dart para validar que no se introdusca un entero mas alla del que tiene el arreglo
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length -1,
            'Colors must be between 0 and ${_colorThemes.length-1}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, 
        colorSchemeSeed: _colorThemes[selectedColor],
        fontFamily: 'BasierCircle',
        //Modo oscuro
        //brightness: Brightness.dark,
        
        );

  }
}
