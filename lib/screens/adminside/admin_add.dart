import 'package:flutter/material.dart';

import '../../constants/const_color.dart';
import '../../functions/db_functions.dart';
import '../../model/data_model.dart';

class Addpage extends StatefulWidget {
  const Addpage({super.key});

  @override
  State<Addpage> createState() => _AddpageState();
}

class _AddpageState extends State<Addpage> {
  Planfunctions addplan = Planfunctions();

  final weekcontoller = TextEditingController();

  final levelcontroller = TextEditingController();

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);

    List<String> level = ['EASY', 'MEDIUM', 'HARD'];

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: mediaquery.size.width * 1,
                height: mediaquery.size.height * 0.5,
                decoration: const BoxDecoration(
                    color: cardark,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: mediaquery.size.width * 0.4,
                            child: TextFormField(
                              controller: weekcontoller,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  hintText: 'Week',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6))),
                            ),
                          ),
                          SizedBox(
                            width: mediaquery.size.width * 0.40,
                            child: TextField(
                              controller: levelcontroller,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'select an item',
                                border: const OutlineInputBorder(),
                                suffixIcon: DropdownButtonFormField(
                                  value: selectedValue,
                                  onChanged: (newValue) {
                                    setState(() {
                                      selectedValue = newValue;
                                    });
                                  },
                                  items: level.map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: background,
                              shadowColor: Colors.white,
                              elevation: 10,
                              fixedSize: Size(mediaquery.size.width * 0.35,
                                  mediaquery.size.height * 0.06)),
                          onPressed: () {
                            if (weekcontoller.text.isEmpty ||
                                selectedValue == null) {
                              addingfield();
                            } else {
                              addbuttonclick(context);
                            }
                          },
                          icon: const Icon(Icons.add),
                          label: const Text('ADD'))
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

  void addingfield() {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("Please Take Plan!"),
      backgroundColor: Colors.red,
      margin: EdgeInsets.all(10),
      behavior: SnackBarBehavior.floating,
      showCloseIcon: true,
      closeIconColor: Colors.white,
      duration: Duration(seconds: 2),
    ));
  }

  Future<void> addbuttonclick(BuildContext context) async {
    Plan db = Plan(week: weekcontoller.text.trim(), level: selectedValue);

    addplan.addplan(db);
    Navigator.of(context).pop();
  }
}
