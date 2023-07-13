import 'package:flutter/material.dart';
import 'package:workout_app/screens/screen_area.dart';

import '../constants/const_color.dart';
import '../functions/user_functions.dart';
import '../model/user_data.dart';

class Infoscreen extends StatelessWidget {
  Infoscreen({super.key});

  final namecontroller = TextEditingController();
  final weightcontroller = TextEditingController();
  final heightcontroller = TextEditingController();
  final agecontroller = TextEditingController();

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            width: mediaquery.size.width * 1,
            height: mediaquery.size.height * 1,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images (1)-min.jpeg'),
                    fit: BoxFit.cover)),
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  SizedBox(
                    width: mediaquery.size.width * 1,
                    height: mediaquery.size.height * 0.20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Card(
                      color: cardcolor,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            const Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "What's your Name",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            SizedBox(
                              child: TextFormField(
                                maxLength: 10,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: namecontroller,
                                decoration: const InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    label: Text(
                                      'Name',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900),
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)))),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your name';
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "What's your weight",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w900),
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            SizedBox(
                              child: TextFormField(
                                maxLength: 3,
                                controller: weightcontroller,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    label: Text(
                                      'Kg',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900),
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)))),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your weight';
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "What's your Height",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w900),
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            SizedBox(
                              child: TextFormField(
                                maxLength: 2,
                                controller: heightcontroller,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    label: Text(
                                      'Feet',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900),
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)))),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your height';
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "How old are you",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w900),
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            SizedBox(
                              child: TextFormField(
                                maxLength: 2,
                                controller: agecontroller,
                                keyboardType: TextInputType.number,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                decoration: const InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    label: Text(
                                      '00-',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900),
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)))),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Plz enter your age';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                if (formkey.currentState!.validate()) {
                                  addingSuccess(context);
                                } else {
                                  infoaddfiled(context);
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: background,
                                  fixedSize: const Size(150, 50)),
                              child: const Text(
                                'NEXT',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w900),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }

  void infoaddfiled(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("Please Enter Your Details"),
      backgroundColor: Colors.red,
      margin: EdgeInsets.all(10),
      behavior: SnackBarBehavior.floating,
      showCloseIcon: true,
      closeIconColor: Colors.white,
      duration: Duration(seconds: 2),
    ));
  }

  void addingSuccess(BuildContext context) {
    Userinfo info = Userinfo(
      name: namecontroller.text.trim(),
      weight: weightcontroller.text.trim(),
      height: heightcontroller.text.trim(),
      age: agecontroller.text.trim(),
    );
    adddetails(info);
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (ctx) => const Focusarea()));
  }
}
