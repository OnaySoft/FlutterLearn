import 'package:flutter/material.dart';

class LighTheme {
  ThemeData theme = ThemeData(
      floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: Colors.amber),
      textTheme: ThemeData.light().textTheme.copyWith(titleLarge: const TextStyle(fontSize: 40.0)));
}
