import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:workout_app/screens/splash_screen.dart';

import 'constants/const_color.dart';
import 'model/data_model.dart';
import 'model/history_model.dart';
import 'model/user_data.dart';

const loginkey = 'logincheck';
Future<void> main() async {
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(PlanAdapter().typeId)) {
    Hive.registerAdapter(PlanAdapter());
  }
  if (!Hive.isAdapterRegistered(UserinfoAdapter().typeId)) {
    Hive.registerAdapter(UserinfoAdapter());
  }

  if (!Hive.isAdapterRegistered(HistoryAdapter().typeId)) {
    Hive.registerAdapter(HistoryAdapter());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: background),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
