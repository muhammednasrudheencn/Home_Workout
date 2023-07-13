import 'package:flutter/material.dart';
import 'package:workout_app/screens/workouts/main_advanced.dart';
import 'package:workout_app/screens/workouts/main_amatuer.dart';
import 'package:workout_app/screens/workouts/main_beginner.dart';

import '../constants/const_color.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: mediaquery.size.width * 1,
              height: mediaquery.size.height * 0.10,
              decoration: const BoxDecoration(
                  color: secondary,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: const Center(
                child: Text(
                  'DIFFERENT LEVEL',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctx) => const Mainadvanced()));
                },
                child: Container(
                  width: mediaquery.size.width * 1,
                  height: mediaquery.size.height * 0.25,
                  decoration: const BoxDecoration(
                      color: background,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    children: [
                      Container(
                        width: mediaquery.size.width * 0.50,
                        height: mediaquery.size.height * 0.25,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/1b3677ecb1039fdc6ae0de251b5a0f8c-min.jpg')),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'ADVANCED',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w900),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.white,
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => const Mainamatuer()));
                },
                child: Container(
                  width: mediaquery.size.width * 1,
                  height: mediaquery.size.height * 0.25,
                  decoration: const BoxDecoration(
                      color: background,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              'AMATUER',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.star_border,
                                color: Colors.white,
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: mediaquery.size.width * 0.50,
                        height: mediaquery.size.height * 0.25,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/81792e1d-c283-4ac2-8d17-80f459965944.jpg-output-min.png'),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctx) => const Mainbeginner()));
                },
                child: Container(
                  width: mediaquery.size.width * 1,
                  height: mediaquery.size.height * 0.25,
                  decoration: const BoxDecoration(
                      color: background,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    children: [
                      Container(
                        width: mediaquery.size.width * 0.50,
                        height: mediaquery.size.height * 0.25,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/f915fdc5-f0ee-4e63-a826-4df7491b3ebe.jpg-output-min.png'),
                            ),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'BEGINNER',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w900),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.star_border,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.star_border,
                                color: Colors.white,
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
