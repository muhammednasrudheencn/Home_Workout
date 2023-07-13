import 'package:flutter/material.dart';

import '../../constants/const_color.dart';
import '../../functions/db_functions.dart';
import '../../model/data_model.dart';

class Adminedit extends StatefulWidget {
  final int index;
  const Adminedit({Key? key, required this.index}) : super(key: key);

  @override
  State<Adminedit> createState() => _AdmineditState();
}

class _AdmineditState extends State<Adminedit> {
  Planfunctions weeks = Planfunctions();

  @override
  void initState() {
    weeks.getplan();
    String weekl = Planfunctions.planlist.value[widget.index].week!;
    String levell = Planfunctions.planlist.value[widget.index].level!;
    editcontroller = TextEditingController(text: weekl);
    leveleditcontroller = TextEditingController(text: levell);
    super.initState();
  }

  TextEditingController editcontroller = TextEditingController();
  TextEditingController leveleditcontroller = TextEditingController();

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);
    String? selectedValue = Planfunctions.planlist.value[widget.index].level!;
    List<String> level = ['EASY', 'MEDIUM', 'HARD'];

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                margin: const EdgeInsets.only(top: 30),
                width: mediaquery.size.width * 1,
                height: mediaquery.size.height * 0.5,
                decoration: const BoxDecoration(
                    color: cardark,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Column(
                    children: [
                      Form(
                        key: formkey,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: mediaquery.size.width * 0.4,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              child: TextFormField(
                                controller: editcontroller,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(6))),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please take plan';
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                            ),
                            Container(
                              width: mediaquery.size.width * 0.4,
                              height: 55,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              child: TextField(
                                controller: leveleditcontroller,
                                decoration: InputDecoration(
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
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: normal,
                                  shadowColor: Colors.white,
                                  elevation: 10,
                                  fixedSize: Size(mediaquery.size.width * 0.35,
                                      mediaquery.size.height * 0.06)),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: const Icon(Icons.cancel),
                              label: const Text('Cancel')),
                          ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  shadowColor: Colors.white,
                                  elevation: 10,
                                  fixedSize: Size(mediaquery.size.width * 0.35,
                                      mediaquery.size.height * 0.06)),
                              onPressed: () {
                                if (formkey.currentState!.validate()) {
                                  updateSuccess(
                                      widget.index, leveleditcontroller.text);
                                } else {
                                  ubdatefailed();
                                }
                              },
                              icon: const Icon(Icons.edit),
                              label: const Text('Ubdate')),
                        ],
                      )
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

  void ubdatefailed() {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("Please change and ubdate!"),
      backgroundColor: Colors.red,
      margin: EdgeInsets.all(10),
      behavior: SnackBarBehavior.floating,
      showCloseIcon: true,
      closeIconColor: Colors.white,
      duration: Duration(seconds: 2),
    ));
  }

  void updateSuccess(int index, String selectedValue) {
    Plan wk = Plan(week: editcontroller.text.trim(), level: selectedValue);
    weeks.editplan(widget.index, wk);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("${editcontroller.text}'s Ubdate successfully!"),
      backgroundColor: Colors.green,
      margin: const EdgeInsets.all(10),
      behavior: SnackBarBehavior.floating,
      showCloseIcon: true,
      closeIconColor: Colors.white,
      duration: const Duration(seconds: 2),
    ));
    Navigator.of(context).pop();
  }
}
