// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserinfoAdapter extends TypeAdapter<Userinfo> {
  @override
  final int typeId = 2;

  @override
  Userinfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Userinfo(
      name: fields[0] as String?,
      weight: fields[1] as String?,
      height: fields[2] as String?,
      age: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Userinfo obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.weight)
      ..writeByte(2)
      ..write(obj.height)
      ..writeByte(3)
      ..write(obj.age);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserinfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
