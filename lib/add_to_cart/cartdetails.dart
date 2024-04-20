import 'package:ecommerce_application/homepage/components/class_homepage/rosandcoluman.dart';
import 'package:ecommerce_application/homepage/components/listdatafind.dart';
import 'package:ecommerce_application/homepage/util/colors.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

import '../display_screen/home/Components/rowusing_display.dart';
import 'home/component/cart_container.dart';

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
        bottomNavigationBar: BottomAppBar(
          color: menuColor,
          height: 50,
          child: bottomNavigationPay(),
        ),
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
                      Navigator.of(context).pop();
                    },
                    child: Icon(Icons.arrow_back_outlined,color: menuColor,),
                  ),
                  firstbool: true,
                  iconselect1: GestureDetector(
                    child: Icon(Icons.favorite_border,color: menuColor,size: 28,),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    width: double.infinity,
                    // color: Colors.red,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                        ...List.generate(cart.length, (index) =>
                          containerProduct(gestadd: GestureDetector(
                            onTap: () {
                              setState(() {
                                // inc_dec++;
                                totalbill=(totalbill+cart[index]['priceimage']).toInt();
                                    cart[index]['price']=cart[index]['priceimage']+cart[index]['price'];
                                cart[index]['inc_dec']++;
                              });
                            },
                            child: containerAddAndDec(iconadd: Icon(Icons.exposure_plus_1,color: menuColor,),),
                          ),geste: GestureDetector(
                            onTap: () {
                              setState(() {
                                for(int i=0;i<cart[index]['inc_dec'];i++){
                                totalbill=(totalbill-cart[index]['priceimage']).toInt();}
                                // cartlent--;
                                cart[index]['inc_dec']=1;
                                cart[index]['cartbool']=false;
                                cart[index]['price']=0;
                                cart.removeAt(index);
                              });
                            },
                            child: containerDelete(icondelete: Icon(Icons.delete_outlined,color: menuColor,)),
                          ),gestdec: GestureDetector(
                            onTap: () {
                              setState(() {
                                if(cart[index]['inc_dec']>1)
                                  {
                                    totalbill=(totalbill-cart[index]['priceimage']).toInt();
                                  cart[index]['price'] = cart[index]['price']-cart[index]['priceimage'];
                                    cart[index]['inc_dec']--;
                                  }
                              });
                              // setState(() {
                              //   if(inc_dec>1) {
                              //   }
                              // });
                            },
                            child: containerAddAndDec(iconadd: Icon(Icons.exposure_minus_1_sharp,color: menuColor,),),
                          ), index: index,),
                        ),],
                      ),
                    ),
                  ),
                ),
                // Expanded(
                //     flex: 1,
                //     child: Container(
                //   color: menuColor,
                // ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
