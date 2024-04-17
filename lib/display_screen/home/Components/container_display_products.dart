import 'package:ecommerce_application/homepage/components/class_homepage/class_homepage_ui.dart';
import 'package:ecommerce_application/homepage/components/listdatafind.dart';
import 'package:ecommerce_application/homepage/util/colors.dart';
import 'package:flutter/cupertino.dart';

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

Widget containerDisplayImageFull() {
  return Stack(
    children: [
      Container(
        height: 300,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: RadialGradient(colors: [
            (pagesbool == true)
                ? productList[selectindex]['colorback']
                : productList1[selectindex]['colorback'],
            const Color(0x00000000),
          ]),
          image: DecorationImage(
            image: (pagesbool == true)
                ? productList[selectindex]['imageproduct']
                : productList1[selectindex]['imageproduct'],
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    ],
  );
}

Widget containerDisplayTextFull() {
  return SingleChildScrollView(
    child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 100,
                width: 372,
                // color: Colors.blue,
                child: Text.rich(
                  TextSpan(
                    children: [
                      (pagesbool == true)
                          ? TextSpan(
                              text:
                                  '  ${productList[selectindex]['textimage']}',
                              style: GoogleFonts.bungee(
                                textStyle: const TextStyle(
                                    color: Colors.white, fontSize: 35),
                              ),
                            )
                          : TextSpan(
                              text:
                                  '  ${productList1[selectindex]['textimage']}',
                              style: GoogleFonts.bungee(
                                textStyle: const TextStyle(
                                    color: Colors.white, fontSize: 35),
                              ),
                            ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              child: SizedBox(
                // height: 100,
                // width: 372,
                // color: Colors.blue,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ReadMoreText(
                        (pagesbool==true)?productList[selectindex]['description']:productList1[selectindex]['description'],
                        trimLines: 2,
                        style: const TextStyle(color: Colors.white),
                        trimMode: TrimMode.Line,
                        colorClickableText: menuColor,
                        trimExpandedText: 'Show less',
                        trimCollapsedText: 'More Details',
                        // delimiter: 'More Details',
                        // delimiterStyle: TextStyle(decoration: TextDecoration.underline,decorationColor: menuColor),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 25,
                  width: 130,
                  // color: Colors.blue,
                  child: Text(
                    '   ${(pagesbool==true)?productList[selectindex]['rating']:productList1[selectindex]['rating']}',
                    style: const TextStyle(color: Colors.white, height: -35),
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 32,
                  width: 160,
                  // color: Colors.blue,
                  child: Text(
                    ' \$ ${(pagesbool==true)?productList[selectindex]['priceimage']:productList1[selectindex]['priceimage']}',
                    style: GoogleFonts.bungee(color: Colors.white,fontSize: 30),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}