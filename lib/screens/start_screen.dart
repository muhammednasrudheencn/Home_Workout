import 'package:flutter/material.dart';

import '../constants/const_color.dart';
import 'genter_screen.dart';

class Strtscreen extends StatelessWidget {
  const Strtscreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: background,
        body: Column(
          children: [
            Container(
              width: mediaquery.size.width * 1,
              height: mediaquery.size.height * 0.6,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/istockphoto-1324042769-612x612-min.jpg'),
                      fit: BoxFit.cover)),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Hello !',
                      style: TextStyle(
                          fontSize: 55,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "I'm Your Personal Coach",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Here are some question to trainer a \npersonalized plan for you.',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => const Genterscreen()));
              },
              child: Container(
                width: 180,
                height: 60,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: background,
                    boxShadow: [
                      BoxShadow(color: Colors.white, blurRadius: 15.0),
                    ]),
                child: const Center(
                  child: Text(
                    "I'M READY",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
