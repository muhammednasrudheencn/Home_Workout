import 'package:hive_flutter/adapters.dart';

part 'history_model.g.dart';

@HiveType(typeId: 4)
class History {
  @HiveField(0)
  String? levelname;

  @HiveField(1)
  String? areaname;

  @HiveField(2)
  String? workoutname;

  @HiveField(3)
  bool isfinish = false;

  History(
      {required this.levelname,
      required this.areaname,
      required this.workoutname,
      required this.isfinish});
}
