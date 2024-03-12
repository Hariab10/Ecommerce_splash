import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splash_ecommerce/Samplepage.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  void splashScreenMethod() {
    Timer(
      const Duration(seconds: 5),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) {
              return samplepage();
            },
          ),
        );
      },
    );
  }

  @override
  void initState() {
    splashScreenMethod();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 270,
          ),
          Column(
            children: [
              Center(
                child: Container(
                  height: 350,
                  width: 350,
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage('asset/cartifyss.gif'),
                      ),
                      Text(
                        "Cartify",
                        style: TextStyle(
                            fontSize: 45,
                            fontFamily: "Spicy Chips",
                            fontWeight: FontWeight.w100,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
