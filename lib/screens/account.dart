import 'package:flutter/material.dart';
import 'package:workout_app/screens/screen_level.dart';
import 'package:workout_app/screens/screen_profile.dart';
import 'package:workout_app/screens/screen_settings.dart';
import 'package:workout_app/screens/screen_workoutsettings.dart';

import '../constants/const_color.dart';
import '../functions/user_functions.dart';
import '../model/class.dart';
import '../model/user_data.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    getdetail();

    var mediaquery = MediaQuery.of(context);

    List<Viewclass> viewinfo = [
      Viewclass(
        seticon: const Icon(Icons.account_circle_rounded),
        setname: 'My Profile',
        tileicon: const Icon(Icons.navigate_next),
      ),
      Viewclass(
        seticon: const Icon(Icons.sports_gymnastics_rounded),
        setname: 'Workout settings',
        tileicon: const Icon(Icons.navigate_next),
      ),
      Viewclass(
        seticon: const Icon(Icons.settings),
        setname: 'General Settings',
        tileicon: const Icon(Icons.navigate_next),
      )
    ];

    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => const Levelscreen()));
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
              )),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: background,
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(children: [
            Container(
              width: mediaquery.size.width * 1,
              height: mediaquery.size.height * 0.40,
              decoration: const BoxDecoration(
                  color: secondary,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Center(
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundColor: background,
                      child: Icon(
                        Icons.account_circle_rounded,
                        size: 100,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ValueListenableBuilder(
                        valueListenable: infolist,
                        builder: (context, List<Userinfo> infolist, child) {
                          return infolist.isNotEmpty
                              ? Text(
                                  infolist[0].name!,
                                  style: const TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w900),
                                )
                              : const Text('Loading...');
                        })
                  ],
                ),
              ),
            ),
          ]),
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
                    style: const TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  trailing: viewinfo[index].tileicon,
                  iconColor: Colors.white,
                  onTap: () {
                    if (index == 0) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (ctx) => const Profilepage()));
                    } else if (index == 1) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (ctx) => Screenworkoutsettings()));
                    } else {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (ctx) => Screensettings()));
                    }
                  },
                );
              },
              itemCount: viewinfo.length,
            ),
          ),
        ]));
  }
}
