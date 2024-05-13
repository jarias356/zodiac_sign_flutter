import 'app_db.dart';
import 'dao_s/catch_and_error_dao.dart';

class DbAndDao {
  static get db => AppDB.instance;

  CatchAndErrorDao get catchAndErrorDao => db.catchAndErrorDao;
}