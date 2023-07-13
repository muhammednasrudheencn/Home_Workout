import 'package:flutter/material.dart';

import '../functions/history_functions.dart';
import 'account.dart';
import 'daily_page.dart';
import 'home.dart';

class Levelscreen extends StatefulWidget {
  const Levelscreen({super.key});

  @override
  State<Levelscreen> createState() => _LevelscreenState();
}

class _LevelscreenState extends State<Levelscreen> {
  int selection = 0;

  final pages = [const Home(), const DailyScreen(), const ProfileScreen()];
  @override
  void initState() {
    gettick();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selection],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selection,
          onTap: (value) {
            setState(() {
              selection = value;
            });
          },
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.date_range_outlined,
              ),
              label: 'Daily',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_rounded,
              ),
              label: 'Me',
            ),
          ]),
    );
  }
}
