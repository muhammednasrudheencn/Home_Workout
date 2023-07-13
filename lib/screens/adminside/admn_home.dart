import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants/const_color.dart';
import 'admin_screen.dart';

class AdminHome extends StatelessWidget {
  AdminHome({super.key});

  final firstpin = TextEditingController();
  final secondpin = TextEditingController();
  final thirdtpin = TextEditingController();
  final fourthtpin = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: mediaquery.size.width * 1,
              height: mediaquery.size.height * 0.5,
              decoration: const BoxDecoration(
                  color: secondary,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
            ),
            const SizedBox(
              height: 100,
            ),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 70,
                    height: 80,
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(
                          blurRadius: 25.0,
                          color: Color.fromARGB(255, 107, 107, 107))
                    ]),
                    child: TextFormField(
                      showCursor: false,
                      controller: firstpin,
                      cursorHeight: 20,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 20),
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(1)
                      ],
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6))),
                      ),
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                        if (value.isEmpty) {
                          FocusScope.of(context).previousFocus();
                        }
                      },
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 80,
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(
                          blurRadius: 25.0,
                          color: Color.fromARGB(255, 107, 107, 107))
                    ]),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      showCursor: false,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 20),
                      controller: secondpin,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(1)
                      ],
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)))),
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                        if (value.isEmpty) {
                          FocusScope.of(context).previousFocus();
                        }
                      },
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 80,
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(
                          blurRadius: 25.0,
                          color: Color.fromARGB(255, 107, 107, 107))
                    ]),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      showCursor: false,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 20),
                      controller: thirdtpin,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(1)
                      ],
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)))),
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                        if (value.isEmpty) {
                          FocusScope.of(context).previousFocus();
                        }
                      },
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 80,
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(
                          blurRadius: 25.0,
                          color: Color.fromARGB(255, 107, 107, 107))
                    ]),
                    child: TextFormField(
                      controller: fourthtpin,
                      keyboardType: TextInputType.number,
                      showCursor: false,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 20),
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(1)
                      ],
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)))),
                      onChanged: (value) {
                        if (value.isEmpty) {
                          FocusScope.of(context).previousFocus();
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shadowColor: Colors.white,
                    elevation: 10,
                    side: const BorderSide(width: 0.3, color: Colors.white),
                    fixedSize: const Size(130, 50)),
                onPressed: () {
                  if (firstpin.text == '8' &&
                      secondpin.text == '9' &&
                      thirdtpin.text == '2' &&
                      fourthtpin.text == '1') {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (ctx) => const Adminpage()),
                        (route) => false);
                  }
                },
                child: const Text(
                  'Login',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ))
          ],
        ),
      )),
    );
  }
}
