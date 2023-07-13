import 'package:hive_flutter/adapters.dart';

part 'data_model.g.dart';

@HiveType(typeId: 1)
class Plan {
  @HiveField(0)
  String? week;

  @HiveField(1)
  String? level;

  Plan({required this.week, required this.level});
}
