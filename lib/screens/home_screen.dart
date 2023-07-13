import 'package:flutter/material.dart';
import 'package:workout_app/screens/screen_policy.dart';
import 'package:workout_app/screens/start_screen.dart';

import '../constants/const_color.dart';
import 'adminside/admn_home.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/Screenshot (119)-min.png',
                  ),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: mediaquery.size.width * 1,
                height: mediaquery.size.height * 0.5,
                decoration: const BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.all(Radius.circular(13))),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: double.infinity,
                        height: 200,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/Screenshot (117).png'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    const SizedBox(
                      height: 90,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => const Strtscreen()));
                        },
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(mediaquery.size.width * 0.4, 50),
                            backgroundColor: background),
                        child: const Text(
                          "START",
                          style: TextStyle(
                              fontSize: 29, fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 30,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 50,
                height: 50,
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (ctx) => const Privacypolicy()));
                    },
                    icon: const Icon(
                      Icons.privacy_tip_outlined,
                      color: Colors.white,
                    )),
              ),
              SizedBox(
                width: 50,
                height: 50,
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (ctx) => AdminHome()));
                    },
                    icon: const Icon(
                      Icons.admin_panel_settings_outlined,
                      color: Colors.white,
                    )),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
