import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/adapters.dart';

import '../model/data_model.dart';

class Planfunctions {
  static ValueNotifier<List<Plan>> planlist = ValueNotifier([]);

  Future<void> addplan(Plan plans) async {
    final plandb = await Hive.openBox<Plan>('planweek');
    planlist.value.add(plans);
    await plandb.add(plans);
    planlist.notifyListeners();
  }

  Future<void> getplan() async {
    final plandb = await Hive.openBox<Plan>('planweek');
    planlist.value.clear();
    planlist.value.addAll(plandb.values);
    planlist.notifyListeners();
  }

  Future<void> deletePlan(int index) async {
    final plandb = await Hive.openBox<Plan>('planweek');
    await plandb.deleteAt(index);
    getplan();
  }

  Future<void> editplan(int index, Plan week) async {
    final plandb = await Hive.openBox<Plan>('planweek');
    await plandb.putAt(index, week);
    getplan();
    planlist.notifyListeners();
  }
}
