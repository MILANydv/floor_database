import 'package:floor/floor.dart';
import 'package:floor_database/entities/student.dart';

@dao
abstract class StudentDAO {

  // register student
  @insert
  Future<void> insertStudent(Student student);

  // get all students
  @Query('SELECT * FROM student')
  Future<List<Student>> getAllStudents();

  // get student by id
  @Query(
      'SELECT * FROM student WHERE username = :username and password = :password')
  Future<Student?>login(String username, String password);
}
