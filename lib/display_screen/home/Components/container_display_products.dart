
import 'package:ecommerce_application/homepage/components/class_homepage/class_homepage_ui.dart';
import 'package:ecommerce_application/homepage/components/listdatafind.dart';
import 'package:flutter/material.dart';

Widget containerDisplayImageFull()
{
  return Stack(
    children: [
      Container(
        height: 300,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [
                (pagesbool==true)?productList[selectindex]['colorback']:productList1[selectindex]['colorback'],
                const Color(0x00000000),
              ]
            ),
          image: DecorationImage(
              image:
              (pagesbool==true)?productList[selectindex]['imageproduct']:productList1[selectindex]['imageproduct'],
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    ],
  );
}
Widget containerDisplayTextFull()
{
  return Container(

  )
}