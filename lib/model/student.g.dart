// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class studentAdapter extends TypeAdapter<student> {
  @override
  final int typeId = 0;

  @override
  student read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return student(
      name: fields[0] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, student obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is studentAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
