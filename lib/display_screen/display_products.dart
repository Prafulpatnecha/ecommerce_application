import 'package:ecommerce_application/homepage/components/class_homepage/rosandcoluman.dart';
import 'package:ecommerce_application/homepage/util/colors.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home/Components/container_display_products.dart';

class DisplayProductsLine extends StatefulWidget {
  const DisplayProductsLine({super.key});

  @override
  State<DisplayProductsLine> createState() => _DisplayProductsLineState();
}

class _DisplayProductsLineState extends State<DisplayProductsLine> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: ProductDisplayingData());
  }
}

class ProductDisplayingData extends StatefulWidget {
  const ProductDisplayingData({super.key});

  @override
  State<ProductDisplayingData> createState() => _ProductDisplayingDataState();
}

class _ProductDisplayingDataState extends State<ProductDisplayingData> {
  @override
  Widget build(BuildContext context) {
    double height1 = MediaQuery.of(context).size.height;
    double width1 = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: backColor,
        body: Container(
          // height: height,
          // width: width,
          decoration: BoxDecoration(
              gradient: RadialGradient(
            colors: [
              backgroundCol,
              backgroundCol2,
            ],
            radius: 1,
            center: const Alignment(0.8, 0),
          ),),
          child: Container(
            height: height1,
            width: width1,
            margin: const EdgeInsets.all(10),
            // color: Colors.orange,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  rowBar(
                    firstbool: true,
                      iconselect: GestureDetector(
                        onTap: () {
                           setState(() {
                            Navigator.of(context).pop();
                           });
                        },
                        child:Icon(
                        Icons.arrow_back_sharp,
                        color: menuColor,
                      ),
                    ),),
                  containerDisplayImageFull(),
                  containerDisplayTextFull(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
// GestureDetector(
// onTap: () {
// setState(() {
// Navigator.of(context).pop();
// });
// },
// child: