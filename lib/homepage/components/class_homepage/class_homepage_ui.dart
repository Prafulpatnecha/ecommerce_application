// import 'package:flutter/cupertino.dart';
import 'package:ecommerce_application/homepage/components/class_homepage/rosandcoluman.dart';
import 'package:ecommerce_application/homepage/util/colors.dart';
import 'package:flutter/material.dart';

import '../listdatafind.dart';
import 'containerdata.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff042f2e),
        // Color(0x64350431),
        body: Container(
          // height: ,
          // width: double.minPositive,
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
            height: double.infinity,
            width: double.infinity,
            // color: Colors.red,//todo <---------------------[color to check working area width and height margin to rape]----------------------
            margin: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  rowBar(iconselect: GestureDetector(
                    child: Icon(
                      Icons.sort,
                      size: 40,
                      color: menuColor,
                    ),
                  ), firstbool: true,),
                  welcomeContainer(),
                  searchproducts(),
                  rowText(),
                  // rowClicks(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // const SizedBox(width: 20),
                      ...List.generate(
                        textListCategres.length,
                        (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              selectnumber = index;
                            });
                            // print(selectnumber);
                          },
                          child: containerCategories(
                              ck: (index == selectnumber) ? true : false,
                              textline: textListCategres[index]),
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(height: 26,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ...List.generate(
                        productList.length,
                        (index) => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            (index!=productList.length)?GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectindex=index;
                                  pagesbool=true;
                                  // print('object');
                                });
                                  Navigator.of(context).pushNamed('/home');
                              },
                              child: columnScreenChanges(
                                textimage: productList[index]['textimage'],
                                priceimage: productList[index]['priceimage'],
                                iconimage: productList[index]['iconimage'],
                                imageproduct: productList[index]['imageproduct'],
                                colorback: productList[index]['colorback'],
                              ),
                            ):const Text(''),
                            (index!=productList.length)?
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectindex=index;
                                  pagesbool=false;
                                  Navigator.of(context).pushNamed('/home');
                                });
                              },
                              child: columnScreenChanges(
                                textimage: productList1[index]['textimage'],
                                priceimage: productList1[index]['priceimage'],
                                iconimage: productList1[index]['iconimage'],
                                imageproduct: productList1[index]['imageproduct'],
                                colorback: productList1[index]['colorback'],
                              ),
                            ):const Text(''),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
bool pagesbool=true;