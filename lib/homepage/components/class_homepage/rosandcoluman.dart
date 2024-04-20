// import 'dart:js';

import 'package:ecommerce_application/homepage/util/colors.dart';
import 'package:flutter/cupertino.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// import '../listdatafind.dart';
import 'containerdata.dart';

Row rowBar({required GestureDetector iconselect,required bool firstbool,required GestureDetector iconselect1}) {
  return Row(
    children: [
      Expanded(
        child: Container(
          // color: Colors.red,
          height: 90,
          width: 30,
          margin: const EdgeInsets.symmetric(vertical: 25),
          child: Row(
            children: [
              // Icon(Icons.sort)
              const SizedBox(
                width: 10,
              ),
              (firstbool==true)?containerIconPassing(
                iconsfind: iconselect,
              ):const Text(''),
              const Spacer(),
              containerIconPassing(
                iconsfind: iconselect1,
              ),
              const SizedBox(
                width: 15,
              ),
              containerIconPassing(
                iconsfind: GestureDetector(
                  child: Icon(
                    Icons.notifications_none,
                    size: 30,
                    color: menuColor,
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
            ],
          ),
        ),
      )
    ],
  );
}

Widget rowText() {
  return Row(
    children: [
      Container(
        margin: const EdgeInsets.all(19),
        height: 20,
        width: 100,
        // color: Colors.red,
        child: Text(
          'CATEGORIES',
          style: GoogleFonts.bungee(
            textStyle: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    ],
  );
}

Widget columnScreenChanges({required Color colorback,
  required AssetImage imageproduct,
  required String textimage,required var priceimage,required GestureDetector iconimagegast})
{
  return Column(
    children: [
      containerScreenChanges(colorback: colorback,imageproduct: imageproduct,),
      containerScreenChangesText(iconimagegast: iconimagegast,priceimage: priceimage,textimage: textimage),
    ],
  );
}