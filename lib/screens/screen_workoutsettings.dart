import 'package:flutter/material.dart';
import 'package:workout_app/screens/screen_area.dart';
import 'package:workout_app/screens/screen_genderedit.dart';

import '../functions/history_functions.dart';
import '../model/class.dart';

// ignore: must_be_immutable
class Screenworkoutsettings extends StatelessWidget {
  Screenworkoutsettings({super.key});

  List<Viewclass> viewinfo = [
    Viewclass(
      seticon: const Icon(Icons.male),
      setname: 'Gender',
      tileicon: const Icon(Icons.navigate_next),
    ),
    Viewclass(
      seticon: const Icon(Icons.restart_alt),
      setname: 'restart project',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        title: const Text(
          'General Settings',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.normal, fontSize: 18),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_sharp,
              color: Colors.black,
              size: 15,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: viewinfo[index].seticon,
                    title: Text(
                      viewinfo[index].setname,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    trailing: viewinfo[index].tileicon,
                    onTap: () {
                      if (index == 1) {
                        restart(context);
                      } else if (index == 0) {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (ctx) => const Genteredit()));
                      }
                    },
                  );
                },
                itemCount: viewinfo.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  restart(BuildContext context) {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: const Text('Restart Your Project'),
            content: const Text('Do You Want To Restart'),
            actions: [
              TextButton(
                  onPressed: () {
                    for (var x in historic.value) {
                      x.isfinish = false;
                    }
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (ctx) => const Focusarea()),
                        (route) => false);
                  },
                  child: const Text('Yes')),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('No'))
            ],
          );
        });
  }
}
