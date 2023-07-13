import 'package:flutter/material.dart';

import '../constants/const_color.dart';

class Genteredit extends StatefulWidget {
  const Genteredit({super.key});

  @override
  State<Genteredit> createState() => _GentereditState();
}

class _GentereditState extends State<Genteredit> {
  String selected = 'nasru';
  var clicked = 0;
  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: SafeArea(
            child: Column(
          children: [
            const Align(
              alignment: Alignment.topCenter,
              child: Text(
                "Wat's your genter ?",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  width: mediaquery.size.width * 0.5,
                  height: mediaquery.size.height * 0.6,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/162-1627076_gym-male-cartoon-png-transparent-png-min.png'))),
                ),
                Container(
                  width: mediaquery.size.width * 0.5,
                  height: mediaquery.size.height * 0.6,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/png-clipart-cartoon-woman-girl-fitness-coach-comics-physical-fitness-thumbnail-min.png')),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      selected = 'male';
                      clicked = 1;
                    });
                  },
                  child: Container(
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                        color: selected == 'male' ? background : Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5))),
                    child: Center(
                      child: Text('MALE',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                              color: selected == 'male'
                                  ? Colors.white
                                  : background)),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selected = 'female';
                      clicked = 1;
                    });
                  },
                  child: Container(
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                        color: selected == 'female' ? background : Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5))),
                    child: Center(
                      child: Text('FEMALE',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            color: selected == 'female'
                                ? Colors.white
                                : background,
                          )),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: background, fixedSize: const Size(150, 50)),
              child: const Text(
                'NEXT',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
              ),
            )
          ],
        )),
      ),
    );
  }
}
