import 'package:flutter/material.dart';

const Color _customColor = Color(0xFFEE81F8);

const List<Color> _colorTheme = [
  _customColor,
  Colors.black,
  Colors.red,
  Colors.blue,
  Colors.teal,
  Colors.purple,
  Colors.yellow,
];

class AppTheme {

  final int selectedColor;

  AppTheme({
     this.selectedColor = 0
    })
    :assert(selectedColor>=0 && selectedColor<_colorTheme.length, 'Colors must be bwttewwn 0 and ${_colorTheme.length}');

  ThemeData theme(){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorTheme[selectedColor],
      //brightness: Brightness.dark
    );
  }
}