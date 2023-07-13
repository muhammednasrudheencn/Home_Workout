import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:workout_app/screens/screen_policy.dart';

import '../functions/user_functions.dart';
import '../main.dart';
import '../model/class.dart';
import 'home_screen.dart';

// ignore: must_be_immutable
class Screensettings extends StatelessWidget {
  Screensettings({super.key});

  List<Viewclass> viewinfo = [
    Viewclass(
      seticon: const Icon(Icons.remove_red_eye_outlined),
      setname: 'Privacy Policy',
      tileicon: const Icon(Icons.navigate_next),
    ),
    Viewclass(
      seticon: const Icon(Icons.exit_to_app_outlined),
      setname: 'Sign Out',
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
                      if (index == 0) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (ctx) => const Privacypolicy()));
                      }
                      if (index == 1) {
                        logoutfunction(context);
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

  logoutfunction(BuildContext context) {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: const Text('LogOut'),
            content: const Text('Do You Want To logout'),
            actions: [
              TextButton(
                  onPressed: () {
                    logout(context);
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

  Future<void> logout(BuildContext context) async {
    final sharedprefs = await SharedPreferences.getInstance();
    await sharedprefs.setBool(loginkey, false);

    deleteuser(0);
    // ignore: use_build_context_synchronously
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx) => const Homescreen()),
        (route) => false);
  }
}
