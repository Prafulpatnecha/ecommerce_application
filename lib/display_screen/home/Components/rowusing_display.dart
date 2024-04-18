import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget bottomNavigationcart()
{
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Icon(Icons.shopping_bag_outlined,size: 30),
      const SizedBox(width: 10,),
      Text('ADD TO CART',style: GoogleFonts.bungee(textStyle: const TextStyle(fontSize: 20,height: 1.7),),),
    ],
  );
}