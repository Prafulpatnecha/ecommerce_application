import 'package:ecommerce_application/homepage/components/class_homepage/rosandcoluman.dart';
import 'package:ecommerce_application/homepage/util/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff042f2e),
        body: Container(
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
            height: h, width: w,
            // color: Colors.orange,
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                rowBar(
                  iconselect: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/');
                    },
                    child: Icon(Icons.arrow_back_outlined,color: menuColor,),
                  ),
                  firstbool: true,
                  iconselect1: GestureDetector(
                    child: Icon(Icons.favorite_border,color: menuColor,size: 28,),
                  ),
                ),
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.red,
                  child: const Column(
                    children: [

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
