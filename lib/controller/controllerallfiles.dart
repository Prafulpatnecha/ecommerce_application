import 'package:flutter/material.dart';
import '../display_screen/display_products.dart';
import '../homepage/components/class_homepage/class_homepage_ui.dart';

class Ecommerce extends StatelessWidget {
  const Ecommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Akhilsir',
      routes: {
        '/': (context) => const HomePage(),
        '/home':(context) => const DisplayProductsLine(),
        // '/':(context) => const DisplayProductsLine(),
        // '/home': (context) =>
      },
    );
  }
}