import 'package:flutter/material.dart';

ThemeData appTheme = ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent));
ThemeData darkTheme = ThemeData.dark().copyWith(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent, brightness: Brightness.dark),
);
