import 'package:ecommerce_application/homepage/components/class_homepage/class_homepage_ui.dart';
import 'package:ecommerce_application/homepage/components/class_homepage/rosandcoluman.dart';
import 'package:ecommerce_application/homepage/components/listdatafind.dart';
import 'package:ecommerce_application/homepage/util/colors.dart';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

import 'home/Components/container_display_products.dart';
import 'home/Components/rowusing_display.dart';

class DisplayProductsLine extends StatefulWidget {
  const DisplayProductsLine({super.key});

  @override
  State<DisplayProductsLine> createState() => _DisplayProductsLineState();
}

class _DisplayProductsLineState extends State<DisplayProductsLine> {
  @override
  Widget build(BuildContext context) {
    double height1 = MediaQuery.of(context).size.height;
    double width1 = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: GestureDetector(
          onTap: () {
            setState(() {
              // (pagesbool==true)?productList[selectindex]['cartbool']==true:productList1[selectindex]['cartbool']==true
              if (pagesbool == true) {
                if (productList[selectindex]['cartbool'] == false) {
                  productList[selectindex]['price'] = productList[selectindex]['priceimage'];
                  totalbill = productList[selectindex]['priceimage']+totalbill;
                  cart.add(productList[selectindex]);
                  productList[selectindex]['cartbool'] = true;
                }
              } else {
                if (productList1[selectindex]['cartbool'] == false) {
                  productList1[selectindex]['price'] = productList1[selectindex]['priceimage'];
                  totalbill = productList1[selectindex]['priceimage']+totalbill;
                  cart.add(productList1[selectindex]);
                  productList1[selectindex]['cartbool'] = true;
                }
              }
            });
            // if (pagesbool == true) {
            //   if (productList[selectindex]['cartbool'] == false) {
            //     cart.add(productList[selectindex]);
            //     productList[selectindex]['cartbool'] = true;
            //     print('Yes Done');
            //   }
            // } else {
            //   if (productList1[selectindex]['cartbool'] == false) {
            //     cart.add(productList1[selectindex]);
            //     productList1[selectindex]['cartbool'] = true;
            //     print('Yes Done');
            //   }
            // }
          },
          child: BottomAppBar(
            //todo<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<[Navigationbar]<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
            color: menuColor,
            height: 50,
            child: bottomNavigationcart(),
          ),
        ),
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
            ),
          ),
          child: Container(
            height: height1,
            width: width1,
            margin: const EdgeInsets.all(10),
            // color: Colors.orange,
            child: Column(
              children: [
                // GestureDetector(
                //   onTap: () {
                //     Navigator.of(context).pop('/');
                //   },
                //   child: Container(
                //     color: Colors.orange,
                //     height: 90,
                //     width: 100,
                //     child: const Icon(Icons.construction),
                //   ),
                // ),
                rowBar(
                  firstbool: true,
                  iconselect: GestureDetector(
                    onTap: () {
                        Navigator.of(context).pop();
                    },
                    child: Icon(
                      Icons.arrow_back_sharp,
                      color: menuColor,
                    ),
                  ),
                  iconselect1: GestureDetector(
                    onTap: () {
                      // setState(() {
                      //
                      Navigator.of(context).pushNamed('/cartdetails');
                      // });
                    },
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      size: 35,
                      color: menuColor,
                    ),
                  ),
                ),
                containerDisplayImageFull(),
                containerDisplayTextFull(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// Stack(
//   children: [
//     Container(
//       height: 20,
//       width: double.infinity,
//       decoration: const BoxDecoration(
//         // color: Colors.white12,
//         borderRadius: BorderRadius.only(topRight: Radius.circular(100),topLeft: Radius.circular(100)),
//         boxShadow: [
//           BoxShadow(
//               color: Colors.cyanAccent,
//               offset: Offset(0, 15),
//               blurRadius: 50,
//               blurStyle: BlurStyle.normal,
//               spreadRadius: 1
//           ),
//         ],
//       ),
//     ),
//   ],
// ),
