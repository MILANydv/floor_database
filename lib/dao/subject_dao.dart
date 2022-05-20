import 'package:floor/floor.dart';
import 'package:floor_database/entities/subject.dart';

@dao
abstract class SubjectDAO {
  @insert
  Future<void> insertData(Subject subject);

  @Query('SELECT * FROM subject')
  Future<List<Subject>> getAllSubjects();

  @Query('SELECT * FROM subject WHERE subId = :subId')
  Future<Subject?> findSubjectById(int subId);
}
