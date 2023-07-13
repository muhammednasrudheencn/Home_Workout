import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:workout_app/screens/screen_level.dart';

import '../constants/const_color.dart';
import '../main.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    logincheck();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: Center(
          child: Container(
            color: const Color.fromARGB(255, 0, 0, 0),
            child: Image.asset(
              'assets/Screenshot (117).png',
            ),
          ),
        ),
      ),
    );
  }

  Future<void> gotohome() async {
    await Future.delayed(const Duration(seconds: 3));

    // ignore: use_build_context_synchronously
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (ctx) => const Homescreen()));
  }

  Future<void> logincheck() async {
    final sharedprefs = await SharedPreferences.getInstance();
    final usercheck = sharedprefs.getBool(loginkey);

    if (usercheck == false || usercheck == null) {
      gotohome();
    } else {
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (ctx) => const Levelscreen()));
    }
  }
}
