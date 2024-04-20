// import 'dart:async';

import 'dart:async';

// import 'package:ecommerce_application/homepage/components/class_homepage/class_homepage_ui.dart';
import 'package:ecommerce_application/homepage/util/colors.dart';
import 'package:flutter/material.dart';

import '../homepage/util/image.dart';
class OnScreen extends StatefulWidget {
  const OnScreen({super.key});

  @override
  State<OnScreen> createState() => _OnScreenState();
}

class _OnScreenState extends State<OnScreen> {
  @override
  void initState()
  {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),()=>Navigator.of(context).pushReplacementNamed('/'),
    );
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: backColor,
      body: Container(
        height: h,
        width: w,
        // color: Colors.orange,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [
              backgroundCol,
              backgroundCol2
            ],
            radius: 1,
            center: const Alignment(0.8,0.1)
          ),
        ),
        child: Stack(
          children: [
            Container(
              // height: 300,
              // width: 300,
              decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [
                  backgroundCol2,
                  Colors.black12,
                ],
                    radius: 1,
              ),
                image: DecorationImage(
                  image: b1,
                )
              ),
              // child: ,
            ),
          ],
        ),
      ),
    );
  }
}
