
import 'package:hive/hive.dart';

part 'student.g.dart';

@HiveType(typeId: 0)

class student extends HiveObject{

  @HiveField(0)

  String? name;

  student({required this.name});
}