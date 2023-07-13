import 'package:hive_flutter/adapters.dart';
part 'user_data.g.dart';

@HiveType(typeId: 2)
class Userinfo {
  @HiveField(0)
  String? name;

  @HiveField(1)
  String? weight;

  @HiveField(2)
  String? height;

  @HiveField(3)
  String? age;

  Userinfo(
      {required this.name,
      required this.weight,
      required this.height,
      required this.age});
}
