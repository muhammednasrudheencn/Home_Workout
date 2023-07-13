import 'package:flutter/material.dart';
import 'package:workout_app/screens/plan_screen.dart';

import '../constants/const_color.dart';
import '../functions/user_functions.dart';

class Loseweight1 extends StatefulWidget {
  const Loseweight1({super.key});

  @override
  State<Loseweight1> createState() => _Loseweight1State();
}

class _Loseweight1State extends State<Loseweight1> {
  final agechange = TextEditingController();

  final formkey = GlobalKey<FormState>();
  String? name;
  var weight;
  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: mediaquery.size.width * 1,
              height: mediaquery.size.height * 0.70,
              decoration: const BoxDecoration(
                  color: secondary,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ValueListenableBuilder(
                      valueListenable: infolist,
                      builder: (context, infolist, child) {
                        for (var element in infolist) {
                          name = element.name;
                        }
                        return Text(
                          'Hello $name ',
                          style: const TextStyle(
                              fontSize: 45, fontWeight: FontWeight.w900),
                        );
                      }),
                  const SizedBox(
                    height: 100,
                  ),
                  const Text(
                    'Now your Weight is',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 125,
                    height: 60,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                        child: ValueListenableBuilder(
                            valueListenable: infolist,
                            builder: (context, weightlist, child) {
                              for (var element in weightlist) {
                                weight = element.weight;
                              }
                              return Text(
                                weight,
                                style: const TextStyle(
                                    fontSize: 28, fontWeight: FontWeight.bold),
                              );
                            })),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'You Want to Change >',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 140),
                    child: Form(
                      key: formkey,
                      child: TextFormField(
                        controller: agechange,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 30),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter your milestone';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
              onPressed: () {
                if (formkey.currentState!.validate()) {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => const Planscreen()));
                }
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: background, fixedSize: const Size(150, 50)),
              child: const Text(
                'NEXT',
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
}
