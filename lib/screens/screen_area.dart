import 'package:flutter/material.dart';
import 'package:workout_app/screens/user_need.dart';

import '../constants/const_color.dart';

class Focusarea extends StatefulWidget {
  const Focusarea({super.key});

  @override
  State<Focusarea> createState() => _FocusareaState();
}

class _FocusareaState extends State<Focusarea> {
  bool abs = false;
  bool arms = false;
  bool chest = false;
  bool leg = false;
  bool fullbody = false;
  int clicked = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Align(
                alignment: Alignment.topCenter,
                child: Text('Whats your focus area',
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.w900)),
              ),
              const SizedBox(
                height: 70,
              ),
              InkWell(
                onTap: () {
                  if (abs) {
                    setState(() {
                      abs = false;
                      clicked--;
                    });
                  } else {
                    setState(() {
                      abs = true;
                      clicked++;
                    });
                  }
                },
                child: Container(
                  height: 70,
                  width: 200,
                  decoration: BoxDecoration(
                      color: abs == true ? background : normal,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: const Center(
                    child: Text(
                      'Abs',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  if (arms) {
                    setState(() {
                      arms = false;
                      clicked--;
                    });
                  } else {
                    setState(() {
                      arms = true;
                      clicked++;
                    });
                  }
                },
                child: Container(
                  height: 70,
                  width: 200,
                  decoration: BoxDecoration(
                      color: arms == true ? background : normal,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: const Center(
                    child: Text(
                      'Arms',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  if (chest) {
                    setState(() {
                      chest = false;
                      clicked--;
                    });
                  } else {
                    setState(() {
                      chest = true;
                      clicked++;
                    });
                  }
                },
                child: Container(
                  height: 70,
                  width: 200,
                  decoration: BoxDecoration(
                      color: chest == true ? background : normal,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: const Center(
                    child: Text(
                      'Chest',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  if (leg) {
                    setState(() {
                      leg = false;
                      clicked--;
                    });
                  } else {
                    setState(() {
                      leg = true;
                      clicked++;
                    });
                  }
                },
                child: Container(
                  height: 70,
                  width: 200,
                  decoration: BoxDecoration(
                      color: leg == true ? background : normal,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: const Center(
                    child: Text(
                      'Leg',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  if (fullbody) {
                    setState(() {
                      fullbody = false;
                      clicked--;
                    });
                  } else {
                    setState(() {
                      fullbody = true;
                      clicked = 3;
                      abs = false;
                      arms = false;
                      chest = false;
                      leg = false;
                    });
                  }
                },
                child: Container(
                  height: 70,
                  width: 200,
                  decoration: BoxDecoration(
                      color: fullbody == true ? background : normal,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: const Center(
                    child: Text(
                      'Full Body',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              ElevatedButton(
                onPressed: () {
                  if (abs == false &&
                      arms == false &&
                      chest == false &&
                      leg == false &&
                      fullbody == false) {
                    selectfocusareafiled();
                  } else if (clicked > 3) {
                    selectclikedfield();
                  } else {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (ctx) => const Userneed()));
                  }
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: background,
                    fixedSize: const Size(150, 50)),
                child: const Text(
                  'NEXT',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }

  void selectfocusareafiled() {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('Please Select your Focus Area'),
      backgroundColor: Colors.red,
      showCloseIcon: true,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.all(10),
      duration: Duration(seconds: 2),
    ));
  }

  void selectclikedfield() {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('Please Select 3 or Full body'),
      backgroundColor: Colors.red,
      showCloseIcon: true,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.all(10),
      duration: Duration(seconds: 2),
    ));
  }
}
