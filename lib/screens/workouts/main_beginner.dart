import 'package:flutter/material.dart';

import '../../constants/const_color.dart';
import 'beginner/abs_beginner.dart';
import 'beginner/arm_beginner.dart';
import 'beginner/back_beginner.dart';
import 'beginner/chest_beginner.dart';
import 'beginner/leg_beginner.dart';

class Mainbeginner extends StatelessWidget {
  const Mainbeginner({super.key});
  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            width: mediaquery.size.width * 1,
            height: mediaquery.size.height * 0.15,
            decoration: const BoxDecoration(
                color: secondary,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: const Center(
              child: Text(
                'BEGINNER',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (ctx) => const AbsBeginner()));
                      },
                      child: Container(
                        width: mediaquery.size.width * 1,
                        height: mediaquery.size.height * 0.11,
                        decoration: const BoxDecoration(
                            color: background,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Row(
                          children: [
                            Container(
                              width: mediaquery.size.width * 0.30,
                              height: mediaquery.size.height * 0.11,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/bodybuilding-tips-min.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                            const Text(
                              'ABS',
                              style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (ctx) => const ChestBeginner()));
                      },
                      child: Container(
                        width: mediaquery.size.width * 1,
                        height: mediaquery.size.height * 0.11,
                        decoration: const BoxDecoration(
                            color: background,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Row(
                          children: [
                            Container(
                              width: mediaquery.size.width * 0.30,
                              height: mediaquery.size.height * 0.11,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/360_F_176215790_xomZ0hUsR3ciKd4JLLQCjaUDhI88QL7E-min.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                            const Text(
                              'CHEST',
                              style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (ctx) => const ArmBeginner()));
                      },
                      child: Container(
                        width: mediaquery.size.width * 1,
                        height: mediaquery.size.height * 0.11,
                        decoration: const BoxDecoration(
                            color: background,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Row(
                          children: [
                            Container(
                              width: mediaquery.size.width * 0.30,
                              height: mediaquery.size.height * 0.11,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images (1)-min.jpeg'),
                                      fit: BoxFit.cover)),
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                            const Text(
                              'ARMS',
                              style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (ctx) => const LegBeginner()));
                      },
                      child: Container(
                        width: mediaquery.size.width * 1,
                        height: mediaquery.size.height * 0.11,
                        decoration: const BoxDecoration(
                            color: background,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Row(
                          children: [
                            Container(
                              width: mediaquery.size.width * 0.30,
                              height: mediaquery.size.height * 0.11,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/istockphoto-1004109074-612x612-min.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                            const Text(
                              'LEGS',
                              style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (ctx) => const BackBeginner()));
                      },
                      child: Container(
                        width: mediaquery.size.width * 1,
                        height: mediaquery.size.height * 0.11,
                        decoration: const BoxDecoration(
                            color: background,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Row(
                          children: [
                            Container(
                              width: mediaquery.size.width * 0.30,
                              height: mediaquery.size.height * 0.11,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/1b3677ecb1039fdc6ae0de251b5a0f8c-min.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                            const Text(
                              'BACK',
                              style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
