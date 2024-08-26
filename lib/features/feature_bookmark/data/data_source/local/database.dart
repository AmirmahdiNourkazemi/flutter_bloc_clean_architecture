// database.dart

// required package imports
import 'dart:async';
import 'package:floor/floor.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_bookmark/data/data_source/local/country_dao.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_bookmark/domain/entities/country_entity.dart';
import 'package:sqflite/sqflite.dart' as sqflite;


part 'database.g.dart'; // the generated code will be there

@Database(version: 1, entities: [Country])
abstract class AppDatabase extends FloorDatabase {
  CountryDao get countryDao;
}