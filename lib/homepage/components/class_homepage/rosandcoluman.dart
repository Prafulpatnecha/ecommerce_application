import 'package:ecommerce_application/homepage/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// import '../listdatafind.dart';
import 'containerdata.dart';

Row rowBar({required Icon iconselect}) {
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
              containerIconPassing(
                iconsfind: iconselect
              ),
              const Spacer(),
              containerIconPassing(
                iconsfind: Icon(
                  Icons.shopping_bag_outlined,
                  size: 35,
                  color: menuColor,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              containerIconPassing(
                iconsfind: Icon(
                  Icons.notifications_none,
                  size: 30,
                  color: menuColor,
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
  required String textimage,required var priceimage,required Icon iconimage})
{
  return Column(
    children: [
      containerScreenChanges(colorback: colorback,imageproduct: imageproduct,),
      containerScreenChangesText(iconimage: iconimage,priceimage: priceimage,textimage: textimage),
    ],
  );
}