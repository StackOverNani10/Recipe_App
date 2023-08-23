import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(Recipe());

class Recipe extends StatelessWidget {

  String titulo = 'Recipe App';

  @override
  Widget build(BuildContext context) {
    final theme = ThemeData();
    return MaterialApp(
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.blue[400],
          secondary: Colors.white,
        ),
      ),
      title: titulo,
      home: Home(titulo),
    );
  }
}
