import 'package:ecommerce_application/homepage/components/listdatafind.dart';
import 'package:ecommerce_application/homepage/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget bottomNavigationcart()
{
  return Container(
    color: const Color(0x01ffffff),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.shopping_bag_outlined,size: 30),
        const SizedBox(width: 10,),
        Text('ADD TO CART',style: GoogleFonts.bungee(textStyle: const TextStyle(fontSize: 20,height: 1.7),),),
      ],
    ),
  );
}

Widget bottomNavigationPay()
{
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      const Icon(Icons.payment_outlined,color: Colors.black,),
      Text('Paying',style: GoogleFonts.bungee(textStyle: const TextStyle(color: Colors.black,fontSize: 20)),),
      Text(totalbill.toInt().toString(),style:GoogleFonts.bungee(textStyle: const TextStyle(color: Colors.black,fontSize: 20)),),
    ],
  );
}
