import 'package:flutter/material.dart';
import 'package:workout_app/screens/starting_page.dart';

import '../constants/const_color.dart';
import '../functions/db_functions.dart';

class Planscreen extends StatefulWidget {
  const Planscreen({super.key});

  @override
  State<Planscreen> createState() => _PlanscreenState();
}

class _PlanscreenState extends State<Planscreen> {
  Planfunctions planfunctions = Planfunctions();

  @override
  void initState() {
    planfunctions.getplan();
    listing();
    super.initState();
  }

  String? easyselect;
  String? mediumselect;
  String? hardselect;

  ValueNotifier<List<String>> easy = ValueNotifier([]);
  ValueNotifier<List<String>> medium = ValueNotifier([]);
  ValueNotifier<List<String>> hard = ValueNotifier([]);

  List<String> easydefult = ['28 ', '24 ', '20 '];
  List<String> mediumdefult = ['18 ', '16 ', '14 '];
  List<String> harddefult = ['10 ', '8 '];

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);

    return Scaffold(
      body: Container(
        width: mediaquery.size.width * 1,
        height: mediaquery.size.height * 1,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    'assets/photo-1611672585731-fa10603fb9e0-min.jpeg'),
                fit: BoxFit.cover)),
        child: ValueListenableBuilder(
          valueListenable: Planfunctions.planlist,
          builder: (context, value, child) {
            return Padding(
              padding: const EdgeInsets.only(top: 44),
              child: Column(
                children: [
                  const Text(
                    'Please Select Your Plan PER WEEKS \nThen We Can Choose Best Workouts for You',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 15,
                        fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Card(
                      color: cardcolor,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.black, width: 1),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(6))),
                                    child: DropdownButton(
                                      hint: const Text(
                                        'EASY PLAN',
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                      icon: const Icon(
                                        Icons.arrow_drop_down,
                                        size: 40,
                                        color: Colors.black,
                                      ),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w900,
                                          color: Colors.black),
                                      isExpanded: true,
                                      underline: const SizedBox(),
                                      value: easyselect,
                                      onChanged: (newvalue) {
                                        setState(() {
                                          easyselect = newvalue;
                                          mediumselect = null;
                                          hardselect = null;
                                        });
                                      },
                                      items: easy.value.isNotEmpty
                                          ? easy.value
                                              .map<DropdownMenuItem<String>>(
                                                  (String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text('$value WEEK'),
                                              );
                                            }).toList()
                                          : easydefult
                                              .map<DropdownMenuItem<String>>(
                                                  (String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text('$value WEEK'),
                                              );
                                            }).toList(),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 50,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.black, width: 1),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(6))),
                                    child: DropdownButton(
                                      hint: const Text(
                                        'MEDIUM PLAN',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                      icon: const Icon(
                                        Icons.arrow_drop_down,
                                        size: 40,
                                        color: Colors.black,
                                      ),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w900,
                                          color: Colors.black),
                                      isExpanded: true,
                                      underline: const SizedBox(),
                                      value: mediumselect,
                                      onChanged: (newvalue) {
                                        setState(() {
                                          mediumselect = newvalue;
                                          easyselect = null;
                                          hardselect = null;
                                        });
                                      },
                                      items: medium.value.isNotEmpty
                                          ? medium.value
                                              .map<DropdownMenuItem<String>>(
                                                  (String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text('$value WEEK'),
                                              );
                                            }).toList()
                                          : mediumdefult
                                              .map<DropdownMenuItem<String>>(
                                                  (String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text('$value WEEK'),
                                              );
                                            }).toList(),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 50,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.black, width: 1),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(6))),
                                    child: DropdownButton(
                                      hint: const Text(
                                        'HARD PLAN',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                      icon: const Icon(
                                        Icons.arrow_drop_down,
                                        size: 40,
                                        color: Colors.black,
                                      ),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w900,
                                          color: Colors.black),
                                      isExpanded: true,
                                      underline: const SizedBox(),
                                      value: hardselect,
                                      onChanged: (newvalue) {
                                        setState(() {
                                          hardselect = newvalue;
                                          easyselect = null;
                                          mediumselect = null;
                                        });
                                      },
                                      items: hard.value.isNotEmpty
                                          ? hard.value
                                              .map<DropdownMenuItem<String>>(
                                                  (String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text('$value WEEK'),
                                              );
                                            }).toList()
                                          : harddefult
                                              .map<DropdownMenuItem<String>>(
                                                  (String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text('$value WEEK'),
                                              );
                                            }).toList(),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              if (easyselect != null ||
                                  mediumselect != null ||
                                  hardselect != null) {
                                Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(
                                        builder: (ctx) => const Starting()),
                                    (route) => false);
                              } else {
                                selectclikedfield();
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
                          ),
                          const SizedBox(
                            height: 30,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 173,
                  ),
                  Container(
                    width: mediaquery.size.width * 1,
                    height: mediaquery.size.height * 0.05,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  void selectclikedfield() {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('Please Select Your plan Per Week'),
      backgroundColor: Colors.red,
      showCloseIcon: true,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.all(10),
      duration: Duration(seconds: 2),
    ));
  }

  void listing() {
    for (int i = 0; i < Planfunctions.planlist.value.length; i++) {
      if (Planfunctions.planlist.value[i].level == 'EASY') {
        easy.value.add(Planfunctions.planlist.value[i].week!);
      } else if (Planfunctions.planlist.value[i].level == 'MEDIUM') {
        medium.value.add(Planfunctions.planlist.value[i].week!);
      } else {
        hard.value.add(Planfunctions.planlist.value[i].week!);
      }
    }
  }
}
