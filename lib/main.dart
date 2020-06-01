import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'package:recipes_app/screens/recipe.dart';

void main() => runApp(MaterialApp(
  routes: {
    '/': (context) => Home(),
    '/recipe': (context) => RecipeScreen(),
  },
));
