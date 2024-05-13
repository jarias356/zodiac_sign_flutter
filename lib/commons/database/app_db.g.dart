// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_db.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

abstract class $AppDBBuilderContract {
  /// Adds migrations to the builder.
  $AppDBBuilderContract addMigrations(List<Migration> migrations);

  /// Adds a database [Callback] to the builder.
  $AppDBBuilderContract addCallback(Callback callback);

  /// Creates the database and initializes it.
  Future<AppDB> build();
}

// ignore: avoid_classes_with_only_static_members
class $FloorAppDB {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static $AppDBBuilderContract databaseBuilder(String name) =>
      _$AppDBBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static $AppDBBuilderContract inMemoryDatabaseBuilder() =>
      _$AppDBBuilder(null);
}

class _$AppDBBuilder implements $AppDBBuilderContract {
  _$AppDBBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  @override
  $AppDBBuilderContract addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  @override
  $AppDBBuilderContract addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  @override
  Future<AppDB> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDB();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDB extends AppDB {
  _$AppDB([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  CatchAndErrorDao? _catchAndErrorDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `catch_and_errors` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `codeError` INTEGER NOT NULL, `moduleError` TEXT NOT NULL, `dateError` TEXT NOT NULL, `errorDescription` TEXT NOT NULL)');
        await database.execute(
            'CREATE UNIQUE INDEX `index_catch_and_errors_codeError_moduleError_errorDescription` ON `catch_and_errors` (`codeError`, `moduleError`, `errorDescription`)');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  CatchAndErrorDao get catchAndErrorDao {
    return _catchAndErrorDaoInstance ??=
        _$CatchAndErrorDao(database, changeListener);
  }
}

class _$CatchAndErrorDao extends CatchAndErrorDao {
  _$CatchAndErrorDao(
    this.database,
    this.changeListener,
  ) : _catchAndErrorsInsertionAdapter = InsertionAdapter(
            database,
            'catch_and_errors',
            (CatchAndErrors item) => <String, Object?>{
                  'id': item.id,
                  'codeError': item.codeError,
                  'moduleError': item.moduleError,
                  'dateError': item.dateError,
                  'errorDescription': item.errorDescription
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final InsertionAdapter<CatchAndErrors> _catchAndErrorsInsertionAdapter;

  @override
  Future<void> insertCatchAndError(CatchAndErrors catchAndErrors) async {
    await _catchAndErrorsInsertionAdapter.insert(
        catchAndErrors, OnConflictStrategy.abort);
  }
}
