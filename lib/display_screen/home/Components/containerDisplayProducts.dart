
import 'package:ecommerce_application/homepage/components/class_homepage/class_homepage_ui.dart';
import 'package:ecommerce_application/homepage/components/listdatafind.dart';
import 'package:flutter/material.dart';

Widget containerDisplayImageFull()
{
  return Stack(
    children: [
      Container(
        color: Colors.white,
        height: 300,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
              image: productList1[selectindex]['imageproduct'],
              // (pagesbool==true)?productList[selectindex]['imageproduct']:productList1[selectindex]['imageproduct'],
          )
        ),
      ),
    ],
  );
}