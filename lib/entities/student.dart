import 'package:floor/floor.dart';

@entity
class Student {
  @PrimaryKey(autoGenerate: true)
  int? id;

  String? fname;
  String? lname;
  String username;
  String password;

  Student(
    this.fname,
    this.lname,
    this.username,
    this.password,
  );
}
