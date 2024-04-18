import 'package:ecommerce_application/homepage/components/listdatafind.dart';
import 'package:ecommerce_application/homepage/util/colors.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/painting.dart';
// import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

Widget containerProduct({required GestureDetector gestadd,required GestureDetector geste,required GestureDetector gestdec,required var index}) {
  return Container(
    width: double.infinity,
    height: 130,
    // color: Colors.red,
    decoration: const BoxDecoration(
      border: Border.symmetric(horizontal: BorderSide(color: Colors.white)),
    ),
    child: Stack(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: const EdgeInsets.only(left: 10),
            height: 110,
            width: 110,
            decoration: BoxDecoration(
              // color: Colors.black,
              gradient: RadialGradient(colors: [
                cart[index]['colorback'],
                // productList[selectindex]['colorback'],
                const Color(0x00000000),
              ]),
              //   border: Border.all(color: Colors.white),
              image: DecorationImage(
                image: cart[index]['imageproduct'],
                // productList[2]['imageproduct'],
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ),

        Align(
          alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('  ${cart[index]['textimage']}',
                        // productList[2]['textimage'],
                        style: GoogleFonts.bungee(
                textStyle: const TextStyle(color: Colors.cyanAccent,fontSize: 18)),
                      ),
            )),
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            children: [
              const SizedBox(width: 130,),
              gestadd,
              geste,
              gestdec,
              // containerAddAndDec(iconadd: ),
              // containerDelete(icondelete: ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            alignment: Alignment.center,
            height: 60,
            margin: const EdgeInsets.all(20),
            width: 80,
            // color: Colors.white,
            child: Text(cart[index]['inc_dec'].toInt().toString(),style: TextStyle(color: menuColor,fontSize: 40),),
          ),
        ),
        Row(
          children: [
            const SizedBox(width: 10,),
            Text('${cart[index]['price']}💲',style: GoogleFonts.bungee(textStyle: TextStyle(color: menuColor)),)
          ],
        )
      ],
    ),
  );
}

Container containerDelete({required Icon  icondelete}) {
  return Container(
              margin: const EdgeInsets.all(10),
              height: 35,width: 35,
              decoration: BoxDecoration(
              // color: Colors.white,
                border: Border.all(color: menuColor)
              ),
              child: icondelete,
            );
}

Container containerAddAndDec({required Icon iconadd}) {
  return Container(
              height: 35,width: 35,
              decoration: BoxDecoration(
              // color: Colors.white,
                border: Border.all(color: menuColor)
              ),
              child: iconadd,
            );
}