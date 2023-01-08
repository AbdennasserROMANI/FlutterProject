import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  // scaffoldBackgroundColor: Colors.purple.shade900,
  //colorScheme: const ColorScheme.dark(),
  accentColor: Colors.orange,
  brightness: Brightness.dark,
  //primaryColor: Colors.amber,
  primarySwatch: Colors.amber,
  iconTheme: IconThemeData(color: Colors.amber.shade200,opacity: 0.8),
);

ThemeData lightTheme = ThemeData(
  // scaffoldBackgroundColor: Colors.purple.shade50,
  //colorScheme: const ColorScheme.light(),
  //accentColor: Colors.pink,
  brightness: Brightness.light,
  //primaryColor: Colors.amber,
  primarySwatch: Colors.amber,
  iconTheme: IconThemeData(color: Colors.amber.shade200,opacity: 0.8),
);
