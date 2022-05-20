import 'package:floor/floor.dart';

@entity
class Subject {
  @PrimaryKey(autoGenerate: true)
  int? subId;

  String subName;

  Subject(this.subName);
}
