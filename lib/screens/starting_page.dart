import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:workout_app/screens/screen_level.dart';

import '../constants/const_color.dart';
import '../functions/history_functions.dart';
import '../main.dart';

class Starting extends StatelessWidget {
  const Starting({super.key});

  @override
  Widget build(BuildContext context) {
    addtodb();
    var mediaquery = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Container(
                  width: mediaquery.size.width * 1,
                  height: mediaquery.size.height * 0.70,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/young-fitness-man-studio_7502-5007.jpg'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)))),
              const Padding(
                padding: EdgeInsets.only(top: 160, left: 30),
                child: Column(
                  children: [
                    Text(
                      'LIVE YOUR DAY',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'WITH',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'WORK OUTS',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 0, 0),
                          fontSize: 35,
                          fontWeight: FontWeight.w900),
                    )
                  ],
                ),
              )
            ]),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
              onPressed: () {
                userlogin(context);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: background, fixedSize: const Size(200, 60)),
              child: const Text(
                "I'M READY",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              width: mediaquery.size.width * 1,
              height: mediaquery.size.height * 0.05,
              decoration: const BoxDecoration(
                  color: background,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
            )
          ],
        ),
      ),
    );
  }

  void userlogin(BuildContext context) async {
    final sharedprefs = await SharedPreferences.getInstance();
    await sharedprefs.setBool(loginkey, true);
    // ignore: use_build_context_synchronously
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (ctx) => const Levelscreen()));
  }
}
