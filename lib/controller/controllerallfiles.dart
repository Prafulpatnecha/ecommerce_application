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
      initialRoute: '/',
      routes: {
        // '/':(context)=>
        '/': (context) => HomePage(),
        '/home':(context) => DisplayProductsLine(),
      },
    );
  }
}