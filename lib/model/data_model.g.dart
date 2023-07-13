// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PlanAdapter extends TypeAdapter<Plan> {
  @override
  final int typeId = 1;

  @override
  Plan read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Plan(
      week: fields[0] as String?,
      level: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Plan obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.week)
      ..writeByte(1)
      ..write(obj.level);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlanAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
