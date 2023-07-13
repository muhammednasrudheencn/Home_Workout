import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import '../model/user_data.dart';

ValueNotifier<List<Userinfo>> infolist = ValueNotifier([]);

Future<void> adddetails(Userinfo userdetail) async {
  final userdb = await Hive.openBox<Userinfo>('infodb');
  infolist.value.add(userdetail);
  await userdb.add(userdetail);
  infolist.notifyListeners();
}

Future<void> getdetail() async {
  final userdb = await Hive.openBox<Userinfo>('infodb');
  infolist.value.clear();
  infolist.value.addAll(userdb.values);
  infolist.notifyListeners();
}

Future<void> editinfo(int index, Userinfo userdetail) async {
  final userdb = await Hive.openBox<Userinfo>('infodb');
  await userdb.putAt(index, userdetail);
  getdetail();
  infolist.notifyListeners();
}

Future<void> deleteuser(int index) async {
  final userdb = await Hive.openBox<Userinfo>('infodb');
  await userdb.deleteAt(index);
  getdetail();
}
