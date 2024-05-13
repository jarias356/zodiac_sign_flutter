import 'package:floor/floor.dart';

@Entity(
    tableName: 'catch_and_errors',
    indices: [
      Index(
          value: ['codeError', 'moduleError', 'errorDescription'], unique: true
      )]
)
class CatchAndErrors {
  @PrimaryKey(autoGenerate: true)
  final int? id;

  final int codeError;
  final String moduleError;
  final String dateError;
  final String errorDescription;

  CatchAndErrors({
    this.id,
    required this.codeError,
    required this.moduleError,
    required this.dateError,
    required this.errorDescription
  });

}