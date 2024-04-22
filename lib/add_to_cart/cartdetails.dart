import 'package:ecommerce_application/homepage/components/class_homepage/rosandcoluman.dart';
import 'package:ecommerce_application/homepage/components/listdatafind.dart';
import 'package:ecommerce_application/homepage/util/colors.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/cupertino.dart';

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
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
        bottomNavigationBar: TextButton(
          onPressed: () {
            if(totalbill!=0)
            {
              if(billperfact==true)
                {
                  showdetailsMsg();
                  billperfact=false;
                }
            }
            else
              {
                errorShow();
              }
          },
          child: SizedBox(
            // color: menuColor,
            height: 65,
            child: bottomNavigationPay(),
          ),
        ),
        backgroundColor: menuColor,
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
                    child: Container(
                        color: showColor,
                        child: Icon(
                          Icons.arrow_back_outlined,
                          color: menuColor,
                        )),
                  ),
                  firstbool: true,
                  iconselect1: GestureDetector(
                    child: Icon(
                      Icons.favorite_border,
                      color: menuColor,
                      size: 28,
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    width: double.infinity,
                    // color: Colors.red,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ...List.generate(
                            cart.length,
                            (index) => containerProduct(
                              gestadd: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    // inc_dec++;
                                    totalbill =
                                        (totalbill + cart[index]['priceimage'])
                                            .toInt();
                                    cart[index]['price'] = cart[index]
                                            ['priceimage'] +
                                        cart[index]['price'];
                                    cart[index]['inc_dec']++;
                                    billperfact=true;
                                  });
                                },
                                child: containerAddAndDec(
                                  iconadd: Icon(
                                    Icons.exposure_plus_1,
                                    color: menuColor,
                                  ),
                                ),
                              ),
                              geste: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    for (int i = 0;
                                        i < cart[index]['inc_dec'];
                                        i++) {
                                      totalbill = (totalbill -
                                              cart[index]['priceimage'])
                                          .toInt();
                                    }
                                    // cartlent--;
                                    cart[index]['inc_dec'] = 1;
                                    cart[index]['cartbool'] = false;
                                    cart[index]['price'] = 0;
                                    cart.removeAt(index);
                                    if(cart.isEmpty)
                                      {
                                        billperfact=true;
                                      }
                                  });
                                },
                                child: containerDelete(
                                    icondelete: Icon(
                                  Icons.delete_outlined,
                                  color: menuColor,
                                )),
                              ),
                              gestdec: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (cart[index]['inc_dec'] > 1) {
                                      totalbill = (totalbill -
                                              cart[index]['priceimage'])
                                          .toInt();
                                      cart[index]['price'] = cart[index]
                                              ['price'] -
                                          cart[index]['priceimage'];
                                      cart[index]['inc_dec']--;
                                    }
                                  });
                                  // setState(() {
                                  //   if(inc_dec>1) {
                                  //   }
                                  // });
                                },
                                child: containerAddAndDec(
                                  iconadd: Icon(
                                    Icons.exposure_minus_1_sharp,
                                    color: menuColor,
                                  ),
                                ),
                              ),
                              index: index,
                            ),
                          ),
                        ],
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
    // Overlay.of(context)?.insert(overlayEntry);
    // Future.delayed(Duration(seconds: 2),(){
    //   overlayEntry.remove();
    // });
  }
  void errorShow()
  {
    OverlayEntry overlayEntry;
    overlayEntry =OverlayEntry(builder: (context) => Align(
      child: Stack(
        children: [
          Container(
            height: 100,
            width: 300,
            decoration: const BoxDecoration(
              color: Colors.white38,
              borderRadius: BorderRadius.all(Radius.circular(20),),
            ),
            child: const Align(child: Text('Error Product Not Found',style: TextStyle(decoration: TextDecoration.none,color: Colors.black,fontSize: 20),)),
          ),
        ],
      ),
    ),);
    Overlay.of(context).insert( overlayEntry);
    Future.delayed(const Duration(seconds: 2),() {
      overlayEntry.remove();
    },);
  }

  void showdetailsMsg() {
    OverlayEntry overlayEntry;
    overlayEntry = OverlayEntry(
      builder: (context) => Align(
          child: Stack(
        children: [
          Container(
            height: 300,
            width: 220,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 80,
                  width: 80,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                  child: const Icon(
                    Icons.check,
                    size: 50,
                  ),
                ),
                const SizedBox(height: 20,),
                const SizedBox(
                  child: Text.rich(
                    TextSpan(children: [
                      TextSpan(
                        text: '  Payment',
                        style: TextStyle(color: Colors.black, fontSize: 18,decoration: TextDecoration.none,),
                      ),
                      TextSpan(
                        text: '\nSuccessful',
                        style: TextStyle(color: Colors.black, fontSize: 18,decoration: TextDecoration.none,letterSpacing: 1),
                      ),
                    ],),
                  ),
                ),
                const SizedBox(height: 20,),
                Text('You have successfully purchased\n                    a new product.',style: GoogleFonts.abhayaLibre(color:const Color(
                    0xff8d8d8d),fontSize:15,decoration: TextDecoration.none),),
              ],
            ),
          ),
        ],
      )),
    );
    Overlay.of(context).insert(overlayEntry);
    Future.delayed(const Duration(seconds: 2), () {
      overlayEntry.remove();
    });
  }
}