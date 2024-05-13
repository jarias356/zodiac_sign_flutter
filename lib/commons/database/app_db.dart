import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:zodiac_sign_flutter/utils/constants.dart';
import 'database.dart';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'app_db.g.dart';

@Database(
    version: dbVersion,
    entities: [CatchAndErrors]
)
abstract class AppDB extends FloorDatabase {
  CatchAndErrorDao get catchAndErrorDao;

  static late final  AppDB instance;

  static void getInstance() async {
    instance = await $FloorAppDB.databaseBuilder(dbName).build();


  }

}

