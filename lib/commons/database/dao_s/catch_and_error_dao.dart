import 'package:floor/floor.dart';

import '../entities/catch_and_errors.dart';

@dao
abstract class CatchAndErrorDao {
  @insert
  Future<void> insertCatchAndError(CatchAndErrors catchAndErrors);
}