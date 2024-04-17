// import 'package:flutter/cupertino.dart';
// import 'dart:ui';

// import 'package:ecommerce_application/homepage/util/image.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../util/colors.dart';

Container containerIconPassing({required GestureDetector iconsfind}) {
  return Container(
    height: 50,
    width: 50,
    decoration: BoxDecoration(
      // color: Colors.blue,
      borderRadius: BorderRadius.circular(10),
      border: const Border.fromBorderSide(
        BorderSide(color: Colors.white, width: 0.1),
      ),
    ),
    child: iconsfind,
  );
}

Widget welcomeContainer() {
  return Row(
    children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        height: 90,
        width: 260,
        // color: Colors.blue,
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   children: [
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'WELCOME\n',
                style: GoogleFonts.bungee(
                  textStyle: const TextStyle(color: Colors.white, fontSize: 45),
                ),
              ),
              TextSpan(
                text: ' Our Furniture Shop',
                style: GoogleFonts.abhayaLibre(
                  textStyle:
                      TextStyle(color: textColor, fontSize: 20, height: -0.3),
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget searchproducts() {
  return Container(
    margin: const EdgeInsets.all(10),
    width: double.infinity,
    height: 60,
    decoration: BoxDecoration(
      color: backgroundCol2,
      borderRadius: const BorderRadius.all(
        Radius.circular(8),
      ),
      border: Border.fromBorderSide(
        BorderSide(color: textColor),
      ),
    ),
    child: TextField(
      cursorColor: textColor,
      style: const TextStyle(color: Colors.white),
      decoration: const InputDecoration(
        suffixIcon: Icon(Icons.search),
        hintText: 'Chairs For Bedroom...',
        hintStyle: TextStyle(color: Colors.white60),
        labelStyle: TextStyle(
          color: Colors.white,
          decorationColor: Colors.white,
        ),
        border: OutlineInputBorder(borderSide: BorderSide.none),
      ),
    ),
  );
}

// -----------------------------------------------------------------------------------------------------
int selectnumber = 0;

Container containerCategories({required bool ck, required String textline}) {
  return Container(
    alignment: Alignment.center,
    decoration: (ck == true)
        ? BoxDecoration(
            border: Border(bottom: BorderSide(color: menuColor)),
          )
        : BoxDecoration(
            border: Border(bottom: BorderSide(color: backgroundCol2)),
          ),
    height: 40,
    width: 80,
    child: Text(
      textline,
      style: TextStyle(
        color: (true == ck) ? menuColor : Colors.white,
      ),
    ),
  );
}

// todo--------------------------------------------------------------------------------------------------------
Widget containerScreenChanges({
  required Color colorback,
  required AssetImage imageproduct,
}) {
  return Container(
    height: 160,
    margin: const EdgeInsets.only(top: 10),
    width: 150,
    decoration: BoxDecoration(
      gradient: RadialGradient(colors: [
        colorback,
        Colors.black12,
      ]),
      color: Colors.black45,
      borderRadius: const BorderRadius.only(topLeft: Radius.circular(10)),
      image: DecorationImage(
        image: imageproduct,
      ),
    ),
  );
}

Widget containerScreenChangesText(
    {required var textimage,
    required var priceimage,
    required Icon iconimage}) {
  return Container(
    width: 150,
    height: 75,
    decoration: const BoxDecoration(
      color: Colors.black38,
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(10),
      ),
    ),
    child: Column(
      children: [
        Row(
          children: [
            RichText(
              text: TextSpan(children: [
                TextSpan(text: '  $textimage', style: GoogleFonts.bungee(textStyle: const TextStyle(color: Colors.white))),
                //<----------------
              ]),
            ),
          ],
        ),
        const Spacer(),
        Row(
          children: [
            Text(
              ' 💲$priceimage',
              style: const TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
              ),
            ),
            const Spacer(),
            Container(
              // alignment: Alignment.center,
              height: 30, width: 30,
              decoration: BoxDecoration(
                  color: menuColor, borderRadius: BorderRadius.circular(2)),
              child: iconimage,
            ),
            const SizedBox(
              width: 5,
            )
          ],
        ),
        const SizedBox(
          height: 10,
        )
      ],
    ),
  );
}
